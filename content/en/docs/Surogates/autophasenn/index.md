---
date: 2023-26-01
title: "AutoPhaseNN: unsupervised physics-aware deep learning of 3D nanoscale Bragg coherent diffraction imaging"
linkTitle: "AutoPhaseNN"
description: >
  A DL-based approach which learns to solve the phase problem in
  3D X-ray Bragg coherent diffraction imaging (BCDI) without labeled data.
author: ANL
resources:
  - src: "**.{png,jpg}"
    title: "Image #:counter"
    params:
      byline: "Image from: Yao, Y. et al / CC-BY "
---

---

## Metadata

---

**Model** [autophasenn.json](https://github.com/icl-utk-edu/sabath/blob/main/var/sabath/assets/sabath/models/a/autophasenn.json)

**Datasets** [autoPhaseNN_aicdi.json](https://github.com/icl-utk-edu/sabath/blob/main/var/sabath/assets/sabath/datasets/a/autoPhaseNN_aicdi.json)

---

> Adapted from Yao, Y. _et. al_ [^1] under CC-BY [^2]

AutoPhaseNN [^1], a physics-aware unsupervised deep convolutional neural network
(CNN) that learns to solve the phase problem without ever being shown real space
images of the sample amplitude or phase. By incorporating the physics of the
X-ray scattering into the network design and training, AutoPhaseNN learns to
predict both the amplitude and phase of the sample given the measured
diffraction intensity alone. Additionally, unlike previous deep learning models,
AutoPhaseNN does not need the ground truth images of sample’s amplitude and
phase at any point, either in training or in deployment. Once trained, the
physical model is discarded and only the CNN portion is needed which has learned
the data inversion from reciprocal space to real space and is ~100 times faster
than the iterative phase retrieval with comparable image quality. Furthermore,
we show that by using AutoPhaseNN’s prediction as the learned prior to iterative
phase retrieval, we can achieve consistently higher image quality, than neural
network prediction alone, at 10 times faster speed than iterative phase
retrieval alone.

{{< imgproc autophasenn1 Resize "900x" >}}
Fig. 1: Schematic of the neural network structure of AutoPhaseNN model during training.
a) The model consists of a 3D CNN and the X-ray scattering forward model. The 3D
CNN is implemented with a convolutional auto-encoder and two deconvolutional
decoders using the convolutional, maximum pooling, upsampling and zero padding
layers. The physical knowledge is enforced via the Sigmoid and Tanh activation
functions in the final layers. b The X-ray scattering forward model includes the
numerical modeling of diffraction and the image shape constraints. It takes the
amplitude and phase from the 3D CNN output to form the complex image. Then the
estimated diffraction pattern is obtained from the FT of the current estimation
of the real space image.
{{< /imgproc >}}

## References

[^1]: Yao, Y., Chan, H., Sankaranarayanan, S. et al. AutoPhaseNN: unsupervised physics-aware deep learning of 3D nanoscale Bragg coherent diffraction imaging. npj Comput Mater 8, 124 (2022). https://doi.org/10.1038/s41524-022-00803-w
[^2]: http://creativecommons.org/licenses/by/4.0/
