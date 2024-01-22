---
date: 2021-02-09
title: "Fully ionized plasma fluid model closures"
linkTitle: "Ionized plasma"
description: >
  TBD
author: Argonne National Laboratory
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
---

Fully ionized plasma fluid model closures (Argonne):[^60] The closure
problem in fluid modeling is a well-known challenge to modelers aiming
to accurately describe their system of interest. Analytic formulations
in a wide range of regimes exist but a practical, generalized fluid
closure for magnetized plasmas remains an elusive goal. There are
scenarios where complex physics prevents a simple closure being
assumed, and the question as to what closure to employ has a
non-trivial answer. In a proof-of-concept study, Argonne researchers
turned to machine learning to try to construct surrogate closure
models that map the known macroscopic variables in a fluid model to
the higher-order moments that must be closed. In their study, the
researchers considered three closures: Braginskii, Hammett-Perkins,
and Guo-Tang; for each of them, they tried three types of ANNs:
locally connected, convolutional, and fully connected. Applying a
physics-informed machine learning approach, they found that there is a
benefit to tailoring a specific network architecture informed by the
physics of the plasma regime each closure is designed for, rather than
carelessly applying an unnecessarily complex general network
architecture.  will choose one of the surrogates and bring it up an
early example for SBI with reference implementation and tutorial
documentation. As a follow-up, the Argonne team will tackle more
challenging problems. 

## Refernces 

[^60]: R. Maulik, N. A. Garland, X.-Z. Tang, and P. Balaprakash,
	   “Neural network representability of fully ionized plasma fluid
	   model closures,” arXiv [physics.comp-ph], 10-Feb-2020
	   [Online]. Available: http://arxiv.org/abs/2002.04106
