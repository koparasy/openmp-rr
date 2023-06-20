# Structure of directories

Our reproducability results/framework is divided into 4 directories:

1. [Passes](./Passes/): A collection of LLVM passes
to apply user defined launch bounds on OpenMP kernels.
This passes are used automatically by the optimization script to test different scenarios.
The setup script (provided in the root directory) install these passes.
2. [datasets](./datasets/): The data obtained for the plotting of the original paper
3. [visualize](./visualize/): The scripts visualizing the results of our work.
4. [RR](./RR): The scripts required to optimize an application
