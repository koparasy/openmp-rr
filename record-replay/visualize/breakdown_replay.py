#!/usr/bin/env python3

import sys
import json
from pathlib import Path
import pandas as pd
import matplotlib.pyplot as plt
#import seaborn as sns
import argparse
import matplotlib as mpl
from matplotlib.ticker import FormatStrFormatter


tex_fonts = {
# Use LaTeX to write all text
"text.usetex": True,
"font.family": "serif",
# Use 10pt font in plots, to match 10pt font in document
"axes.labelsize": 10,
"font.size": 10,
# Make the legend/label fonts a little smaller
"legend.fontsize": 8,
"xtick.labelsize": 10,
"ytick.labelsize": 10
}
plt.rcParams.update(tex_fonts)

def computeDurationRR(totalSteps, AppBTime, RRTime,  replayTime, JITTime):
    return AppBTime + RRTime  + totalSteps * (( replayTime  + JITTime))

def computeDurationWAC(totalSteps, wholeAppTime, CompileTime):
    print(totalSteps, wholeAppTime, CompileTime)
    return totalSteps * (( CompileTime + wholeAppTime ))

def computeDurationWAR(totalSteps, wholeAppTime, CompileTime):
    return CompileTime + totalSteps * (( wholeAppTime ))

def main():
    Path("./plots/").mkdir(parents=True, exist_ok=True)
    parser = argparse.ArgumentParser(description='Plot')
    args = parser.parse_args()
    dfs=list()
    for machine in ['lassen', 'tioga']:
        fn = f'../datasets/replay_breakdown_{machine}.json'
        with open(fn, 'r') as fd:
            data = json.load(fd)
        for l in data:
            l.pop('args')
        df = pd.DataFrame(data)
        df = df[[ 'dur', 'name', 'system', 'benchmark', 'kernel']]
        df['dur'] = df['dur'] / 1000_000
        dfs.append(df)
    df = pd.concat(dfs)

    roi = ['Total Replay',  'Total ReadDataFile',
     'Total LoadBinary', 'Total BumpAllocator::Allocate',
     'Total BumpAllocator::DeAllocate',
     'Total DataSubmit', 'Total SetMemState']

    names = {  'Total ReadDataFile' : 'Read Memory',
              'Total LoadBinary' : 'JIT IR',
              'Total BumpAllocator::Allocate' : 'Allocate',
              'Total BumpAllocator::DeAllocate' :'De-allocate',
              'Total DataSubmit' : 'Memcpy HtoD',
              'Total SetMemState' : 'Load image',
               'adsgal' : 'Kernel Time'
             }

    df = df[df['name'].isin(roi)]
    durations = df['name'].unique().tolist()
    durations.remove('Total Replay')

    df = df.groupby(['name', 'system', 'benchmark', 'kernel']).mean().reset_index()
    df = df.pivot(index=['system', 'benchmark', 'kernel'], values=['dur'], columns=['name'])
    df = df.reset_index()
    new_cols=[('{0}'.format(tup[1] if 'dur' in tup else tup[0])) for tup in df.columns]
    df.columns= new_cols
    dfs = []
    for b, tmp in df.groupby(['benchmark', 'system']):
        minD = tmp[(tmp['Total Replay'] == tmp['Total Replay'].min())]
        minD['Type'] = 'fastest'
        dfs.append(minD)
        maxD = tmp[(tmp['Total Replay'] == tmp['Total Replay'].max())]
        maxD['Type'] = 'slowest'
        dfs.append(maxD)
    df = pd.concat(dfs).reset_index(drop=True)
    acc = ['Total ReadDataFile',
     'Total LoadBinary', 'Total BumpAllocator::Allocate',
     'Total BumpAllocator::DeAllocate',
     'Total DataSubmit', 'Total SetMemState']
    df['Kernel Time'] = df['Total Replay']
    for a in acc:
        df['Kernel Time'] = df['Kernel Time'] - df[a]
    df = df.drop(['Total Replay'], axis=1)
    df = df.rename(columns=names)
    print(df)

    numBench = len(df['benchmark'].unique())

    mpl.rcParams['axes.spines.right'] = False
    mpl.rcParams['axes.spines.top'] = False
    system_rename = { 'lassen' : 'NVIDIA',
                      'tioga' : 'AMD' }
    df=df.replace({"system": system_rename})
    #fig, axs = plt.subplots(nrows=numBench, ncols=len(df['system'].unique()), figsize=(9,12), sharex='col', sharey='row')

    #fig = plt.figure(figsize=(8,5))
    #subfigs = fig.subfigures(nrows=3, ncols=1)

    for idy, bench in enumerate(['lulesh', 'miniFE', 'openmc']):
        if bench == 'openmc':
            fig, axs = plt.subplots(nrows=1, ncols=2, figsize=(3.5,1.3), sharey=True)
        else:
            fig, axs = plt.subplots(nrows=1, ncols=2, figsize=(3.5,1.2), sharey=True)
        for ax, system in zip(axs, ['NVIDIA','AMD']):
            ax.xaxis.set_ticks_position('none')
            legend=False
            if bench == 'lulesh' and system == 'NVIDIA':
                legend=True
            print(bench)
            if system =='AMD':
                ax.spines['left'].set_visible(False)
                ax.yaxis.set_ticks_position('none')
            ax.set_prop_cycle(color=[
            '#1f77b4', '#aec7e8', '#ff7f0e', '#ffbb78', '#2ca02c', '#98df8a',
            '#d62728', '#ff9896', '#9467bd', '#c5b0d5', '#8c564b', '#c49c94',
            '#e377c2', '#f7b6d2', '#7f7f7f', '#c7c7c7', '#bcbd22', '#dbdb8d',
            '#17becf', '#9edae5'])

            tmp = df[(df['benchmark'] == bench) & (df['system'] == system)]
            print(tmp)
            tmp.plot( x='Type',
              ax=ax,
              y=names.values(),
              kind='bar',alpha=0.75, rot=0,
              stacked=True,
              width=0.3, legend=False)
            ax.xaxis.set_label_text("")
            if bench != 'openmc':
                ax.set_xticks([])
                ax.yaxis.set_major_formatter(FormatStrFormatter('%.1f'))
            if legend:
                fig.legend(ncols=2, loc='upper left', handlelength=1, labelspacing=.2,
                          fancybox=False, frameon=False, columnspacing=1, bbox_to_anchor=(0.2, 0.99))
            if idy == 2:
                ax.xaxis.set_label_text(system)
        #fig.suptitle(f'{bench}')
        axs[0].yaxis.set_label_text('Time (s)')
        plt.tight_layout()
        plt.savefig(f'plots/{bench}-replay_breakdown_plots.pdf', bbox_inches='tight')
        #plt.show()
        plt.close()
        #input('k')

if __name__ == "__main__":
    main()
