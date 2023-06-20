#!/usr/bin/env python3

import argparse
import json
import matplotlib.lines as mlines
import pandas as pd
from pathlib import Path
import matplotlib.pyplot as plt
from matplotlib.ticker import ScalarFormatter
import numpy as np
import sys
from pathlib import Path

tex_fonts = {
# Use LaTeX to write all text
"text.usetex": True,
"font.family": "serif",
# Use 10pt font in plots, to match 10pt font in document
"axes.labelsize": 10,
"font.size": 10,
# Make the legend/label fonts a little smaller
"legend.fontsize": 10,
"xtick.labelsize": 10,
"ytick.labelsize": 10
}


def set_size(width, fraction=1):
    """Set figure dimensions to avoid scaling in LaTeX.
    Parameters
    ----------
    width: float
    Document textwidth or columnwidth in pts
    fraction: float, optional
    Fraction of the width which you wish the figure to occupy
    Returns
    -------
    fig_dim: tuple
    Dimensions of figure in inches
    """
    # Width of figure (in pts)
    fig_width_pt = width * fraction
    # Convert from pt to inches
    inches_per_pt = 1 / 72.27
    # Golden ratio to set aesthetic figure height
    # https://disq.us/p/2940ij3
    golden_ratio = (5**.5 - 1) / 2
    # Figure width in inches
    fig_width_in = fig_width_pt * inches_per_pt
    # Figure height in inches
    fig_height_in = fig_width_in * golden_ratio
    fig_dim = (fig_width_in, fig_height_in)
    return fig_dim

def get_width_height(width, fraction=1):
    """Set figure dimensions to avoid scaling in LaTeX.
    Parameters
    ----------
    width: float
    Document textwidth or columnwidth in pts
    fraction: float, optional
    Fraction of the width which you wish the figure to occupy
    Returns
    -------
    fig_dim: tuple
    Dimensions of figure in inches
    """
    # Width of figure (in pts)
    fig_width_pt = width * fraction
    # Convert from pt to inches
    inches_per_pt = 1 / 72.27
    # Golden ratio to set aesthetic figure height
    # https://disq.us/p/2940ij3
    golden_ratio = (5**.5 - 1) / 2
    # Figure width in inches
    fig_width_in = fig_width_pt * inches_per_pt
    # Figure height in inches
    fig_height_in = fig_width_in * golden_ratio
    fig_dim = (fig_width_in, fig_height_in)
    return fig_dim

plt.rcParams.update(tex_fonts)

