---
title: "cloudmesh"
linkTitle: "cloudmesh"
weight: 50
description: >
  cloudmesh is a flexible framework to develop cloud and HPC programs using python. It is based on a number of plugins.
resources:
  - src: "**.{png,jpg}"
    title: "Image #:counter"
---

## Overview

Cloudmesh allows the creation of an extensible commandline and commandshell tool based internally on a number of python APIs that can be loaded conveniently through plugins.

Plugins useful for this effort include

* cloudmesh-vpn[^5]  -- a convenient way to configure VPN
* cloudmesh-common[^3] -- useful common libraries including a StopWatch for benchmarking 
* cloudmesh-cmd5[^4] -- a plugin manager that allows plugins to be integrated as commandline tool or command shell
* cloudmesh-ee[^6] -- A pluging to create AI grid searchs using  LSF and SLURM jobs
* cloudmesh-cc[^7] -- A plugin to allow benchmarks to be run in coordination on heterogeneous compute resources and multiple clusters
* cloudmesh-apptainer[^8] -- mangae apptainers via a Python API

Cloudmesh has over 100 plugins coordinated at http://github.com/cloudmesh

[^1]

## References

[^1]: Gregor von Laszewski, J. P. Fleischer, and Geoffrey
C. Fox. 2022. Hybrid Reusable Computational Analytics Workflow
Management with Cloudmesh. https://doi.org/10.48550/ARXIV.2210.16941

[^2]: <https://github.com/cloudmesh>

[^3]: <https://github.com/cloudmesh-common>

[^4]: <https://github.com/cloudmesh-cmd5>

[^5]: <https://github.com/cloudmesh-vpn>

[^6]: <https://github.com/cloudmesh-ee>

[^7]: <https://github.com/cloudmesh-cc>

[^8]: <https://github.com/cloudmesh-apptainer>

