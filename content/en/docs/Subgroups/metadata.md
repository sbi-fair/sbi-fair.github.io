---
title: "Metadata Subgroup"
linkTitle: "Metadata Subgroup"
weight: 30
description: >
  Metadata subgroup informatin
---

This subgroup is lead but University of Tennessee, Knoxville.

# Schema Development

As part of the logging, reporting activities, this subgroup is tasked to create
appropriate schema to follow the FAIR principles. Below is a general overview
of the major hierarchy of data that needs to be recorded for reproducibility.

* Hardware specifications
  * Compute: CPUs, Accelerators
  * Memory: caches, NUMA
  * Network: on-node CPU and accelerator coherency, NIC and off-node switches
  * Peripherals
  * Storage: primary (SSD), secondary (HDD), tertiary (RAID/remote)
  * Firmware: ID/release date
* Software stack
  * Compiler: GCC, Clang, vendor
  * AI framework: TensorFlow, PyTorch, Keras, MxNet
  * Tensor backend: JAX, TVM
  * Runtime: JVM, OpenMP, CUDA
  * Messaging API: MPI, NCCL, RCCL
  * OS: Linux
  * Container: Singularity, Docker, CharlieCloud
* Input data
  * Data sets (version, size)
    * Image: MNIST digits/fashion, CIFAR 10/100, ImageNet, VGG
    * Language: Transformer
    * Science: instrument, simulation
  * Annotations
* Model data
  * Release date, ID, repo/branch/tag/hash, URL
* Output data
  * Performance rate: training, inference
  * Power draw: training, inference
  * Energy consumption
  * Convergence: epochs
  * Accuracy, recall
