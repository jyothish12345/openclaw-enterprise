---
name: customer-research
description: Research customer questions by searching across sources and synthesize confidence-scored answers. Use when investigating customer questions, building account context, or researching solutions. Works with web_search, memory_search, and file reading. Adapted for OpenClaw.
---

# Customer Research (OpenClaw Adapted)

Conduct multi-source research to answer customer questions, investigate account contexts, and build comprehensive understanding. Prioritize authoritative sources and communicate confidence levels clearly.

## When to Use
- Customer asks a question you need to investigate
- Building background on a customer situation
- Need account context before responding
- Researching solutions or workarounds
- Verifying information before sharing with customers

## Research Process

### Step 1: Understand the Question
Before searching, clarify:
- Is this factual with a definitive answer?
- Is this contextual requiring multiple perspectives?
- Is this exploratory with undefined scope?
- Who is the audience? (internal team, customer, leadership)

### Step 2: Plan Search Strategy
Map question to likely sources:
- **Product capability** → documentation, knowledge base, web search
- **Customer context** → memory files, notes, prior conversations
- **Process/policy** → internal docs, runbooks
- **Technical** → documentation, support history
- **Market/competitive** → web research, news

### Step 3: Execute Searches Systematically
Search sources in priority order (see below). Cross-reference across sources.

### Step 4: Synthesize and Validate
Combine findings, check for contradictions, assess confidence.

### Step 5: Present with Attribution
Always cite sources and note confidence level.

## Source Prioritization (OpenClaw)

### Tier 1 — Official Internal Sources (Highest Confidence)
**Sources:**
- Product documentation (files in workspace or web)
- Knowledge base files (`memory/knowledge-base/`)
- Policy documents (`memory/policies/`)
- Official product specs

**Access:** `read` files, `web_search` for official docs
**Confidence:** **High** (unless outdated — check dates)

### Tier 2 — Organizational Context (Medium-High)
**Sources:**
- Account notes (`memory/customers/[customer-name].md`)
- Support history (`memory/tickets/`)
- Project docs (`memory/projects/`)
- Meeting notes (`memory/notes/meetings/`)

**Access:** `memory_search`, `read` specific files
**Confidence:** **Medium-High** (may be subjective or incomplete)

### Tier 3 — Team Communications (Medium)
**Sources:**
- Prior chat logs (if saved in workspace)
- Email threads (if documented)
- Calendar notes (if captured)

**Access:** `memory_search`, `read` message logs
**Confidence:** **Medium** (informal, may lack context)

### Tier 4 — External Sources (Low-Medium)
**Sources:**
- Official websites (company, product pages)
- Blog posts, documentation sites
- Community forums, Stack Overflow
- News and industry resources

**Access:** `web_search`, `web_fetch`
**Confidence:** **Low-Medium** (may not reflect specific situation)

### Tier 5 — Inferred or Analogical (Low)
**Sources:**
- Similar situations from memory
- Analogous customer cases
- General best practices

**Access:** `memory_search` with broad queries
**Confidence:** **Low** (clearly flag as inference, not fact)

## Confidence Levels

### High Confidence
- Answer confirmed by official documentation
- Multiple sources corroborate
- Information is current (verified recently)
- **Output:** "I'm confident this is accurate based on [source]."

### Medium Confidence
- Answer found in informal sources
- Single source without corroboration
- Information may be slightly outdated but likely valid
- **Output:** "Based on [source], this appears to be the case, but I'd recommend confirming with [team/person]."

### Low Confidence
- Answer inferred from related information
- Sources are outdated or potentially unreliable
- Contradictory information found
- **Output:** "I wasn't able to find a definitive answer. Based on [context], my assessment is [answer], but this should be verified."

### Unable to Determine
- No relevant information found
- Question requires specialized knowledge not available
- **Output:** "I couldn't find information about this. I recommend reaching out to [suggested expert/team]."

## Handling Contradictions

When sources disagree:
1. Note the contradiction explicitly
2. Identify which source is more authoritative or recent
3. Present both perspectives with context
4. Recommend how to resolve
5. If going to customer: use most conservative answer until resolved

## Answer Synthesis Format

