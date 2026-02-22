---
name: knowledge-synthesis
description: Combine search results from multiple sources into coherent, deduplicated answers with source attribution. Use when synthesizing research findings, combining multiple data sources, or creating comprehensive answers. Adapted for OpenClaw.
---

# Knowledge Synthesis (OpenClaw Adapted)

Transform raw search results from multiple sources into coherent, trustworthy answers with proper attribution and confidence scoring.

## When to Use
- Combining web_search results with memory_search findings
- Synthesizing information from multiple documents
- Creating comprehensive answers from scattered sources
- Deduplicating information across sources
- Building research summaries

## The Goal

**Transform this:**
```
web_search result: "Company announced new product feature"
memory_search result: "Notes from call: customer asked about this feature"
read result: "Internal doc mentions feature in roadmap"
```

**Into this:**
```
The new product feature was recently announced by the company. A customer had
previously inquired about this capability during our call last month, and it was
already on the internal roadmap at that time.

Sources:
- Web: Company announcement (Feb 2026)
- Memory: Customer call notes (Jan 2026)
- Workspace: Internal roadmap doc
```

## Deduplication

### Cross-Source Deduplication

The same information often appears in multiple places.

**Signals that results are about the same thing:**
- Same or very similar text content
- Same author/source
- Timestamps within short window (same day or adjacent)
- References to same entity (project, document, decision)
- One source references another

**How to merge:**
- Combine into single narrative item
- Cite all sources where it appeared
- Use most complete version as primary
- Add unique details from each source

### Deduplication Priority

When same information exists in multiple sources, prefer:
1. Most complete version (fullest context)
2. Most authoritative source (official doc > chat)
3. Most recent version (latest update wins)

### What NOT to Deduplicate

Keep as separate items when:
- Same topic but different conclusions
- Different people express different viewpoints
- Information evolved meaningfully between sources
- Different time periods represented

## Citation and Source Attribution

Every claim must be attributable to a source.

### Attribution Format

**Inline for direct references:**
```
Sarah confirmed the approach in her email. The design doc was
updated to reflect this (workspace: design-doc-v3.md).
```

**Source list at end:**
```
Sources:
- Web search: Company blog post (Feb 12, 2026)
- Memory: Meeting notes from Jan 2026
- Workspace: design-doc-v3.md (last modified Feb 2026)
```

### Attribution Rules

- Always name source type (web, memory, workspace file)
- Include specific location (URL, file path, doc name)
- Include date or relative time
- Include author when relevant
- Include document titles when available

## Confidence Levels

Not all results are equally trustworthy.

### Freshness

| Recency | Confidence Impact |
|---------|------------------|
| Today/yesterday | High confidence for current state |
| This week | Good confidence |
| This month | Moderate — things may have changed |
| Older than month | Lower — flag as potentially outdated |

### Authority

| Source Type | Authority Level |
|-------------|----------------|
| Official docs / knowledge base | Highest — curated, maintained |
| Workspace files (final versions) | High — intentionally saved |
| Web search (official sites) | High — public information |
| Memory notes | Moderate-high — may be incomplete |
| Web search (forums, discussions) | Lower — informal |
| Draft documents | Low — not finalized |

### Expressing Confidence

**High confidence (multiple fresh, authoritative sources agree):**
```
The team decided to use REST for the API redesign. [direct statement]
```

**Moderate confidence (single source or somewhat dated):**
```
Based on the discussion last month, the team was leaning toward REST.
This may have evolved since then.
```

**Low confidence (old data, informal source, or conflicting signals):**
```
I found a reference from three months ago, but couldn't find a formal
decision document. The information may be outdated.
```

### Conflicting Information

When sources disagree:
```
I found conflicting information:
- Web search (Jan 10) suggested GraphQL
- Memory notes (Jan 15) confirm REST
- Workspace doc (updated Jan 15) reflects REST

The most recent sources indicate REST was the final decision,
but earlier exploration considered GraphQL.
```

Always surface conflicts rather than silently picking one version.

## Summarization Strategies

### For Small Result Sets (1-5 results)

Present each result with context:
```
[Direct answer synthesized from results]

[Detail from source 1]
[Detail from source 2]

Sources: [full attribution]
```

### For Medium Result Sets (5-15 results)

Group by theme and summarize:
```
[Overall answer]

Theme 1: [summary of related results]
Theme 2: [summary of related results]

Key sources: [top 3-5 most relevant]
Full results: [count] items found
```

### For Large Result Sets (15+ results)

Provide high-level synthesis:
```
[Overall answer based on most relevant results]

Summary:
- [Key finding 1] (supported by N sources)
- [Key finding 2] (supported by N sources)

Top sources:
- [Most authoritative/relevant]
- [Second most relevant]

Found [total count] results across [source types].
Want me to dig deeper into any specific aspect?
```

### Summarization Rules

- Lead with the answer, not the search process
- Do not list raw results — synthesize into narrative
- Group related items from different sources
- Preserve important nuance and caveats
- Include enough detail for user to decide whether to dig deeper
- Always offer to provide more detail if result set was large

## Synthesis Workflow

```
[Raw results from all sources]
          ↓
[1. Deduplicate — merge same info from different sources]
          ↓
[2. Cluster — group related results by theme/topic]
          ↓
[3. Rank — order clusters by relevance to query]
          ↓
[4. Assess confidence — freshness × authority × agreement]
          ↓
[5. Synthesize — produce narrative answer with attribution]
          ↓
[6. Format — choose appropriate detail level]
          ↓
[Coherent answer with sources]
```

## Using with OpenClaw Tools

### Combining web_search + memory_search

```
Step 1: web_search for external information
Step 2: memory_search for internal context
Step 3: Deduplicate overlapping findings
Step 4: Synthesize into coherent answer
Step 5: Attribute sources clearly
```

### Combining read + web_search

```
Step 1: read specific workspace files
Step 2: web_search for additional context
Step 3: Compare and contrast findings
Step 4: Synthesize with confidence levels
Step 5: Note which source is more authoritative
```

### Example Usage

**User:** "What do we know about the new API feature?"

**What I'll do:**
```
1. web_search: "[company] API feature announcement"
2. memory_search: "API feature"
3. read: relevant workspace docs
4. Deduplicate findings
5. Synthesize with confidence scores
6. Present coherent answer with sources
```

## Anti-Patterns

**❌ Do NOT:**
- List results source by source ("From web: ... From memory: ...")
- Include irrelevant results just because they matched keyword
- Bury answer under methodology explanation
- Present conflicting info without flagging
- Omit source attribution
- Present uncertain info with same confidence as well-supported facts
- Summarize so aggressively that useful detail is lost

**✅ DO:**
- Lead with the answer
- Group by topic, not by source
- Flag confidence levels appropriately
- Surface conflicts explicitly
- Attribute all claims to sources
- Offer to go deeper when result sets are large

## File Storage

Synthesized research can be saved to:
- `/memory/research/synthesis/YYYY-MM-DD-[topic].md`
- `/memory/knowledge-base/[topic]-synthesis.md`

## Best Practices

1. **Always deduplicate** before presenting
2. **Group by theme** not by source type
3. **Lead with the answer** not the process
4. **Be explicit about confidence**
5. **Surface conflicts** don't hide them
6. **Cite your sources** every time
7. **Offer depth** when appropriate

## Related OpenClaw Skills

- **customer-research** — Research with confidence scoring
- **account-research** — Multi-source company research
- **note-taking** — Document synthesized findings

---
*Adapted from knowledge-work-plugins (enterprise-search/knowledge-synthesis) for OpenClaw*
