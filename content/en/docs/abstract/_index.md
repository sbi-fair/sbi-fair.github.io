---
title: "Abstract"
linkTitle: "Abstract"
weight: 4
description: >
  A brief abstract about the project
---

{{% pageinfo %}}

The Surrogate Benchmark Initiative (SBI) abstract as presented at the DOE ASCR Meeting, Feb 2024


{{% /pageinfo %}}

Replacing traditional HPC computations with deep learning surrogates can dramatically improve the performance of simulations. We need to build repositories for AI models, datasets, and results that are easily used with FAIR metadata. These must cover a broad spectrum of use cases and system issues. The need for heterogeneous architectures means new software and performance issues. Further surrogate performance models are needed. The SBI (Surrogate Benchmark Initiative) collaboration between Argonne National Lab, Indiana University, Rutgers, University of Tennessee, and Virginia (lead) with MLCommons addresses these issues. The collaboration accumulates existing and generates new surrogates and hosts them (a total of around 20) in repositories. Selected surrogates become MLCommons benchmarks. The surrogates are managed by a FAIR metadata system, SABATH, developed by Tennessee and implemented for our repositories by Virginia. 
The surrogate domains are Bragg coherent diffraction imaging, ptychographic imaging, Fully ionized plasma fluid model closures, molecular dynamics(2),  
turbulence in computational fluid dynamics, cosmology, Kaggle calorimeter challenge(4), virtual tissue simulations(2), and performance tuning. Rutgers built a taxonomy using previous work and protein-ligand docking, which will be quantified using six mini-apps representing the system structure for different surrogate uses. Argonne has studied the data-loading and I/O structure for deep learning using inter-epoch and intra-batch reordering to improve data reuse. Their system addresses communication with the aggregation of small messages. They also study second-order optimizers using compression balancing accuracy and compression level. Virginia has used I/O parallelization to further improve performance. Indiana looked at ways of reducing the needed training set size for a given surrogate accuracy.[^1],[^2],[^3]


## Refernces

[^1]:  Web Page for Surrogate Benchmark Initiative SBI: FAIR Surrogate Benchmarks Supporting AI and Simulation Research. Web Page, January 2024. URL: <https://sbi-fair.github.io/>.
[^2]: Publications: <https://sbi-fair.github.io/docs/publications/>
[^3]: Meeting summaries: <https://docs.google.com/document/d/1cqMOkV9Cag6EB6HI6fR20gwhVwUeG5yijtJ3aEW0Crs/>