---
title: "Publications"
linkTitle: "Publications"
weight: 9
menu:
  main:
    weight: 20
description: >
  We list here the Publications of this project
---

{{% pageinfo %}}
The collection of publications related to this project.
{{% /pageinfo %}}


1. Quetzalcóatl Toledo-Marín, J; Fox, Geoffrey; Sluka, James P; Glazier, James A, “Deep learning approaches to surrogates for solving the diffusion equation for mechanistic real-world simulations” February 10, 2021 https://arxiv.org/abs/2102.05527 accepted for publication in Frontiers in Physiology, section Computational Physiology and Medicine, https://doi.org/10.3389/fphys.2021.667828 (open access)
Does the publication acknowledge Federal funding? Yes
```
@misc{toledomarín2021deep,
      title={Deep learning approaches to surrogates for solving the diffusion equation for mechanistic real-world simulations}, 
      author={J. Quetzalcóatl Toledo-Marín and Geoffrey Fox and James P. Sluka and James A. Glazier},
      year={2021},
      eprint={2102.05527},
      archivePrefix={arXiv},
      primaryClass={cond-mat.soft}
}
```

```
@ARTICLE{10.3389/fphys.2021.667828,
AUTHOR={Toledo-Marín, J. Quetzalcóatl and Fox, Geoffrey and Sluka, James P. and Glazier, James A.},
TITLE={Deep Learning Approaches to Surrogates for Solving the Diffusion Equation for Mechanistic Real-World Simulations},
JOURNAL={Frontiers in Physiology},
VOLUME={12},
YEAR={2021},
URL={https://www.frontiersin.org/articles/10.3389/fphys.2021.667828},	
DOI={10.3389/fphys.2021.667828},	
ISSN={1664-042X},
ABSTRACT={In many mechanistic medical, biological, physical, and engineered spatiotemporal dynamic models the numerical solution of partial differential equations (PDEs), especially for diffusion, fluid flow and mechanical relaxation, can make simulations impractically slow. Biological models of tissues and organs often require the simultaneous calculation of the spatial variation of concentration of dozens of diffusing chemical species. One clinical example where rapid calculation of a diffusing field is of use is the estimation of oxygen gradients in the retina, based on imaging of the retinal vasculature, to guide surgical interventions in diabetic retinopathy. Furthermore, the ability to predict blood perfusion and oxygenation may one day guide clinical interventions in diverse settings, i.e., from stent placement in treating heart disease to BOLD fMRI interpretation in evaluating cognitive function (Xie et al., <xref ref-type="bibr" rid="B40">2019</xref>; Lee et al., <xref ref-type="bibr" rid="B23">2020</xref>). Since the quasi-steady-state solutions required for fast-diffusing chemical species like oxygen are particularly computationally costly, we consider the use of a neural network to provide an approximate solution to the steady-state diffusion equation. Machine learning surrogates, neural networks trained to provide approximate solutions to such complicated numerical problems, can often provide speed-ups of several orders of magnitude compared to direct calculation. Surrogates of PDEs could enable use of larger and more detailed models than are possible with direct calculation and can make including such simulations in real-time or near-real time workflows practical. Creating a surrogate requires running the direct calculation tens of thousands of times to generate training data and then training the neural network, both of which are computationally expensive. Often the practical applications of such models require thousands to millions of replica simulations, for example for parameter identification and uncertainty quantification, each of which gains speed from surrogate use and rapidly recovers the up-front costs of surrogate generation. We use a Convolutional Neural Network to approximate the stationary solution to the diffusion equation in the case of two equal-diameter, circular, constant-value sources located at random positions in a two-dimensional square domain with absorbing boundary conditions. Such a configuration caricatures the chemical concentration field of a fast-diffusing species like oxygen in a tissue with two parallel blood vessels in a cross section perpendicular to the two blood vessels. To improve convergence during training, we apply a training approach that uses roll-back to reject stochastic changes to the network that increase the loss function. The trained neural network approximation is about 1000 times faster than the direct calculation for individual replicas. Because different applications will have different criteria for acceptable approximation accuracy, we discuss a variety of loss functions and accuracy estimators that can help select the best network for a particular application. We briefly discuss some of the issues we encountered with overfitting, mismapping of the field values and the geometrical conditions that lead to large absolute and relative errors in the approximate solution.}
}
```

2. J.C.S Kadupitiya, Fanbo Sun, Geoffrey Fox, Vikram Jadhao
Machine learning surrogates for molecular dynamics simulations of soft materials
Journal of Computational Science 42 (2020) 101107
Does the publication acknowledge Federal funding? No

```
@article{kadupitiya2020machine,
  title={Machine learning surrogates for molecular dynamics simulations of soft materials},
  author={Kadupitiya, JCS and Sun, Fanbo and Fox, Geoffrey and Jadhao, Vikram},
  journal={Journal of Computational Science},
  volume={42},
  pages={101107},
  year={2020},
  publisher={Elsevier}
}
```

3. V. Jadhao and J. Kadupitiya, "Integrating Machine Learning with HPC-driven Simulations for Enhanced Student Learning," 2020 IEEE/ACM Workshop on Education for High-Performance Computing (EduHPC), 2020, pp. 25-34, doi: 10.1109/EduHPC51895.2020.00009.
Does the publication acknowledge Federal funding? No

```
@inproceedings{jadhao2020integrating,
  title={Integrating machine learning with hpc-driven simulations for enhanced student learning},
  author={Jadhao, Vikram and Kadupitiya, JCS},
  booktitle={2020 IEEE/ACM Workshop on Education for High-Performance Computing (EduHPC)},
  pages={25--34},
  year={2020},
  organization={IEEE}
}
```

4. Protein-Ligand Docking Surrogate Models: A SARS-CoV-2 Benchmark for Deep Learning Accelerated Virtual Screening Austin Clyde, Thomas Brettin, Alex Partin, Hyunseung Yoo, Yadu Babuji, Ben Blaiszik, Andre Merzky, Matteo Turilli, Shantenu Jha, Arvind Ramanathan, Rick Stevens https://arxiv.org/abs/2106.07036 Submitted to NeuriPS 2021.
Federal Funding Acknowledgement: Yes.  

```
@article{clyde2021protein,
  title={Protein-ligand docking surrogate models: A sars-cov-2 benchmark for deep learning accelerated virtual screening},
  author={Clyde, Austin and Brettin, Thomas and Partin, Alexander and Yoo, Hyunseung and Babuji, Yadu and Blaiszik, Ben and Merzky, Andre and Turilli, Matteo and Jha, Shantenu and Ramanathan, Arvind and others},
  journal={arXiv preprint arXiv:2106.07036},
  year={2021}
}
```