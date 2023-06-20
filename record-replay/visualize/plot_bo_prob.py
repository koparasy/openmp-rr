#!/usr/bin/env python3

import argparse
import json
import pandas as pd
from pathlib import Path
import matplotlib.pyplot as plt
from matplotlib.ticker import ScalarFormatter
import matplotlib.patches as mpatches
import numpy as np
import collections
from matplotlib.lines import Line2D
import sys

tex_fonts = {
# Use LaTeX to write all text
"text.usetex": True,
"font.family": "serif",
# Use 10pt font in plots, to match 10pt font in document
"axes.labelsize": 11,
"font.size": 11,
# Make the legend/label fonts a little smaller
"legend.fontsize": 11,
"xtick.labelsize": 11,
"ytick.labelsize": 11
}
# Extract data from analysis json files to keep the num
# of experiments and search duration per config set.
def get_data_for_valid_experiments(benchmark, machine):
    results_dir = Path(f'../datasets/results/{benchmark}/{machine}')
    json_files = results_dir.glob(f'*.json')

    kernel_data_dict = collections.defaultdict(dict)
    for json_file in json_files:
        kernel = str(json_file.name).split('.')[0].replace('analysis', '')
        with open(json_file, 'r') as f:
            data = json.load(f)

        args = data['MetaData']['args']

        def has_configs(configs):
            try:
                ret = all([args[config] for config in configs])
            except KeyError:
                return False
            return ret

        if has_configs(['NumThreads', 'NumTeams', 'MaxThreads', 'MinTeams']):
            entry = kernel_data_dict[kernel]['NumThreads+NumTeams+MaxThreads+MinTeams'] = {
                'policy' : 'bo',
                'times_ns' : []
            }

        elif has_configs(['MaxThreads', 'MinTeams']):
            continue
        elif has_configs(['NumThreads', 'NumTeams']):
            entry = kernel_data_dict[kernel]['NumThreads+NumTeams'] = {
                'policy' : 'bo',
                'times_ns' : []
            }
        elif has_configs(['MaxThreads']):
            continue
        else:
            raise Exception('Unknown args in metadata configuration')

        assert entry['policy'] == args['Policy']
        # Get data only from 'valid' experiments.
        for stat in data['Stats']:
            valid = data['Stats'][stat]['valid']
            if valid:
                times = []
                for value_list in data['Stats'][stat]['dynamic']:
                    if machine == 'lassen':
                        TIME_IDX = 6
                    elif machine == 'tioga':
                        TIME_IDX = 9
                    else:
                        assert False, f'Unknown machine {args.machine}'
                    times.append(value_list[TIME_IDX])
                entry['times_ns'].append(times)

    return kernel_data_dict

def plot_step_best_iter(ax, config, benchmark, y_kernel_dict, colorval, linestyle):
    y_per_kernel = {}
    for kernel, y in y_kernel_dict.items():
        best_y = np.min(y)
        best_upto_iter = np.array([np.min(y[:iter+1])
                                    for iter in range(len(y))])
        y_per_kernel[kernel] = best_y / best_upto_iter
    num_kernels = len(y_per_kernel)
    max_iter = np.max([len(y) for _, y in y_per_kernel.items()])
    #print('max_iter', max_iter)
    y_prob_iter = []
    for iter in range(0, max_iter):
        count = 0.0
        for _, y in y_per_kernel.items():
            #print('kernel', y)
            #input('k')
            try:
                if y[iter] >= 1.0:
                    count += 1.0
            except IndexError:
                count += 1.0
        y_prob_iter.append(count/num_kernels)
        #print('iter', iter, 'Prob(BestUpToIter == Best)', count/num_kernels)
        #input('k')
    ax.step(range(len(y_prob_iter)), y_prob_iter, label=config, color=colorval, ls=linestyle)

plt.rcParams.update(tex_fonts)

def main():
    Path("./plots/").mkdir(parents=True, exist_ok=True)
    parser = argparse.ArgumentParser(description='Plot')
    parser.add_argument('-b', '--benchmark', required=True)
    #parser.add_argument('-m', '--machine', required=True)
    args = parser.parse_args()
    if args.benchmark != 'openmc':
        fig, ax = plt.subplots(figsize=(6,1.5))
    else:
        fig, ax = plt.subplots(figsize=(6,1.7))
    linestyles = {'lassen': '-', 'tioga': '--'}
    for machine in ['lassen', 'tioga']:
        kernel_data_dict = get_data_for_valid_experiments(args.benchmark, machine)

        y_per_kernel = {}
        for kernel, data in kernel_data_dict.items():
            print('kernel', kernel)
            y = np.array([np.median(times)
                        for times in data['NumThreads+NumTeams']['times_ns']])
            y_per_kernel[kernel] = y
            #plot_bo('NumThreads+NumTeams', args.benchmark, kernel, y)

        plot_step_best_iter(
            ax, f'BONN-{machine}', args.benchmark, y_per_kernel, 'tab:blue', linestyles[machine])

        for kernel, data in kernel_data_dict.items():
            print('kernel', kernel)
            y = np.array([np.median(times)
                        for times in data['NumThreads+NumTeams+MaxThreads+MinTeams']['times_ns']])
            y_per_kernel[kernel] = y

        plot_step_best_iter(ax,
                            f'BOMN-{machine}', args.benchmark, y_per_kernel, 'tab:orange', linestyles[machine])
        plt.gca().set_prop_cycle(None)

    if args.benchmark == 'lulesh':
        handles = [mpatches.Patch(color='tab:blue'), mpatches.Patch(
            color='tab:orange'), Line2D([0], [0], ls='-', color='black'), Line2D([0], [0], ls='--', color='black')]
        ax.legend(handles, ['BONN', 'BOMN', 'NVIDIA', 'AMD'], ncols=2, frameon=False)

    if args.benchmark != 'openmc':
        ax.set_xticks([])
    else:
        ax.set_xlabel(f'Iteration')
    ax.spines[['top', 'right']].set_visible(False)
    ax.set_ylabel('P($Best_i$ == Best)')
    ax.set_yticks([0.25, 0.5, 0.75, 1.0])
    plt.tight_layout()
    #plt.savefig(f'{args.benchmark}-prob_best_iter-{args.machine}.pdf')
    plt.savefig(f'plots/{args.benchmark}-prob_best_iter.pdf')
    plt.close()
if __name__ == "__main__":
    main()
