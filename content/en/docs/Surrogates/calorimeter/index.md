---
title: "Calorimeter surrogates"
linkTitle: "Calorimeter"
weight: 13
description: >
  The Kaggle calorimeter challenge uses generative AI to produce a surrogate for the Monte Carlo calculation of a calorimeter response to an incident particle (ATLAS data at LHC calculated with GEANT4).
resources:
  - src: "**.{png,jpg}"
    title: "Image #:counter"
---

## Overview

The Kaggle calorimeter challenge uses generative AI to produce a
surrogate for the Monte Carlo calculation of a calorimeter response to
an incident particle (ATLAS data at LHC calculated with
GEANT4). Variational Auto Encoders, GANs, Normalizing Flows, and
Diffusion Models. We also have a surrogate using a Quantum Computer
(DWAVE) annealer to generate random samples. We have identified four
different surrogates that are available openly from Kaggle and later
submissions.

{{< imgproc caloremiter Fill "928x710" >}}
Figure 1: CaloChallenge Dataset.
{{< /imgproc >}}


## Details 

Accurate simulation plays a crucial role in particle physics by
bridging theoretical models with experimental data to uncover the
universe's fundamental properties. At the Large Hadron Collider (LHC),
simulations based on Monte Carlo methods model the interactions of
billions of particles, including complex calorimeter shower
events—cascades of secondary particles produced when high-energy
particles hit detector materials. The widely-used Geant4
[^11]
simulation toolkit provides highly detailed physics-based simulations,
but its computational cost is extremely high, making up over 75% of
the total simulation time
[^15]. With the upcoming High-Luminosity LHC
(HL-LHC)
[^13]<sup>,</sup>[^14]
upgrade in 2029, the collider will generate larger
datasets with higher precision requirements, significantly increasing
the demand for computational resources. To mitigate this, researchers
are exploring generative models commonly used in image and text
generation—as surrogate models that can generate realistic calorimeter
showers at a fraction of the computational cost. In recent years,
several approaches based on Generative Adversarial Networks(GAN)
[^12]<sup/>-</sup>
[^16]<sup/>-</sup>
[^17]<sup/>-</sup>
[^18]<sup/>-</sup>
[^19]<sup/>-</sup>
[^20]<sup/>-</sup>
Diffusion
[^37]
[^38]<sup>,</sup>
[^39]<sup>,</sup>
[^40]<sup>,</sup>
[^41]<sup>,</sup>
[^42]<sup>,</sup>
[^43]<sup>,</sup>
[^44]<sup>,</sup>
[^45], Variational Autoencoders (VAEs)
[^21]<sup>,</sup>
[^22]<sup>,</sup>
[^23]<sup>,</sup>
[^24]<sup>,</sup>
[^25]<sup>,</sup>
[^26]<sup>,</sup>
[^27]<sup>,</sup>
[^28]<sup>,</sup>
[^29]
and Normalizing Flows
[^30]<sup/>-</sup>[^36]
have been proposed. However, evaluating
these models remains challenging because the physical characteristics
of calorimeter showers differ significantly from traditional image-
and text-based data.
[^46]<sup/>-</sup>
[^47] conducted a rigorous evaluation of these
generative models using standard datasets and a diverse set of metrics
derived from physics, computer vision, and statistics. Although
[^46]
sheds light on the existent correlations between layers, they do not
quantify correlations between layers and voxels. In this work, we
propose Correlation Frobenius Distance(CFD), an evaluation metric for
generative models of calorimeter shower simulation. This metric
measures how the consecutive layers and voxels of generated samples
are correlated with each other compared to Geant4 samples. CFD helps
evaluate the consistency of energy deposition patterns across layers,
capturing the spatial correlations in the calorimeter shower. Lower
CFD values indicate that the generated samples better preserve the
correlations observed in Geant4 simulations. We compared four
different models (CaloDream
[^45], CaloScore v2 [^44], CaloDiffusion
[^28], and CaloINN
[^34]) on Dataset 2
[^48] from CaloChallenge 2022
[^39] for CFD, our observation reveals that CaloDream can capture
correlations between consecutive layers and voxels the
best. Furthermore, we explored the impact of using full versus mixed
precision modes during inference for CaloDiffusion.  Our observation
shows that mixed precision inference does not speed up inference for
Dataset 1
[^49] and Dataset 2
[^49].​ However, it significantly improves inference time for Dataset 3
[^49], without compromising
performance.​ The Code is available in GitHub at
[^6].




