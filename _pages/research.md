---
layout: page
permalink: /research/
title: Research
description: Computational platforms for single-cell, spatial, and visual-omics biology.
display_header: false
nav: true
nav_order: 2
---

<div class="research-page">

<p class="research-lead">
We develop computational methods for multimodal biology, linking cell-state dynamics, tissue morphology, and spatial molecular measurements. 
</p>

<div class="research-grid">
  <section class="research-card">
    <div class="research-card-label">Cell-state dynamics</div>
    <h2>cellDancer</h2>
    <p>
      A deep-learning framework for RNA velocity with cell-specific kinetics. By estimating local velocities and relaying them across neighboring cells, cellDancer improves inference of multi-lineage cell-state transitions.
    </p>
    <a href="https://doi.org/10.1038/s41587-023-01728-5" target="_blank" rel="noopener">Nature Biotechnology, 2023</a>
  </section>

  <section class="research-card">
    <div class="research-card-label">Visual-omics bridge</div>
    <h2>Loki</h2>
    <p>
      A visual-omics platform built from OmiCLIP to align H&amp;E histology with spatial transcriptomics. It turns paired image-omics data into a shared representation for annotation, retrieval, decomposition, and expression prediction.
    </p>
    <a href="https://doi.org/10.1038/s41592-025-02707-1" target="_blank" rel="noopener">Nature Methods, 2025</a>
  </section>

  <section class="research-card">
    <div class="research-card-label">Spatial tissue interpretation</div>
    <h2>Thor</h2>
    <p>
      A platform for cell-level spatial transcriptomics and histology. Thor uses anti-shrinking Markov diffusion to refine spot-level measurements toward cell-level tissue maps, paired with interactive whole-slide visualization through Mjolnir.
    </p>
    <a href="https://doi.org/10.1038/s41467-025-62593-1" target="_blank" rel="noopener">Nature Communications, 2025</a>
  </section>
</div>

<style>
  .research-page {
    max-width: 980px;
    margin: 0 auto;
  }

  .research-lead {
    margin: 0 0 1.8rem;
    font-size: 1.05rem;
    line-height: 1.7;
  }

  .research-grid {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 1rem;
  }

  .research-card {
    display: flex;
    min-height: 100%;
    flex-direction: column;
    padding: 1rem;
    border: 1px solid var(--global-divider-color);
    border-radius: 8px;
    background: var(--global-card-bg-color);
  }

  .research-card-label {
    margin-bottom: 0.5rem;
    color: var(--global-theme-color);
    font-size: 0.78rem;
    font-weight: 600;
    text-transform: uppercase;
  }

  .research-card h2,
  .research-note h2 {
    margin-top: 0;
    font-size: 1.2rem;
  }

  .research-card p {
    flex: 1;
    margin-bottom: 1rem;
  }

  .research-note {
    margin-top: 1.8rem;
    padding-top: 1.2rem;
    border-top: 1px solid var(--global-divider-color);
  }

  @media (max-width: 900px) {
    .research-grid {
      grid-template-columns: 1fr;
    }
  }
</style>
