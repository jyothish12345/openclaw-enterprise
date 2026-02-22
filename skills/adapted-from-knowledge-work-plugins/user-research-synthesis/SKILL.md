---
name: user-research-synthesis
description: Synthesize qualitative and quantitative user research into structured insights. Use when analyzing interview notes, survey responses, or behavioral data to identify themes, build personas, or prioritize opportunities. Adapted for OpenClaw.
---

# User Research Synthesis (OpenClaw Adapted)

Turn raw research data into structured insights that drive product decisions. Synthesize interviews, surveys, usability tests, support data, and behavioral analytics.

## When to Use
- Analyzing interview notes or transcripts
- Processing survey responses
- Synthesizing support ticket patterns
- Combining qualitative and quantitative data
- Building evidence-based personas
- Identifying opportunity areas from research

## Research Synthesis Methodology

### Thematic Analysis

Core method for qualitative research:

1. **Familiarization** — Read through all data, get overall landscape
2. **Initial coding** — Tag each observation, quote, data point with descriptive codes
3. **Theme development** — Group related codes into candidate themes
4. **Theme review** — Check themes against data for evidence and distinctness
5. **Theme refinement** — Define and name each theme clearly (1-2 sentence description)
6. **Report** — Write up themes as findings with supporting evidence

### Affinity Mapping

Collaborative method for grouping observations:

1. **Capture observations** — One distinct observation per note
2. **Cluster** — Group related notes by similarity (let categories emerge)
3. **Label clusters** — Descriptive name for each cluster
4. **Organize clusters** — Arrange into higher-level groups if patterns emerge
5. **Identify themes** — Clusters reveal key themes

**Tips:**
- One observation per note
- Move notes freely between clusters
- Split large clusters (probably contains multiple themes)
- Outliers are interesting — don't force into clusters
- Process builds shared understanding

### Triangulation

Strengthen findings by combining multiple data sources:

- **Methodological**: Same question, different methods (interviews + survey + analytics)
- **Source**: Same method, different participants/segments
- **Temporal**: Same observation at different points in time

Finding supported by multiple sources/methods is much stronger.

## Interview Note Analysis

### Extracting Insights

For each interview, identify:

**Observations:**
- What did participant describe doing, experiencing, feeling?
- Distinguish behaviors (what they do) vs. attitudes (what they think/feel)
- Note context: when, where, with whom, how often
- Flag workarounds (unmet needs in disguise)

**Direct quotes:**
- Verbatim statements that powerfully illustrate a point
- Specific and vivid, not generic
- Attribute to participant type: "Enterprise admin, 200-person team" not name
- Quote is evidence, not finding (interpretation is the finding)

**Behaviors vs stated preferences:**
- What people DO often differs from what they SAY
- Behavioral observations stronger than stated preferences
- Note contradictions between stated wants and actual behavior

**Signals of intensity:**
- Emotional language (frustration, excitement, resignation)
- Frequency (how often they encounter this)
- Workarounds (effort spent working around problem)
- Impact (consequence when things go wrong)

### Cross-Interview Analysis

After processing individual interviews:
- **Patterns**: Which observations appear across multiple participants?
- **Frequency**: How many mentioned each theme?
- **Segments**: Do different user types have different patterns?
- **Contradictions**: Where do participants disagree? (reveals meaningful segments)
- **Surprises**: What challenged prior assumptions?

## Survey Data Interpretation

### Quantitative Analysis

- **Response rate**: How representative? Low rates may introduce bias
- **Distribution**: Look at shape, not just averages (bimodal vs. normal)
- **Segmentation**: Break down by user segment (aggregates mask differences)
- **Statistical significance**: Be cautious with small samples
- **Benchmark comparison**: Compare to industry benchmarks or previous surveys

### Open-Ended Response Analysis