def main():
    Path("./plots/").mkdir(parents=True, exist_ok=True)
    parser = argparse.ArgumentParser(description='Plot')
    parser.add_argument('-b', '--benchmark', required=True)
    args = parser.parse_args()
    all_sus = []
    for machine in ['tioga', 'lassen']:
        benchmark=args.benchmark
        data_dict = {'Kernel': [], 'NumThreads': [], 'NumTeams': [], 'MaxThreads': [], 'MinTeams': [], 'TimeNs' : [], 'Search': []}
        results_dir = Path(f'../datasets/results/{args.benchmark}/{machine}')
        print('results_dir', results_dir)

        # Iterate over all json files with results.
        for json_path in (results_dir.glob('*.json')):
            print(json_path)
            # Get kernel name from the json filename.
            kernel = str(json_path.name).split('.')[0].replace('analysis', '')
            with open(json_path, 'r') as f:
                json_data = json.load(f)

                config_list = []
                for stat, experiment in json_data['Stats'].items():
                    data_dict['Kernel'].append(kernel)
                    data_dict['Search'].append(json_data['MetaData']['args']['Policy'])
                    configs = stat.split('-')
                    for config in configs:
                        config_list += config.split('=')
                    it = iter(config_list)
                    # Convert to dict idiom.
                    config_dict = dict(zip(it, it))
                    def set_config(key):
                        if key not in config_dict:
                            data_dict[key].append(pd.NA)
                            return
                        if config_dict[key] == 'None':
                            data_dict[key].append(pd.NA)
                            return

                        data_dict[key].append(int(config_dict[key]))

                    set_config('NumThreads')
                    set_config('NumTeams')
                    set_config('MaxThreads')
                    set_config('MinTeams')

                    xtime_list = []
                    for item in experiment['dynamic']:
                        if machine == 'lassen':
                            TIME_IDX = 6
                        elif machine == 'tioga':
                            TIME_IDX = 9
                        else:
                            assert False, f'Unknown machine '
                        xtime_list.append(item[TIME_IDX])
                    data_dict['TimeNs'].append(xtime_list)

        df = pd.DataFrame(data_dict)
        print(df.columns)

        width = .5
        colors = {
            'NumThreads+NumTeams' : 'tab:blue',
            'MaxThreads' : 'tab:orange',
            'MaxThreads+MinTeams' : 'tab:green',
            'NumThreads+NumTeams+MaxThreads+MinTeams' : 'tab:red'
            }
        markers = {
            'NumThreads+NumTeams' : 'o',
            'MaxThreads' : 'x',
            'MaxThreads+MinTeams' : '^',
            'NumThreads+NumTeams+MaxThreads+MinTeams' : 's'
            }
        kernels = df['Kernel'].unique()
        add_legend = True
        x = 0
        for idx, kernel in enumerate(kernels):

            baseline = df.loc[(df['Kernel'] == kernel) & (df['NumThreads'].isna())
                & (df['NumTeams'].isna()) & (df['MaxThreads'].isna()) & (df['MinTeams'].isna())]

            baseline_mean_time = np.mean(baseline['TimeNs'].sum())
            print('baseline_mean_time', baseline_mean_time)
            df.loc[df['Kernel'] == kernel, 'Speedup'] = baseline_mean_time / df.loc[df['Kernel']
                                                               == kernel, 'TimeNs'].apply(np.mean)


            ddf = df.loc[df['Kernel']== kernel]
            y = {}
            print('kernel', kernel)
            # NumThreads NumTeams
            df_NumThreads_NumTeams = ddf.loc[
                (ddf['NumThreads'].notna()) & (ddf['NumTeams'].notna())
                & (ddf['MaxThreads'].isna()) & (ddf['MinTeams'].isna())
                ]
            fastest = fastest_NumThreads_NumTeams = df_NumThreads_NumTeams.loc[df_NumThreads_NumTeams['Speedup'].idxmax()]
            y['NumThreads+NumTeams'] = fastest['Speedup'] if  (fastest['Speedup'] > 1.0) else  1.0
            #print('fastest NumTeams NumThreads', fastest)
            # MaxThreads
            df_MaxThreads = ddf.loc[
                (ddf['NumThreads'].notna()) & (ddf['NumTeams'].isna())
                & (ddf['MaxThreads'].notna()) & (ddf['MinTeams'].isna())
                ]
            fastest = fastest_MaxThreads = df_MaxThreads.loc[df_MaxThreads['Speedup'].idxmax()]
            y['MaxThreads'] = fastest['Speedup'] if  (fastest['Speedup'] > 1.0) else  1.0
            #print('fastest MaxThreads', fastest)
            # MaxThreads MinTeams
            df_MaxThreads_MinTeams = ddf.loc[
                (ddf['NumThreads'].notna()) & (ddf['NumTeams'].isna())
                & (ddf['MaxThreads'].notna()) & (ddf['MinTeams'].notna())
                ]
            fastest = fastest_MAxThreads_MinTeams = df_MaxThreads_MinTeams.loc[df_MaxThreads_MinTeams['Speedup'].idxmax()]
            y['MaxThreads+MinTeams'] = fastest['Speedup'] if  (fastest['Speedup'] > 1.0) else  1.0
            #print('fastest MaxThreads MinTeams', fastest)
            # All
            df_all = ddf.loc[
                (ddf['NumThreads'].notna()) & (ddf['NumTeams'].notna())
                & (ddf['MaxThreads'].notna()) & (ddf['MinTeams'].notna())
                ]
            fastest = fastest_all = df_all.loc[df_all['Speedup'].idxmax()]
            y['NumThreads+NumTeams+MaxThreads+MinTeams'] = fastest['Speedup'] if  (fastest['Speedup'] > 1.0) else  1.0
            #print('fastest all', fastest)

            #if all(value<1.1 for value in y.values()):
            #    print('Skip kernel', kernel, 'y', y)
            #    continue
            name=kernel.split('_')[-1]
            for k,v in y.items():
                all_sus.append((machine, name, k, v))
    df = pd.DataFrame(all_sus, columns=['System', 'Kid', 'Scenario', 'Speedup'])
    rename = {'MaxThreads' : 'EM',
            'MaxThreads+MinTeams' : 'EMM',
            'NumThreads+NumTeams': 'BONN',
            'NumThreads+NumTeams+MaxThreads+MinTeams' : 'BOMN'}

    df=df.replace({"Scenario": rename})
    df=df.replace({"System" : { 'tioga' : 'AMD', 'lassen' : 'NVIDIA' }} )

    colors=['#1f77b4', '#aec7e8', '#ff7f0e', '#ffbb78', '#2ca02c', '#98df8a',
            '#d62728', '#ff9896', '#9467bd', '#c5b0d5', '#8c564b', '#c49c94',
            '#e377c2', '#f7b6d2', '#7f7f7f', '#c7c7c7', '#bcbd22', '#dbdb8d',
            '#17becf', '#9edae5']

    df = df.pivot_table(index=['System','Kid'], columns=['Scenario'], values=['Speedup']).reset_index()
    new_cols=[('{0}'.format(tup[1] if 'Speedup' in tup else tup[0])) for tup in df.columns]
    fig, ax = plt.subplots(figsize=(3,3))
    df.columns = new_cols
    markers=['X', 'P', 'D', 's']



