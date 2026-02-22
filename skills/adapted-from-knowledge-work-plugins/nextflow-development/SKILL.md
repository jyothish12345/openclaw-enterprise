---
name: nextflow-development
description: Develop and orchestrate scientific pipelines using Nextflow. Use when building reproducible workflows, managing containerized tasks, or scaling analysis on cloud/cluster infrastructure. Adapted for OpenClaw.
---

# Scientific Pipeline Management (Nextflow)

Build, deploy, and scale reproducible scientific workflows.

## When to Use
- Building complex data pipelines
- Ensuring reproducibility (containerization)
- Scaling analysis (Cloud / HPC)
- Managing task dependencies
- Running bioinformatics workflows (nf-core)

## Nextflow Concepts

### 1. Channels (Data Flow)
- Asynchronous streams of data
- Queue-like behavior (FIFO)
- **Input:** `Channel.fromPath()`, `Channel.value()`
- **Output:** Process results feed new channels.

### 2. Processes (Tasks)
- Independent execution blocks (Bash scripts)
- Define inputs, outputs, and scripts.
- **Directives:** `cpus`, `memory`, `container`, `publishDir`

### 3. Workflow (Logic)
- Connect processes via channels.
- Use operators: `map`, `filter`, `mix`, `collect`, `join`.
- Define the DAG (Directed Acyclic Graph).

## Pipeline Template (DSL2)

```nextflow
nextflow.enable.dsl=2

// Parameters
params.input = "data/*.fastq.gz"
params.outdir = "results"

// Process Definition
process FASTQC {
    publishDir "${params.outdir}/fastqc", mode: 'copy'
    container 'quay.io/biocontainers/fastqc:0.11.9--0'

    input:
    tuple val(sample_id), path(reads)

    output:
    path "*_fastqc.{zip,html}", emit: qc_files

    script:
    """
    fastqc -q $reads
    """
}

// Workflow Definition
workflow {
    input_ch = Channel.fromFilePairs(params.input)
    FASTQC(input_ch)
}
```

## Configuration (nextflow.config)

```groovy
process {
    executor = 'slurm' // or 'local', 'awsbatch', 'k8s'
    cpus = 2
    memory = '4 GB'
    container = 'docker://ubuntu:latest'
}

profiles {
    standard { process.executor = 'local' }
    cluster { process.executor = 'slurm' }
    cloud { process.executor = 'google-lifesciences' }
}
```

## Using with OpenClaw

**Workflow:**
1. Define workflow logic (DSL2).
2. Create `main.nf` and `nextflow.config`.
3. Run: `nextflow run main.nf -profile standard`.
4. Monitor execution log.
5. Save pipeline definition to `/memory/research/pipelines/`.

## File Storage
`/memory/research/pipelines/[pipeline-name].nf`

---
*Adapted from knowledge-work-plugins (bio-research/nextflow-development) for OpenClaw*
