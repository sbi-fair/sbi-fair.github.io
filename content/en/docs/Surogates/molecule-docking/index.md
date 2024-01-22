---
date: 2021-02-09
title: "Molecule docking"
linkTitle: "Molecule docking"
description: >
  TBD
author: Argonne National Laboratory
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
---

Molecule docking: Docking small molecules to a protein’s
binding site is often one of the first steps for virtual screening
[^56]. Although many open-source and commercial packages exist for
docking, AI approaches can be equally powerful (and computationally
more efficient) for docking studies [^57]. Utilizing advances in
control from reinforcement learning (RL), Argonne researchers trained
an agent to drive the docking of a rigid ligand into a flexible
protein pocket. The RL agent treats the ligand as a rigid body to
which it can move through affine transformations along the
protein. This procedure bypasses sampling on a grid as the agent is
trained to optimize the pose against OpenEye Fred docking function
[^58], and/or other openly available docking tools such as UCSF DOCK,
Autodock/Vina. The challenge of this approach is that there is a need
to train the agent based on the protein target, which can still take
considerable time on single-GPU systems. This area comes from the
major Argonne CANDLE [^59] project and other applications (DeepDriveMD)
will come from this project in the new submissions category. 

## Refernces

[^56]: P. D. Lyne, “Structure-based virtual screening: an overview,”
       Drug Discov. Today, vol. 7, no. 20, pp. 1047–1055, Oct. 2002
       [Online]. Available:
       http://dx.doi.org/10.1016/s1359-6446(02)02483-2

[^57]: J. Li, A. Fu, and L. Zhang, “An overview of scoring functions
	   used for protein--ligand interactions in molecular docking,”
	   Interdiscip. Sci., pp. 1–9, 2019 [Online]. Available:
	   https://idp.springer.com/authorize/casa?redirect_uri=https://link.springer.com/article/10.1007/s12539-019-00327-w&casa_token=Usuqtf4tu-4AAAAA:VD0uKAo49lSwaEEpmufft87cpUtbmE9MSdlR_Wpv880jHArsLIfLy8PQPAaN6ODJIArQ9GMz15wJ6lSX

[^58]: M. McGann, “FRED pose prediction and virtual screening
	   accuracy,” J. Chem. Inf. Model., vol. 51, no. 3, pp. 578–596,
	   Mar. 2011 [Online]. Available:
	   http://dx.doi.org/10.1021/ci100436p

[^59]: “CANDLE Exascale Deep Learning and Simulation Enabled Precision
	   Medicine for Cancer.” [Online]. Available:
	   https://candle.cels.anl.gov/. [Accessed: 01-May-2020]
