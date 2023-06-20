#!/usr/bin/env python3

import argparse
import json
import pandas as pd
from pathlib import Path
import matplotlib.pyplot as plt
from matplotlib.ticker import ScalarFormatter
import numpy as np
import sys

tex_fonts = {
# Use LaTeX to write all text
"text.usetex": True,
"font.family": "serif",
# Use 10pt font in plots, to match 10pt font in document
"axes.labelsize": 18,
"font.size": 18,
# Make the legend/label fonts a little smaller
"legend.fontsize": 16,
"xtick.labelsize": 18,
"ytick.labelsize": 18
}

def main():
    Path("./plots/").mkdir(parents=True, exist_ok=True)
    for machine in ['tioga', 'lassen']:
        df = pd.read_json('../datasets/whole_app.json')

        benchmarks = df.Benchmark.unique()
        #fig, axs = plt.subplots(ncols=len(benchmarks), figsize=(10,5), layout='constrained')
        plt.rcParams.update(tex_fonts)
        fig, axs = plt.subplots(ncols=len(benchmarks), figsize=(10,2.5))

        labels = {
            'lulesh' : '\\textbf{LULESH}',
            'miniFE' : '\\textbf{miniFE}',
            'openmc' : '\\textbf{OpenMC}'
        }
        for i, benchmark in enumerate(['lulesh', 'miniFE', 'openmc']):
            ddf = df[(df.Benchmark == benchmark) & (df.System == machine)][['Time', 'Operation', 'version']].groupby(['version', 'Operation']).sum().reset_index()
            ddfP = ddf.pivot(index=['version'], columns='Operation', values='Time').loc[['original', 'optimized']]
            total_speedup = ddfP.loc['original'].sum() / ddfP.loc['optimized'].sum()
            device_compute_speedup = ddfP.loc['original']['device-compute'] / \
                ddfP.loc['optimized']['device-compute']

            ax = ddfP.plot(kind='bar', stacked=True, ax=axs[i], legend=False)
            axs[i].spines[['top', 'right']].set_visible(False)
            axs[i].set_xticklabels(axs[i].get_xticklabels(), rotation=0)
            axs[i].set_xlabel(labels[benchmark])
            ax.text(1-0.45, ddfP.loc['optimized'].sum(), '%.2f' %
                    (total_speedup), ha='center')
            device_compute_height = ddfP.loc['optimized'].sum() - ddfP.loc['optimized']['host-compute']
            ax.text(1-0.45, device_compute_height, '%.2f' %
                    (device_compute_speedup), ha='center', color='green')

        axs[0].set_ylabel('Time (s)')
        if machine == 'lassen':
            handles, labels = axs[0].get_legend_handles_labels()
            fig.legend(handles, labels, loc='upper left', bbox_to_anchor=(0.0, 1.1),
                ncol=4, frameon=False)
        plt.tight_layout()
        #plt.show()
        plt.savefig(f'plots/{machine}-time-breakdown.pdf', bbox_inches='tight')

if __name__ == "__main__":
    main()
