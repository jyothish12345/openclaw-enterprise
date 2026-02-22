---
name: scientific-problem-selection
description: Select and frame scientific problems for research. Use when defining research questions, identifying gaps in literature, assessing feasibility, and planning experiments. Adapted for OpenClaw.
---

# Scientific Problem Selection (OpenClaw Adapted)

Select and frame scientific problems for impactful research.

## When to Use
- Defining research questions
- Identifying literature gaps
- Assessing project feasibility
- Planning experiments
- Evaluating potential impact

## Problem Selection Framework

### 1. Identify the Gap
- **Literature Review:** What is known? What is unknown?
- **Contradictions:** Where do existing studies disagree?
- **Limitations:** What methods/data were previously unavailable?

### 2. Assess Impact & Feasibility
- **Impact:** Does this solve a significant problem? (Health, Climate, Tech)
- **Feasibility:** Do we have the data, tools, and expertise?
- **Novelty:** Is this a new approach or question?

### 3. Frame the Question (PICO)
- **Population:** Who/what are we studying? (Cells, Patients, Markets)
- **Intervention:** What are we testing/changing? (Drug, Feature, Policy)
- **Comparison:** Against what control or baseline? (Placebo, Old Method)
- **Outcome:** What will we measure? (Survival, Revenue, Accuracy)

## Project Proposal Template

```markdown
# Research Proposal: [Title]

**Date:** [YYYY-MM-DD]
**Author:** [Name]

## Problem Statement
[Clear description of the gap or problem]

## Research Question
[Specific, measurable question]

## Hypothesis
[Predicted outcome based on theory]

## Methodology
1. **Data Source:** [Dataset / Experiment]
2. **Analysis:** [Statistical / ML Method]
3. **Tools:** [Software / Libraries]

## Expected Impact
- [Scientific contribution]
- [Practical application]

## Risks & Mitigation
- **Risk 1:** [Description] -> [Mitigation]
- **Risk 2:** [Description] -> [Mitigation]
```

## Using with OpenClaw

**Workflow:**
1. Use `web_search` for literature review.
2. Use `scientific-problem-selection` to frame question.
3. Draft proposal using template.
4. Save to `/memory/research/proposals/`.

## File Storage
`/memory/research/proposals/[project-name].md`

---
*Adapted from knowledge-work-plugins (bio-research/scientific-problem-selection) for OpenClaw*