Additional relevant references include:

[^8]<sup>,</sup>
[^9]<sup>,</sup>


Team contributed refernces include

[^7]<sup>,</sup>
[^1]<sup>,</sup>
[^3]<sup>,</sup>
[^4]<sup>,</sup>



**References**

Team contributed refernces are marked in bold

[^11]: Agostinelli, Sea, et al. "GEANT4—a simulation toolkit." *Nuclear instruments and methods in physics research section A: Accelerators, Spectrometers, Detectors and Associated Equipment* 506.3 (2003): 250-303.  
[^12]: ATLAS collaboration. "Fast simulation of the ATLAS calorimeter system with Generative Adversarial Networks." *ATLAS PUB Note, CERN, Geneva* (2020).  
[^13]: "New Schedule for CERN's Accelerators." *CERN*, 5 Dec. 2023, [https://home.cern/news/news/accelerators/new-schedule-cerns-accelerators]:(https://home.cern/news/news/accelerators/new-schedule-cerns-accelerators). Accessed 28 Feb. 2025\.  
[^14]: "Computing at CERN." *CERN*, [https://home.web.cern.ch/science/computing](https://home.web.cern.ch/science/computing). Accessed 28 Feb. 2025\.  
[^15]: Muškinja, Miha, John Derek Chapman, and Heather Gray. "Geant4 performance optimization in the ATLAS experiment." *EPJ Web of Conferences*. Vol. 245\. EDP Sciences, 2020\.  
[^16]: Ghosh, Aishik, and ATLAS collaboration. "Deep generative models for fast shower simulation in ATLAS." *Journal of Physics: Conference Series*. Vol. 1525\. No. 1\. IOP Publishing, 2020\.  
[^17]: Giannelli, Michele Faucci, and Rui Zhang. "CaloShowerGAN, a generative adversarial network model for fast calorimeter shower simulation." *The European Physical Journal Plus* 139.7 (2024): 597\.  
[^18]: Paganini, Michela, Luke de Oliveira, and Benjamin Nachman. "Accelerating science with generative adversarial networks: an application to 3D particle showers in multilayer calorimeters." *Physical review letters* 120.4 (2018): 042003\.  
[^19]: de Oliveira, Luke, Michela Paganini, and Benjamin Nachman. "Learning particle physics by example: location-aware generative adversarial networks for physics synthesis." *Computing and Software for Big Science* 1.1 (2017): 4\.  
[^20]: Paganini, Michela, Luke de Oliveira, and Benjamin Nachman. "CaloGAN: Simulating 3D high energy particle showers in multilayer electromagnetic calorimeters with generative adversarial networks." *Physical Review D* 97.1 (2018): 014021\.  
[^21]: Cresswell, Jesse C., et al. "CaloMan: Fast generation of calorimeter showers with density estimation on learned manifolds." *arXiv preprint arXiv:2211.15380* (2022).  
[^22]: Buhmann, Erik, et al. "Decoding photons: Physics in the latent space of a BIB-AE generative network." *EPJ Web of Conferences*. Vol. 251\. EDP Sciences, 2021\.  
[^23]: Buhmann, Erik, et al. "Getting high: High fidelity simulation of high granularity calorimeters with high speed." *Computing and Software for Big Science* 5.1 (2021): 13\.  
[^24]: Diefenbacher, Sascha, et al. "New angles on fast calorimeter shower simulation." *Machine Learning: Science and Technology* 4.3 (2023): 035044\.  
[^25]: Salamani, Dalila, Anna Zaborowska, and Witold Pokorski. "MetaHEP: Meta learning for fast shower simulation of high energy physics experiments." *Physics Letters B* 844 (2023): 138079\.  
[^26]: Abhishek, Abhishek, et al. "CaloDVAE: Discrete variational autoencoders for fast calorimeter shower simulation." *arXiv preprint arXiv:2210.07430* (2022).  
[^27]: Caloqvae: Simulating high-energy particle calorimeter interactions using hybrid quantum-classical generative models  
[^28]: Hoque, Sehmimul, et al. "CaloQVAE: Simulating high-energy particle-calorimeter interactions using hybrid quantum-classical generative models." *The European Physical Journal C* 84.12 (2024): 1-7.  
[^29]: Lu, Ian, et al. "Zephyr quantum-assisted hierarchical Calo4pQVAE for particle-calorimeter interactions." *arXiv preprint arXiv:2412.04677* (2024).  
[^30]: Krause, Claudius, and David Shih. "Fast and accurate simulations of calorimeter showers with normalizing flows." *Physical Review D* 107.11 (2023): 113003\.  
[^31]: Krause, Claudius, Ian Pang, and David Shih. "CaloFlow for CaloChallenge dataset 1." *SciPost Physics* 16.5 (2024): 126\.  
[^32]: Buckley, Matthew R., et al. "Inductive simulation of calorimeter showers with normalizing flows." *Physical Review D* 109.3 (2024): 033006\.  
[^33]: Diefenbacher, S., et al. "L2LFlows: generating high-fidelity 3D calorimeter images (2023)." *arXiv preprint arXiv:2302.11594* 18: P10017.  
[^34]: Ernst, Florian, et al. "Normalizing flows for high-dimensional detector simulations." *arXiv preprint arXiv:2312.09290* (2023).  
[^35]: Liu, Junze, et al. "Geometry-aware autoregressive models for calorimeter shower simulations." *arXiv preprint arXiv:2212.08233* (2022).  
[^36]: Schnake, Simon, Dirk Krücker, and Kerstin Borras. "CaloPointFlow II generating calorimeter showers as point clouds." *arXiv preprint arXiv:2403.15782* (2024).  
[^37]: Acosta, Fernando Torales, et al. "Comparison of point cloud and image-based models for calorimeter fast simulation." *Journal of Instrumentation* 19.05 (2024): P05003.  
[^38]: Amram, Oz, and Kevin Pedro. "Denoising diffusion models with geometry adaptation for high fidelity calorimeter simulation." *Physical Review D* 108.7 (2023): 072014\.  
[^39]: Buhmann, Erik, et al. "CaloClouds: fast geometry-independent highly-granular calorimeter simulation." *Journal of Instrumentation* 18.11 (2023): P11025.  
[^40]: Buhmann, Erik, et al. "CaloClouds II: ultra-fast geometry-independent highly-granular calorimeter simulation." *Journal of Instrumentation* 19.04 (2024): P04020.  
[^41]: Cresswell, Jesse C., and Taewoo Kim. "Scaling Up Diffusion and Flow-based XGBoost Models." *arXiv preprint arXiv:2408.16046* (2024).  
[^42]: Madula, T., and V. M. Mikuni. "CaloLatent: Score-based Generative Modelling in the Latent Space for Calorimeter Shower Generation NeurIPS Workshop on Machine Learning and the Physical Sciences URL https://ml4physicalsciences. github. io/2023/files." *NeurIPS\_ ML4PS\_2023\_19. pdf* (2023).  
[^43]: Mikuni, Vinicius, and Benjamin Nachman. "Score-based generative models for calorimeter shower simulation." *Physical Review D* 106.9 (2022): 092009\.  
[^44]: Mikuni, Vinicius, and Benjamin Nachman. "CaloScore v2: single-shot calorimeter shower simulation with diffusion models." *Journal of Instrumentation* 19.02 (2024): P02001.  
[^45]: Favaro, Luigi, et al. "CaloDREAM--Detector Response Emulation via Attentive flow Matching." *arXiv preprint arXiv:2405.09629* (2024).  
[^47]: Krause, Claudius, et al. "Calochallenge 2022: A community challenge for fast calorimeter simulation." *arXiv preprint arXiv:2410.21611* (2024).  
[^48]: Ahmad, F. Y. Generated Samples of Dataset 2 from Calochallenge\_2022. Zenodo, 17 Feb. 2025, doi:10.5281/zenodo.14883798.  
[^49]: CaloChallenge Homepage*, calochallenge.github.io/homepage/. Accessed 3 Mar. 2025\.
[^6]: GitHub: <https://github.com/Aaheer17/Benchmarking_Calorimeter_Shower_Simulation_Generative_AI/tree/main>
[^8]: Michele Faucci Giannelli, Gregor Kasieczka, Claudius
Krause, Ben Nachman, Dalila Salamani, David Shih,
Anna Zaborowska, Fast calorimeter simulation challenge
2022 - dataset 1,2 and 3 [data set]. zenodo., <https://doi.org/10.5281/zenodo.8099322>, <https://doi.org/10.5281/zenodo.6366271>, <https://doi.org/10.5281/zenodo.6366324> (2022).
[^9]:  ATLAS Collaboration, ATLAS software and computing HL-LHC roadmap, Tech. Rep. (Technical report, CERN, Geneva. <http://cds.cern.ch/record/2802918>, 2022).

[^46]: **Ahmad, Farzana Yasmin, Vanamala Venkataswamy, and Geoffrey Fox. "A comprehensive evaluation of generative models in calorimeter shower simulation." *arXiv preprint arXiv:2406.12898* (2024). **

[^7]: **Conditioned quantum-assisted deep generative surrogate for particle-calorimeter interactions, J Quetzalcoatl Toledo-Marin, Sebastian Gonzalez, Hao Jia, Ian Lu, Deniz Sogutlu, Abhishek Abhishek, Colin Gay, Eric Paquet, Roger Melko, Geoffrey C Fox, Maximilian Swiatlowski, Wojciech Fedorko, 2024/10/30
arXiv preprint arXiv:2410.22870, Abstract:
Particle collisions at accelerators such as the Large Hadron Collider, recorded and analyzed by experiments such as ATLAS and CMS, enable exquisite measurements of the Standard Model and searches for new phenomena. Simulations of collision events at these detectors have played a pivotal role in shaping the design of future experiments and analyzing ongoing ones. However, the quest for accuracy in Large Hadron Collider (LHC) collisions comes at an imposing computational cost, with projections estimating the need for millions of CPU-years annually during the High Luminosity LHC (HL-LHC) run \cite{collaboration2022atlas}. Simulating a single LHC event with \textsc{Geant4} currently devours around 1000 CPU seconds, with simulations of the calorimeter subdetectors in particular imposing substantial computational demands [^9]. To address this challenge, we propose a conditioned quantum-assisted deep generative model. Our model integrates a conditioned variational autoencoder (VAE) on the exterior with a conditioned Restricted Boltzmann Machine (RBM) in the latent space, providing enhanced expressiveness compared to conventional VAEs. The RBM nodes and connections are meticulously engineered to enable the use of qubits and couplers on D-Wave's Pegasus-structured \textit{Advantage} quantum annealer (QA) for sampling. We introduce a novel method for conditioning the quantum-assisted RBM using \textit{flux biases}. We further propose a novel adaptive mapping to estimate the effective inverse temperature in quantum annealers. The effectiveness of our framework is illustrated using Dataset 2 of the CaloChallenge [^8].**


[^1]: **Calorimeter Surrogate Research, Geoffrey Fox University of Virginia, 2024
<https://docs.google.com/document/d/19g0Avj9SYbVH7qSxoVUnnFKeGMuBdD9JCHVmBQB466M/>**

[^3]: **Poster: <https://drive.google.com/file/d/1PUiNDju_8N_wsDKI_W-g-jyCHb_5Hepo/>**

[^4]: **Extended abstract: Correlation Frobenius Distance: A Metric for Evaluating Generative Models in Calorimeter Shower Simulation, Farzana Yasmin Ahmada, Vanamala Venkataswamya, Geoffrey Fox, University of Virginia, 
<https://docs.google.com/document/d/1ndHkJY41_pHYZZne58B4_7HJQKTCxPzeMWVMJ0bsnOE>**



