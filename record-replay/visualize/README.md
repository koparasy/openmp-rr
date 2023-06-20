# Visualization

All scripts must be invoked from the current directory.

## Figure 10

To create figure 10 issue the following commands:

```bash
python plot_speedup_per_scenario_scatter.py -b openmc
python plot_speedup_per_scenario_scatter.py -b lulesh 
python plot_speedup_per_scenario_scatter.py -b minife 
```

The `plots/*-speedup-scatter.pdf` files contain the respective plots.

## Figure 11:

To create Figure 11 please issue the following command:
```bash
python plot_time_breakdown.py
```

The `plots/*time-breakdown.pdf' files contain the plots.

## Figure 12:
To create figure 12 please issue: 
```bash
python optimize_time.py
```

The `plots/*replay_breakdown_plots.pdf` files contain the respective plots.

## Figure 13:

To create figure 13 issue the following commands:

```bash
python plot_speedup_per_scenario_scatter.py -b openmc
python plot_speedup_per_scenario_scatter.py -b lulesh 
python plot_speedup_per_scenario_scatter.py -b minife 
```

The `plots/*-prob_best_iter.pdf` files contain the respective plots.


## Figure 14:
To create figure 14 please issue:
```bash
python optimize_time.py
```