```markdown
**Direct Answer:** [Bottom-line answer — lead with this]

**Confidence:** [High / Medium / Low]

**Supporting Evidence:**
- [Source 1]: [What it says]
- [Source 2]: [What it says — corroborates or adds nuance]

**Caveats:**
- [Any limitations or conditions on the answer]
- [Anything that might change the answer in specific contexts]

**Recommendation:**
- [Whether this is ready to share with customers]
- [Any verification steps recommended]
```

## When to Escalate vs. Answer Directly

### Answer Directly When:
- Official documentation clearly addresses it
- Multiple reliable sources corroborate
- Question is factual and non-sensitive
- Doesn't involve commitments, timelines, or pricing
- You've answered similar questions before with confirmed accuracy

### Escalate or Verify When:
- Answer involves product roadmap commitments
- Pricing, legal terms, or contract-specific questions
- Security, compliance, or data handling
- Could set precedent or create expectations
- Found contradictory information
- Requires specialized expertise you don't have
- Customer is at risk and wrong answer could worsen situation

## Research with OpenClaw Tools

### web_search
Use for:
- Product documentation searches
- Official company information
- Industry standards and best practices
- Competitor information
- Public knowledge base articles

```
web_search: "[product name] [specific feature] documentation"
web_search: "[error message]" troubleshooting
web_search: "[question topic]" best practices
```

### memory_search
Use for:
- Prior customer interactions
- Similar issues resolved before
- Internal knowledge captured
- Project context and decisions

```
memory_search: "customer issue [topic]"
memory_search: "how we handled [situation]"
```

### read
Use for:
- Specific documentation files
- Customer account files
- Knowledge base articles
- Policy documents

```
read: /Users/joy/.openclaw/workspace/memory/knowledge-base/[topic].md
read: /Users/joy/.openclaw/workspace/memory/customers/[customer].md
```

### web_fetch
Use for:
- Extracting content from specific URLs
- Reading official documentation pages
- Getting full article/doc content

```
web_fetch: https://docs.example.com/feature/details
```

## Documentation for Knowledge Base

After completing research, capture knowledge for future use.

### When to Document:
- Question has come up before or likely will again
- Research took significant effort
- Answer required synthesizing multiple sources
- Answer corrects a common misunderstanding
- Answer involves nuance that's easy to get wrong

### Documentation Format:
```markdown
## [Question/Topic]

**Last Verified:** [YYYY-MM-DD]
**Confidence:** [High/Medium/Low]

### Answer
[Clear, direct answer]

### Details
[Supporting detail, context, and nuance]

### Sources
- [Source 1]: [URL or file path]
- [Source 2]: [URL or file path]

### Related Questions
- [Other questions this might help answer]

### Review Notes
[When to re-verify, what might change this answer]
```

**Save to:** `/Users/joy/.openclaw/workspace/memory/knowledge-base/[topic].md`

## Knowledge Base Hygiene

- Date-stamp all entries
- Flag entries referencing specific product versions
- Review and update entries quarterly
- Archive entries no longer relevant
- Tag entries for searchability

## File Storage

Research outputs can be saved to:
- `/memory/research/customer-questions/YYYY-MM-DD-[topic].md`
- `/memory/knowledge-base/[category]/[topic].md`
- `/memory/customers/[customer-name]/research-[date].md`

## Example Usage

**User:** "Customer is asking if we support SSO with Okta"

**What I'll do:**
1. `web_search: "[product name] Okta SSO integration"`
2. `memory_search: "SSO Okta"`
3. `read` any relevant docs in workspace
4. Synthesize findings with confidence level
5. Provide direct answer with sources
6. Suggest whether to verify before responding

## Best Practices

1. **Start systematic** — Don't skip tiers even if you think you know the answer
2. **Cross-reference** — Findings across multiple sources
3. **Be transparent** — About confidence levels
4. **Never present uncertainty as fact**
5. **Err on side of verification** when sharing with customers
6. **Document for team benefit**
7. **Flag knowledge gaps** for future documentation

## Related OpenClaw Skills

- **ticket-triage** — Categorize issues before researching
- **response-drafting** — Draft customer responses after research
- **note-taking** — Document research findings
- **task-management** — Track follow-up research tasks

---
*Adapted from knowledge-work-plugins (customer-support/customer-research) for OpenClaw*