#    ax.text(x=1.5, y=1.5, s="NVPTX highly tunable kernels")

    handles = []
    for sc, m in zip(['EM', 'EMM', 'BONN', 'BOMN'], markers):
        amd_res = df[ df.System == 'AMD']
        nvptx_res = df[ df.System == 'NVIDIA']
        color= colors[:len(amd_res[sc])]
        color = plt.cm.jet(np.linspace(0, 1, len(amd_res[sc])))
        #ax.scatter(nvptx_res[sc], amd_res[sc], s=80, alpha=.8,
        #           edgecolor=color, facecolors='none', marker=m)
        ax.scatter(nvptx_res[sc], amd_res[sc], s=80, alpha=.65,
                   edgecolor=color, facecolors=color, lw=0, marker=m)
        h = mlines.Line2D([], [], color='black',
                          marker=m, markeredgecolor='black', markerfacecolor='none', label=sc, linewidth=0)
        handles.append(h)
        print(amd_res[sc])
        print(nvptx_res[sc])

    y_max = ax.get_ylim()
    y_max = y_max[1]
    x_max = ax.get_xlim()
    x_max = x_max[1]
    print(y_max, x_max)

    #ax.text(0.56 * x_max, 0.83 *y_max, 'AMD highly tunable kernels', style='italic', fontsize=8, rotation=45,
    #         horizontalalignment='left', verticalalignment='bottom',
    #    bbox={'facecolor': 'grey', 'alpha': 0.2, 'pad': 4})

    #ax.text(0.6 * x_max, 0.77*y_max, 'NVIDIA highly tunable kernels', style='italic', fontsize=8, rotation=45,
    #         horizontalalignment='left', verticalalignment='bottom',
    #    bbox={'facecolor': 'grey', 'alpha': 0.2, 'pad': 4})


    if benchmark.lower() == 'minife':
        plt.legend(handles=handles, ncol=2, columnspacing=0, handletextpad=0, frameon=False, fancybox=False, shadow=False)

    ax.set_xlabel('NVIDIA Speedup')
    if benchmark.lower() == 'lulesh':
        ax.set_ylabel('AMD Speedup')
    ax.spines['top'].set_visible(False)
    ax.spines['right'].set_visible(False)

    ax.plot([0, 1], [0, 1], transform=ax.transAxes, ls="--", c=".3")
    plt.tight_layout()
    plt.savefig(f'plots/{benchmark}-speedup-scatter.pdf', bbox_inches='tight')

if __name__ == "__main__":
    main()
