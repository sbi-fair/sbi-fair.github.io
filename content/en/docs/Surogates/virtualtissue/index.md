---
title: "Virtual tissue"
linkTitle: "Virtual tissue"
weight: 13
description: >
  This surrugate simulates a virtual tissue.
resources:
  - src: "**.{png,jpg}"
    title: "Image #:counter"
---

## Overview

Neural networks (NNs) have been demonstrated to be a viable
alternative to traditional direct numerical evaluation algorithms,
with the potential to accelerate computational time by several orders
of magnitude. In the present paper we study the use of encoder-decoder
convolutional neural network (CNN) algorithms as surrogates for
steady-state diffusion solvers. The construction of such surrogates
requires the selection of an appropriate task, network architecture,
training set structure and size, loss function, and training algorithm
hyperparameters. It is well known that each of these factors can have
a significant impact on the performance of the resultant model.  Our
approach employs an encoder-decoder CNN architecture, which we posit
is particularly wellsuited for this task due to its ability to
effectively transform data, as opposed to merely compressing it. We
systematically evaluate a range of loss functions, hyperparameters,
and training set sizes.  Our results indicate that increasing the size
of the training set has a substantial effect on reducing performance
fluctuations and overall error. Additionally, we observe that the
performance of the model exhibits a logarithmic dependence on the
training set size. Furthermore, we investigate the effect on model
performance by using different subsets of data with varying
features. Our results highlight the importance of sampling the
configurational space in an optimal manner, as this can have a
significant impact on the performance of the model and the required
training time. In conclusion, our results suggest that training a
model with a pre-determined error performance bound is not a viable
approach, as it does not guarantee that edge cases with errors larger
than the bound do not exist. Furthermore, as most surrogate tasks
involve a high dimensional landscape, an ever increasing training set
size is, in principle, needed, however it is not a practical solution.

[^1][^2]

## References

[^1]: https://arxiv.org/pdf/2302.03786.pdf is virtual tissue

[^2]: There is an earlier surrogate referred to in this arxiv. It was published
https://www.frontiersin.org/articles/10.3389/fphys.2021.667828/full
