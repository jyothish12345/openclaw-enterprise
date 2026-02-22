---
name: search-strategy
description: Query decomposition and multi-source search orchestration. Use when planning comprehensive searches, combining web_search with memory_search, or synthesizing information from multiple sources. Adapted for OpenClaw.
---

# Search Strategy (OpenClaw Adapted)

Transform natural language questions into targeted searches across multiple sources (web, memory, files) and produce ranked, synthesized results.

## When to Use
- Planning comprehensive information gathering
- Combining web_search with memory_search effectively
- Researching topics across multiple sources
- Finding information when simple search isn't enough
- Answering complex questions requiring multiple sources

## The Goal

**Transform this:**
```
"What do we know about the new API feature?"
```

**Into targeted searches:**
```
web_search: "new API feature announcement"
memory_search: "API feature"
read: workspace docs about API
```

**Then synthesize into coherent answer.**

## Query Decomposition

### Step 1: Identify Query Type

| Query Type | Example | Strategy |
|-----------|---------|----------|
| **Decision** | "What did we decide about X?" | Prioritize memory (notes, docs), look for conclusion signals |
| **Status** | "What's the status of Project Y?" | Recent memory, web for announcements |
| **Document** | "Where's the spec for Z?" | Search workspace files, memory notes |
| **Person** | "Who's working on X?" | Memory search for assignments, notes |
| **Factual** | "What's our policy on X?" | Official docs, then confirmatory sources |
| **Temporal** | "When did X happen?" | Search with date context |
| **Exploratory** | "What do we know about X?" | Broad search across all sources |

### Step 2: Extract Search Components

From the query, extract:
- **Keywords**: Core terms that must appear
- **Entities**: People, projects, teams, tools
- **Intent signals**: Decision words, status words, temporal markers
- **Constraints**: Time ranges, source hints
- **Negations**: Things to exclude

### Step 3: Generate Sub-Queries Per Source

**For web_search:**
- Use for: External information, public announcements, general knowledge
- Strategy: Specific keywords, company names, product names
- Example: `web_search: "Company X new API features 2026"`

**For memory_search:**
- Use for: Internal context, past decisions, notes, docs
- Strategy: Conceptual queries, topic keywords
- Example: `memory_search: "API feature decision"`

**For read:**
- Use for: Specific known documents
- Strategy: Target known file paths
- Example: `read: /workspace/docs/api-spec.md`

## Source-Specific Query Translation

### web_search

**Semantic (natural language):**
```
web_search: "What is the status of project X?"
```

**Keyword (specific terms):**
```
web_search: "project X status update 2026"
web_search: "project X announcement"
web_search: "[Company] project X"
```

**Advanced:**
```
web_search: "project X" site:company.com
web_search: "project X" after:2026-01-01
```

### memory_search

**Conceptual:**
```
memory_search: "project decision rationale"
```

**Specific:**
```
memory_search: "project X timeline"
memory_search: "meeting notes project X"
```

### read

**Direct file access:**
```
read: /Users/joy/.openclaw/workspace/memory/projects/project-x.md
read: /Users/joy/.openclaw/workspace/memory/notes/2026-02-01-meeting.md
```

## Result Ranking

### Relevance Scoring

Score each result on these factors:

| Factor | Decision Query | Status Query | Document Query | Factual Query |
|--------|---------------|--------------|----------------|---------------|
| Keyword match | High | Medium | High | High |
| Freshness | High | Very High | Medium | Low |
| Authority | Medium | Low | High | Very High |
| Completeness | Medium | High | Low | Medium |

### Authority Hierarchy

**For factual/policy questions:**
```
Official docs > Workspace files > Web sources > Memory notes
```

**For "what happened" / decision questions:**
```
Memory notes > Workspace docs > Web sources
```

**For status questions:**
```
Recent memory > Web sources > Workspace docs
```

## Handling Ambiguity

When a query is ambiguous, ask focused clarifying questions:

```
Ambiguous: "search for the migration"
→ "I found references to a few migrations:
   1. Database migration (Project Phoenix)
   2. Cloud migration (AWS → GCP)
   3. Email migration
   Which are you looking for?"
```

**Only ask when:**
- Genuinely distinct interpretations exist
- Would produce very different results
- Significantly affects which sources to search

**Don't ask when:**
- Query is clear enough for useful results
- Minor ambiguity can be resolved by returning multiple interpretations

## Fallback Strategies

When sources don't yield results:

1. **web_search returns nothing**: Try broader keywords, remove date constraints, try alternate phrasings
2. **memory_search returns nothing**: Try broader concepts, check different time periods
3. **read fails**: Check file exists, try related files, search memory for references
4. **All sources empty**: Suggest query modifications to user

### Query Broadening

If initial queries return too few results:
```
Original: "PostgreSQL migration Q2 timeline decision"
Broader:  "PostgreSQL migration"
Broader:  "database migration"
Broadest: "migration"
```

Remove constraints in this order:
1. Date filters
2. Source/location filters
3. Less important keywords
4. Keep only core entity/topic terms

## Parallel Execution Strategy

**For OpenClaw:**
```
[User query]
     ↓ decompose
Execute in sequence (OpenClaw tools are synchronous):
1. web_search: [external info]
2. memory_search: [internal context]
3. read: [specific files]
     ↓
[Merge + Rank + Deduplicate]
     ↓
[Synthesized answer]
```

## Practical Example

**User query:** "What do we know about the new authentication feature?"

**Strategy:**
```
1. web_search: "authentication feature [product name] 2026"
   → Get public announcements, blog posts

2. memory_search: "authentication feature"
   → Get internal notes, decisions, discussions

3. read: Check if there's a spec file
   → /workspace/memory/specs/auth-feature.md

4. Synthesize:
   - Public info: What was announced
   - Internal context: Why we built it, how
   - Spec details: Technical approach
   - Combined answer with sources cited
```

## File Storage

Search strategies and synthesized results can be saved to:
- `/memory/research/[topic]-search-results.md`
- `/memory/search-strategies/[query-type].md`

## Best Practices

1. **Start with query classification** — Determines search strategy
2. **Use multiple sources** — Web + memory + files for comprehensive coverage
3. **Adapt queries per source** — Different syntax/approach for each
4. **Rank by relevance** — Not just chronological
5. **Handle ambiguity explicitly** — Ask when needed
6. **Broaden if needed** — Have fallback strategies
7. **Always synthesize** — Don't just dump raw results

## Using with OpenClaw Tools

### Basic Pattern
```
1. Classify query type
2. Generate source-specific queries
3. Execute web_search
4. Execute memory_search
5. Execute read (if specific files known)
6. Rank and deduplicate results
7. Synthesize into coherent answer
8. Attribute sources
```

### Advanced Pattern (with knowledge-synthesis skill)
```
1. Use search-strategy to plan queries
2. Execute all searches
3. Use knowledge-synthesis to combine results
4. Present final synthesized answer with confidence levels
```

## Related OpenClaw Skills

- **knowledge-synthesis** — Combine and deduplicate search results
- **customer-research** — Research with confidence scoring
- **account-research** — Multi-source company research

---
*Adapted from knowledge-work-plugins (enterprise-search/search-strategy) for OpenClaw*
