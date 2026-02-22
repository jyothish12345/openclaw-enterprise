---
name: source-management
description: Organize and track information sources for research and synthesis. Track source reliability, manage citations, and maintain source inventory. Use when conducting multi-source research or building knowledge bases. Adapted for OpenClaw.
---

# Source Management (OpenClaw Adapted)

Organize and track information sources for research. Manage citations, assess source reliability, and maintain source inventory.

## When to Use
- Conducting multi-source research
- Building knowledge bases
- Tracking where information comes from
- Assessing source reliability
- Managing citation trail
- Synthesizing information from multiple sources

## Source Types (OpenClaw Context)

### Web Sources
**Accessed via:** `web_search`, `web_fetch`

**Characteristics:**
- Public information
- May become outdated
- Varying reliability
- Need to capture at point in time

**Best for:**
- External information
- Public announcements
- Industry research
- Competitive intelligence

### Memory Sources
**Accessed via:** `memory_search`, `read`

**Characteristics:**
- Internal context
- Under your control
- Can be updated
- Known provenance

**Best for:**
- Past decisions
- Internal notes
- Project context
- Team knowledge

### File Sources
**Accessed via:** `read`

**Characteristics:**
- Structured documents
- Versioned (if using git)
- Authoritative within workspace
- Can reference specific locations

**Best for:**
- Official documentation
- Specifications
- Policies
- Templates

## Source Reliability Assessment

### Reliability Tiers

**Tier 1 — High Reliability:**
- Official documentation (yours or vendor's)
- Primary sources (original announcements, research)
- Authoritative industry sources
- Verified data

**Tier 2 — Medium Reliability:**
- Reputable news sources
- Industry analyst reports
- Community knowledge bases
- Well-maintained blogs

**Tier 3 — Low Reliability:**
- Forums and discussions
- Unverified claims
- Outdated content
- Anonymous sources

**Tier 4 — Unverified:**
- Social media posts
- Rumors
- Speculation
- Second-hand information

### Assessing Web Sources

**Check:**
- Author credentials
- Publication date (freshness)
- Source domain reputation
- Citations provided
- Bias indicators
- Consistency with other sources

**Red flags:**
- No author attribution
- Very old content presented as current
- No sources cited
- Extreme claims without evidence
- Commercial bias undisclosed

## Source Tracking System

### Source Inventory Template

```markdown
# Source Inventory: [Topic/Project]

## Web Sources

### [Source Name]
- **URL:** [Link]
- **Type:** [Official docs / News / Blog / Forum]
- **Accessed:** [YYYY-MM-DD]
- **Reliability:** [High / Medium / Low]
- **Key Information:** [What this source provides]
- **Last Updated:** [When source was last updated]
- **Notes:** [Bias, limitations, context]

## Memory Sources

### [Note/Document Name]
- **Path:** [File path in workspace]
- **Created:** [YYYY-MM-DD]
- **Author:** [Who created it]
- **Topic:** [What it covers]
- **Reliability:** [First-hand / Second-hand / Synthesized]

## Citations Referenced

- [Citation 1]
- [Citation 2]
```

### Quick Source Log

For rapid research, maintain a simple log:

```markdown
# Research Log: [Topic]

**[Date]** — [Source name/URL]
- [Key finding]
- Reliability: [H/M/L]

**[Date]** — [Source name/URL]
- [Key finding]
- Reliability: [H/M/L]
```

## Citation Management

### Citation Format

**Web sources:**
```
[Source Name]: [Title/Description] ([URL]), accessed [Date]
```

**Example:**
```
Stripe Documentation: API Authentication Guide
(https://stripe.com/docs/api/authentication), accessed 2026-02-14
```

**Memory sources:**
```
[Document Name] ([Path]), last modified [Date]
```

**Example:**
```
API Migration Notes (/memory/projects/api-migration.md), last modified 2026-02-10
```

### Inline Citations

When synthesizing information:

```markdown
The new API feature supports OAuth 2.0 authentication [1].
Implementation requires updating the client library [2].

Sources:
[1] Vendor Documentation, accessed 2026-02-14
[2] Internal spec (/memory/specs/api-update.md)
```

## Source Priority by Query Type

### For Factual Questions
1. Official documentation (high authority)
2. Primary sources
3. Your workspace files
4. Reputable secondary sources
5. Community sources

### For Current Status
1. Recent memory notes (your latest info)
2. Web search (latest public info)
3. Workspace files (may be outdated)

### For Historical Context
1. Memory search (your historical records)
2. Workspace files (timestamped docs)
3. Web search with date filters

## Managing Source Freshness

### Freshness Indicators

| Age | Relevance for... |
|-----|-----------------|
| <1 week | Current status, recent decisions |
| 1-4 weeks | Recent context, trends |
| 1-3 months | Background, established facts |
| 3-6 months | Historical context |
| >6 months | Verify before using for current decisions |

### Updating Sources

**For memory sources:**
- Note when information was captured
- Update when new information available
- Archive outdated versions
- Link to newer versions

**For web sources:**
- Re-check periodically for updates
- Note if source is no longer available
- Capture snapshots of critical information
- Watch for content drift

## Source Conflict Resolution

When sources disagree:

1. **Check dates** — More recent usually more accurate
2. **Check authority** — Official > unofficial
3. **Check specificity** — Specific > general
4. **Note the conflict** — Document both perspectives
5. **Investigate further** — If critical, find tiebreaker

### Conflict Documentation

```markdown
## Conflicting Information: [Topic]

**Source A** ([Date], [Reliability])
- Says: [Claim A]

**Source B** ([Date], [Reliability])
- Says: [Claim B]

**Resolution:**
- [How conflict was resolved]
- [Which source to trust and why]
- OR [Both valid in different contexts]
```

## File Storage

Source inventories can be saved to:
- `/memory/sources/[topic]-sources.md`
- `/memory/research/[project]/source-inventory.md`
- `/memory/citations/[topic]-citations.md`

## Using with OpenClaw Skills

**Combine with:**
- **search-strategy** — Plan which sources to query
- **knowledge-synthesis** — Combine sources into answer
- **customer-research** — Track research sources
- **account-research** — Manage research citations

## Best Practices

1. **Track as you go** — Don't try to remember sources later
2. **Note reliability** — Helps with future synthesis
3. **Capture timestamps** — When was this true?
4. **Link related sources** — Show connections
5. **Update regularly** — Keep inventory current
6. **Be skeptical** — Verify before trusting
7. **Cite your sources** — Build credibility

## Quick Workflow

**During research:**
1. Note each source as you find it
2. Rate reliability immediately
3. Capture key quote or finding
4. Note the date

**After research:**
1. Review all sources
2. Identify most reliable
3. Flag conflicts
4. Create citation list
5. Save source inventory

---
*Adapted from knowledge-work-plugins (enterprise-search/source-management) for OpenClaw*
