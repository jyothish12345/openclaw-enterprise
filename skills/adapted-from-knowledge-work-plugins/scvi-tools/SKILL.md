---
name: scvi-tools
description: Use machine learning for single-cell data analysis. Use for probabilistic modeling, batch correction, integration of multiple datasets, and dimensionality reduction. Adapted for OpenClaw.
---

# Machine Learning for Genomics (scvi-tools)

Use machine learning (scvi-tools) for probabilistic modeling of single-cell data.

## When to Use
- Probabilistic modeling (scVI, scANVI)
- Batch effect correction
- Integration of multiple datasets
- Dimensionality reduction
- Differential expression

## Key Models

### 1. scVI (Single-Cell Variational Inference)
- **Goal:** Learn low-dimensional latent representation of cells.
- **Input:** Raw counts (UMI).
- **Output:** Corrected expression, batch-corrected latent space.
- **Use Case:** Integration, clustering, trajectory inference.

### 2. scANVI (Single-Cell Annotation using Variational Inference)
- **Goal:** Transfer learning for cell type annotation.
- **Input:** Partially annotated data (reference + query).
- **Output:** Predicted cell types for unlabeled cells.
- **Use Case:** Label transfer, automated annotation.

### 3. TotalVI
- **Goal:** Joint model for CITE-seq (RNA + Protein).
- **Input:** Paired RNA and Protein counts.
- **Output:** Denoised protein expression, joint latent space.

## Analysis Workflow

1. **Setup:** Install `scvi-tools` (Python).
2. **Data Preparation:** AnnData format (Scanpy).
3. **Model Training:**
   ```python
   import scvi
   scvi.model.SCVI.setup_anndata(adata, layer="counts", batch_key="batch")
   model = scvi.model.SCVI(adata)
   model.train()
   ```
4. **Inference:**
   ```python
   latent = model.get_latent_representation()
   adata.obsm["X_scVI"] = latent
   normalized_expression = model.get_normalized_expression()
   ```
5. **Downstream:** Use `X_scVI` for UMAP/clustering.

## Project Log Template

```markdown
# ML Genomics Analysis: [Project Name]

**Date:** [YYYY-MM-DD]
**Model:** [scVI / scANVI / TotalVI]
**Input Data:** [Dataset description]
**Batches:** [Number of batches]

## Training
- **Epochs:** [N]
- **Loss:** [Value]
- **Convergence:** [Yes/No]

## Results
- **Latent Space:** [Description of clustering]
- **Batch Correction:** [Visual assessment via UMAP]
- **Annotation:** [New cell types identified]

## Artifacts
- [ ] Trained model saved
- [ ] Latent representations exported
- [ ] UMAP plots generated
```

## Using with OpenClaw

**Workflow:**
1. Guide user to run Python scripts or use `exec` if environment allows.
2. Train model and log parameters.
3. Save analysis log to `/memory/research/ml_logs/`.

## File Storage
`/memory/research/ml_logs/[project-name]-ml.md`

---
*Adapted from knowledge-work-plugins (bio-research/scvi-tools) for OpenClaw*
