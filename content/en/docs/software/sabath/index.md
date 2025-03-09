---
title: "sabath"
linkTitle: "sabath"
weight: 50
description: >
  SABATH provides benchmarking infrastructure for evaluating scientific ML/AI models. It contains support for scientific machine learning surrogates from external repositories such as SciML-Bench.
resources:
  - src: "**.{png,jpg}"
    title: "Image #:counter"
---

## Introduction

SABATH provides benchmarking infrastructure for evaluating scientific ML/AI models. It contains support for scientific machine learning surrogates from external repositories such as SciML-Bench.

The software dependences are explicitly exposed in the surrogate model definition, which allows the use of advanced optimization, communication, and hardware features. For example, distributed, multi-GPU training may be enabled with Horovod. Surrogate models may be implemented using TensorFlow, PyTorch, or MXNET frameworks.

## Models

Models are collected so far at

* <https://github.com/icl-utk-edu/sabath/tree/main/var/sabath/assets/sabath/models>

  * [autophasenn.json](https://github.com/icl-utk-edu/sabath/blob/main/var/sabath/assets/sabath/models/a/autophasenn.json)
  * [cosmoflow.json](https://github.com/icl-utk-edu/sabath/blob/main/var/sabath/assets/sabath/models/c/cosmoflow.json)
  * [miniWeatherML.json](https://github.com/icl-utk-edu/sabath/blob/main/var/sabath/assets/sabath/models/m/miniWeatherML.json)
  * [nanoconfinement.json](https://github.com/icl-utk-edu/sabath/blob/main/var/sabath/assets/sabath/models/n/nanoconfinement.json)
  * [ptychonn.json](https://github.com/icl-utk-edu/sabath/blob/main/var/sabath/assets/sabath/models/p/ptychonn.json)

[^1]

## References

[^1]: <https://github.com/icl-utk-edu/sabath>