- Treat like mini interview notes
- Code each response with themes
- Count frequency of themes
- Pull representative quotes for each theme
- Look for themes not in structured questions (things you didn't think to ask)

### Common Mistakes

❌ Reporting averages without distributions
❌ Ignoring non-response bias
❌ Over-interpreting small differences
❌ Treating Likert scales as interval data
❌ Confusing correlation with causation

## Combining Qualitative and Quantitative

### The Qual-Quant Feedback Loop

- **Qualitative first**: Interviews reveal WHAT and WHY (generate hypotheses)
- **Quantitative validation**: Surveys/analytics reveal HOW MUCH and HOW MANY (test hypotheses)
- **Qualitative deep-dive**: Return to understand unexpected quantitative findings

### Integration Strategies

- Use quantitative to prioritize qualitative findings
- Use qualitative to explain quantitative anomalies
- Present combined evidence: "47% report difficulty (survey), interviews reveal this is because Y (qualitative)"

### When Sources Disagree

- Different stories = signal, not error
- Check if due to different populations
- Check if stated preferences differ from actual behavior
- Check if quantitative question captured what you think
- Report disagreement honestly and investigate further

## Persona Development

### Building Evidence-Based Personas

Personas should emerge from research data, not imagination:

1. **Identify behavioral patterns** — Clusters of similar behaviors, goals, contexts
2. **Define distinguishing variables** — What differentiates clusters? (company size, skill, usage, use case)
3. **Create persona profiles** — For each cluster
4. **Validate with data** — Can you size segments using quantitative data?

### Persona Template

```markdown
## [Persona Name] — [One-line description]

### Who they are
- Role, company type/size, experience level
- How they found/started using product

### What they're trying to accomplish
- Primary goals and jobs to be done
- How they measure success

### How they use the product
- Frequency and depth of usage
- Key workflows and features used
- Tools they use alongside

### Key pain points
- Top 3 frustrations or unmet needs
- Workarounds they've developed

### What they value
- What matters most in a solution
- What would make them switch or churn

### Representative quotes
- 2-3 verbatim quotes capturing their perspective
```

### Common Mistakes

❌ Demographic personas (age/gender vs. behavior)
❌ Too many personas (3-5 is optimal)
❌ Fictional personas (assumptions vs. data)
❌ Static personas (never updated)
❌ Personas without implications (doesn't change decisions)

## Opportunity Sizing

### Estimating Opportunity Size

For each finding or opportunity:

- **Addressable users**: How many could benefit? (use analytics, survey, market data)
- **Frequency**: How often encountered? (daily, weekly, monthly, one-time)
- **Severity**: How much impact? (blocker, significant friction, minor annoyance)
- **Willingness to pay**: Would this drive upgrades, retention, acquisition?

### Opportunity Scoring

Score opportunities:

- **Impact**: (Users affected) × (Frequency) × (Severity) = impact score
- **Evidence strength**: How confident? (multiple sources > single, behavioral > stated)
- **Strategic alignment**: Aligns with company strategy/product vision?
- **Feasibility**: Can we address this? (technical, resources, time)

### Presenting Opportunity Sizing

- Be transparent about assumptions and confidence
- Show the math: "Based on support tickets, ~2,000 users/month encounter this. Interviews suggest 60% consider it a blocker."
- Use ranges: "1,500-2,500 users monthly" not "2,137 users"
- Compare opportunities for relative ranking

## File Storage

Research synthesis can be saved to:
- `/memory/research/synthesis/YYYY-MM-DD-[topic].md`
- `/memory/personas/[persona-name].md`
- `/memory/research/opportunities/[opportunity-area].md`

## Using with OpenClaw Tools

### Data Sources

**From files:**
```
read: interview notes from workspace
read: survey results exported as text
read: support ticket summaries
```

**From memory:**
```
memory_search: "user feedback [topic]"
memory_search: "customer interview notes"
```

**From web (if needed):**
```
web_search: "user research best practices [topic]"
web_search: "[industry] user behavior patterns"
```

### Synthesis Process

1. **Gather data** — Read all interview notes, survey results
2. **Code observations** — Tag themes as you read
3. **Group themes** — Cluster similar observations
4. **Count patterns** — How many sources mention each theme
5. **Write findings** — Document themes with evidence
6. **Build personas** — If behavioral patterns emerge
7. **Size opportunities** — Estimate impact and feasibility

## Best Practices

1. **Let themes emerge** — Don't force predetermined categories
2. **Count frequency** — How many participants mentioned this
3. **Quote strategically** — Use quotes to illustrate, not substitute for analysis
4. **Distinguish behaviors from attitudes** — What people do > what they say
5. **Surface contradictions** — Don't hide disagreements
6. **Be transparent about confidence** — Multiple sources > single source
7. **Make it actionable** — Research should inform decisions

## Output Templates

### Theme Summary
```markdown
## Theme: [Theme Name]

**Description:** [1-2 sentences explaining the theme]

**Evidence:**
- [Participant type 1]: "[Quote or observation]"
- [Participant type 2]: "[Quote or observation]"
- [Data point]: [Quantitative evidence if available]

**Frequency:** [X of Y participants mentioned this]

**Implications:** [What this means for product decisions]
```

### Opportunity Brief
```markdown
## Opportunity: [Opportunity Name]

**Problem:** [What pain point or unmet need]

**Evidence:**
- Qualitative: [Findings from interviews]
- Quantitative: [Survey data or analytics]

**Size:**
- Addressable users: [Estimate]
- Frequency: [How often encountered]
- Severity: [Impact level]

**Impact Score:** [Calculation]

**Recommendation:** [Pursue / Investigate further / Deprioritize]
```

## Related OpenClaw Skills

- **customer-research** — Research questions with confidence scoring
- **feature-spec** — Turn insights into product requirements
- **note-taking** — Capture research notes
- **knowledge-synthesis** — Combine multiple research sources

---
*Adapted from knowledge-work-plugins (product-management/user-research-synthesis) for OpenClaw*
