---
layout: page
title: Method and software development
description: QEDFT, Octopus, machine learning, and quantum computing for light-matter systems
img: assets/img/methods_fig.png
importance: 3
category: work
related_publications: true
---

Advancing our understanding of light-matter systems and quantum defects requires not only new physical insight but also new computational tools. A major part of our group's effort goes into developing theoretical methods and open-source software that make previously intractable problems accessible.

Our primary methodological focus is quantum-electrodynamical density-functional theory (QEDFT), a framework that extends the Hohenberg-Kohn theorem to systems where electrons are strongly coupled to quantized photon modes. We develop new exchange-correlation functionals for the coupled electron-photon system, validated against exact solutions for model systems and, increasingly, against quantum Monte Carlo benchmarks. Practical implementations of QEDFT are contributed to the open-source real-space code Octopus, which supports a broad range of spectroscopic and time-dependent calculations. Related work includes the cavity Born-Oppenheimer approximation, which allows vibro-polariton and phonon-polariton spectra to be computed efficiently from standard density-functional perturbation theory without additional electronic structure calculations.

We also explore machine learning and quantum computing as complementary routes to pushing the frontier of electronic structure. On the machine learning side, we have developed neural network approaches that distill the predictions of orbital-dependent density functionals into efficient surrogate models, enabling applications at scales otherwise out of reach. On the quantum computing side, we investigate variational quantum algorithms for simulating polaritonic systems on near-term hardware, and study how circuit-level noise can be mitigated through noise-aware gate decomposition {% cite hassan2024simulating medvidovic2025neural %}. Together, these efforts aim to build a versatile computational toolkit for the ab initio description of strongly correlated light-matter systems.
