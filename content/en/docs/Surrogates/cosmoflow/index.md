---
title: "Cosmoflow"
linkTitle: "Cosmoflow"
weight: 15
description: >
  The CosmoFlow training application benchmark from the MLPerf HPC v0.5 benchmark suite. It involves training a 3D convolutional neural network on N-body cosmology simulation data to predict physical parameters of the universe.
resources:
  - src: "**.{png,jpg}"
    title: "Image #:counter"
---

---

## Metadata

---

**Model** [cosmoflow.json](https://github.com/icl-utk-edu/sabath/blob/main/var/sabath/assets/sabath/models/c/cosmoflow.json)

**Datasets** 

[cosmoUniverse_2019_05_4parE_tf_v2.json](https://github.com/icl-utk-edu/sabath/blob/main/var/sabath/assets/sabath/datasets/c/cosmoUniverse_2019_05_4parE_tf_v2.json)

[cosmoUniverse_2019_05_4parE_tf_v2_mini.json](https://github.com/icl-utk-edu/sabath/blob/main/var/sabath/assets/sabath/datasets/c/cosmoUniverse_2019_05_4parE_tf_v2_mini.json)

---
## Overview

This application is based on the original CosmoFlow paper presented at SC18 and continued by the ExaLearn project, and adopted as a benchmark in the MLPerf HPC suite. It involves training a 3D convolutional neural network on N-body cosmology simulation data to predict physical parameters of the universe. The reference implementation for MLPerf HPC v0.5 CosmoFlow uses TensorFlow with the Keras API and Horovod for data-parallel distributed training. The dataset comes from simulations run by ExaLearn, with universe volumes split into cubes of size 128x128x128 with 4 redshift bins. The total dataset volume preprocessed for MLPerf HPC v0.5 in TFRecord format is 5.1 TB. The target objective in MLPerf HPC v0.5 is to train the model to a validation mean-average-error < 0.124. However, the problem size can be scaled down and the training throughput can be used as the primary objective for a small scale or shorter timescale benchmark.[^1][^2][^3]


## References


[^1]: <https://proxyapps.exascaleproject.org/app/mlperf-cosmoflow/>

[^2]: <https://github.com/sparticlesteve/cosmoflow-benchmark>

[^3]: <https://github.com/sparticlesteve/cosmoflow-benchmark/blob/master/README.md>