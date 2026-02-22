---
name: single-cell-rna-qc
description: Perform quality control on single-cell RNA sequencing data. Use when assessing sequencing quality, filtering low-quality cells, detecting doublets, and normalizing gene expression data. Adapted for OpenClaw.
---

# Single-Cell RNA QC (OpenClaw Adapted)

Quality control for single-cell RNA sequencing (scRNA-seq) data.

## When to Use
- Assessing sequencing quality
- Filtering low-quality cells/genes
- Detecting doublets/multiplets
- Normalizing gene expression
- Identifying batch effects

## QC Workflow

### 1. Sequencing Metrics
- **Total Reads:** Depth per cell (>20k usually good)
- **Mapping Rate:** % reads aligned to genome (>80% ideal)
- **Mitochondrial %:** High % indicates cell stress/death (<5-10% usually)
- **Ribosomal %:** High % may indicate technical noise

### 2. Cell Filtering
- **Library Size:** Remove cells with very low/high unique molecular identifiers (UMIs)
- **Gene Count:** Remove cells with few detected genes (<200 usually)
- **Doublet Detection:** Remove cells with unusually high counts (likely doublets)

### 3. Gene Filtering
- **Expression Threshold:** Remove genes expressed in very few cells (<3 cells usually)
- **Variable Genes:** Identify highly variable genes for downstream analysis

## QC Report Template

```markdown
# scRNA-seq QC Report: [Sample ID]

**Date:** [YYYY-MM-DD]
**Platform:** [10x Genomics / Smart-seq2]
** organism:** [Human / Mouse]

## Pre-Filtering Stats
- **Total Cells:** [N]
- **Median Genes/Cell:** [N]
- **Median UMIs/Cell:** [N]

## QC Thresholds Used
- **Min Genes:** 200
- **Max Mito %:** 10%
- **Min Cells/Gene:** 3

## Post-Filtering Stats
- **Retained Cells:** [N] (% remaining)
- **Removed Cells:** [N] (% filtered)
  - Low Quality: [N]
  - High Mito: [N]
  - Doublets: [N]

## Visualizations
- [ ] Violin plot: nFeature_RNA
- [ ] Violin plot: nCount_RNA
- [ ] Violin plot: percent.mt
- [ ] Scatter plot: nCount_RNA vs. percent.mt

## Next Steps
- [ ] Normalization (LogNormalize / SCTransform)
- [ ] Feature Selection (HVGs)
- [ ] Dimensionality Reduction (PCA / UMAP)
```

## Using with OpenClaw

**Workflow:**
1. Use Python (scanpy/seurat) if available, or guide user.
2. Generate QC plots and metrics.
3. Fill out QC report template.
4. Save to `/memory/research/qc_reports/`.

## File Storage
`/memory/research/qc_reports/[sample-id]-qc.md`

---
*Adapted from knowledge-work-plugins (bio-research/single-cell-rna-qc) for OpenClaw*
