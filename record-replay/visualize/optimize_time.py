#!/usr/bin/env python3

import sys
import json
import pandas as pd
from pathlib import Path

import seaborn as sns
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.ticker import ScalarFormatter
import argparse

tex_fonts = {
# Use LaTeX to write all text
"text.usetex": True,
"font.family": "serif",
# Use 10pt font in plots, to match 10pt font in document
"axes.labelsize": 16,
"font.size": 16,
# Make the legend/label fonts a little smaller
"legend.fontsize": 16,
"xtick.labelsize": 16,
"ytick.labelsize": 16
}

def computeDurationRR(totalSteps, AppBTime, RRTime,  replayTime, jtime=0):
    rrTime = 4 * replayTime + (replayTime + jtime)
    return AppBTime + RRTime  + totalSteps * rrTime

def computeDurationWAC(totalSteps, wholeAppTime, CompileTime):
    print(totalSteps, wholeAppTime, CompileTime)
    return totalSteps * ( CompileTime + wholeAppTime *5 )

def computeDurationWAR(totalSteps, wholeAppTime, CompileTime):
    return CompileTime + totalSteps * ( wholeAppTime * 5)

def main():
    Path("./plots/").mkdir(parents=True, exist_ok=True)
    dfs = []
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

    build_times_dict = {
        'lulesh' : {
            'lassen' : 7,
            'tioga' : 6
        },
        'miniFE' : {
            'lassen' : 8,
            'tioga' : 6.7
        },
        'openmc' : {
            'lassen' : 180,
            'tioga' : 158
        }
    }

    record_times_dict = {
        'lulesh' : {
            'lassen' : 272,
            'tioga' : 233.72
        },
        'miniFE' : {
            'lassen' : 91,
            'tioga' : 63.28
        },
        'openmc' : {
            'lassen' : 525,
            'tioga' : 260
        }
    }

    wapp = pd.read_json('../datasets/whole_app.json')
    wapp= wapp.groupby(['Benchmark', 'System', 'version'])['Time'].sum().reset_index()
    print(wapp)

    def getWATime(benchmark, system, version):
        return (wapp[(wapp['Benchmark'] == benchmark) &
                      (wapp['System'] == system ) &
                      (wapp['version'] == version )]['Time']).values[0]

    print(df)
    results = []

    for index, row in df.iterrows():
        bench = row['benchmark']
        system = row['system']
        config = row['Type']
        BOMN = computeDurationRR(230, build_times_dict[bench][system],
                                 record_times_dict[bench][system],
                                 row['Total Replay'] - row['Total LoadBinary'],
                                 row['Total LoadBinary'])
        if config == 'fastest':
            tt = getWATime(bench, system, 'optimized')
            wac = ''
            WABOMN = computeDurationWAC(230, tt, build_times_dict[bench][system])
            WABONN = computeDurationWAR(230, tt, build_times_dict[bench][system])
            results.append(['Oracle' + wac , bench, system, 'BOMN', WABOMN] )
            results.append(['Oracle' + wac , bench, system, 'BONN', WABONN] )


        results.append(['RR ' + config , bench, system,  'BOMN', BOMN] )

        BONN = computeDurationRR(230, build_times_dict[bench][system],
                                 record_times_dict[bench][system],
                                 row['Total Replay']  - row['Total LoadBinary'])
        results.append(['RR ' + config, bench, system, 'BONN', BONN])

    res = pd.DataFrame(results, columns=['Approach', 'Benchmark', 'system', 'scenario', 'Time (s)'])
    system_rename = { 'lassen' : 'NVIDIA',
                      'tioga' : 'AMD' }
    res=res.replace({"system": system_rename})

    plt.rcParams.update(tex_fonts)
    width=.3
    for benchmark in res['Benchmark'].unique():
        for scenario in res['scenario'].unique():
            print('scenario', scenario)
            fig, ax = plt.subplots(figsize=(6,2.5))
            x = np.arange(len(res['system'].unique()))
            baselines = []
            add_legend =6
            for a in ['Oracle', 'RR slowest', 'RR fastest']:
                # for m in res['system'].unique():
                group = res[(res.scenario == scenario) & (
                    res.Benchmark == benchmark) & (res.Approach == a)]
                #print(group.to_string())
                y = group['Time (s)']
                print('x', x)
                print('y', y)
                if benchmark=='lulesh' and add_legend:
                    add_legend -=1
                    rects = ax.bar(x, y, width=width, label=a)
                    ax.legend(ncol=1, bbox_to_anchor=(0.63, 0.5), handlelength=1, frameon=False)
                else:
                    rects = ax.bar(x, y, width=width)
                if benchmark == 'lulesh':
                    ax.set_ylabel('Time (s)')

                if a == 'Oracle':
                    baselines = rects
                    for r in rects:
                        ax.text(r.get_x()+width/2, r.get_height()+15, '%d' %
                                r.get_height(), ha='center')

                else:
                    for idx, r in enumerate(rects):
                        ax.text(r.get_x()+width/2, r.get_height()+15, '%.1f$\\times$' %
                                (baselines[idx].get_height()/r.get_height()), ha='center')
                x = x + width
            add_legend = False
            x = np.arange(len(res['system'].unique())) + width
            ax.spines[['top', 'right']].set_visible(False)
            ax.xaxis.set_ticks_position('none')
            ax.set_yscale('log', base=10)
            ax.set_xticks(x, res['system'].unique())
            ax.yaxis.set_major_formatter(ScalarFormatter())
            ax.set_title(scenario)
            plt.tight_layout()
            plt.savefig(f'plots/{benchmark}-{scenario}-search-time.pdf')
            plt.close()

if __name__ == "__main__":
    main()
