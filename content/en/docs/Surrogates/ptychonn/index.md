---
title: "PtychoNN: deep learning network for ptychographic imaging
that predicts sample amplitude and phase from  diffraction data."

linkTitle: "PtychoNN"
description: >
  A DL-based approach to solve the ptychography data inversion problem that learns a direct mapping from the reciprocal space data to the sample amplitude and phase.
author: ANL
resources:
  - src: "**.{png,jpg}"
    title: "Image #:counter"
    params:
      byline: ""
---

---

## Metadata

---

**Model** [ptychonn.json](https://github.com/icl-utk-edu/sabath/blob/main/var/sabath/assets/sabath/models/p/ptychonn.json)

**Datasets** [ptychonn_20191008_39.json](https://github.com/icl-utk-edu/sabath/blob/main/var/sabath/assets/sabath/datasets/p/ptychonn_20191008_39.json)

---
PtychoNN, uses a deep convolutional neural network to predict realspace structure and phase from far-field diffraction data. It recovers high fidelity amplitude and phase contrast images of a real sample hundreds of times faster
than current ptychography reconstruction packages and reduces sampling requirements [^1]

## References

[^1]: Mathew J. Cherukara, Tao Zhou, Youssef Nashed, Pablo Enfedaque, Alex Hexemer, Ross J. Harder, Martin V. Holt; AI-enabled high-resolution scanning coherent diffraction imaging. Appl. Phys. Lett. 27 July 2020; 117 (4): 044103. https://doi.org/10.1063/5.0013065
