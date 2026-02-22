---
name: account-research
description: Research a company or person and get actionable sales intel. Uses web search to gather company overview, recent news, hiring signals, and key people. Works standalone. Trigger with "research [company]", "look up [person]", "intel on [prospect]", or "tell me about [company]". Adapted for OpenClaw.
---

# Account Research (OpenClaw Adapted)

Get a complete picture of any company or person before outreach. Uses web search to gather intelligence on companies, people, and opportunities.

## How It Works

**STANDALONE MODE (Web Search):**
✓ Company overview: what they do, size, industry
✓ Recent news: funding, leadership changes, announcements
✓ Hiring signals: open roles, growth indicators
✓ Key people: leadership team, decision makers
✓ Product/service: what they sell, who they serve

## Trigger Phrases
- "Research [company name]"
- "Look up [person] at [company]"
- "Intel on [prospect/company]"
- "Who is [name] at [company]"
- "Tell me about [company] before my call"
- "What do you know about [company]?"

## What I'll Do

1. **Run web searches** to gather information
2. **Synthesize findings** into actionable format
3. **Generate insights** for outreach approach
4. **Suggest talking points** based on research

## Output Format

```markdown
# Research: [Company or Person Name]

**Generated:** [Date]
**Sources:** Web Search

---

## Quick Take

[2-3 sentences: Who they are, why they might need you, best angle for outreach]

---

## Company Profile

| Field | Value |
|-------|-------|
| **Company** | [Name] |
| **Website** | [URL] |
| **Industry** | [Industry] |
| **Size** | [Employee count] |
| **Headquarters** | [Location] |
| **Founded** | [Year] |
| **Funding** | [Stage + amount if known] |

### What They Do
[1-2 sentence description of their business, product, and customers]

### Recent News
- **[Headline]** — [Date] — [Why it matters for your outreach]
- **[Headline]** — [Date] — [Why it matters]
- **[Headline]** — [Date] — [Why it matters]

### Hiring Signals
- [X] open roles in [Department]
- Notable: [Relevant roles like Engineering, Sales, AI/ML]
- Growth indicator: [Hiring velocity interpretation]

---

## Key People

### [Name] — [Title]
| Field | Detail |
|-------|--------|
| **LinkedIn** | [URL if found] |
| **Background** | [Prior companies, education] |
| **Tenure** | [Time at company] |

**Talking Points:**
- [Professional hook based on role]
- [Personal hook based on background]

[Repeat for relevant contacts]

---

## Tech Stack (If Found)

| Category | Tools |
|----------|-------|
| **Cloud** | [AWS, GCP, Azure, etc.] |
| **Data** | [Snowflake, Databricks, etc.] |
| **CRM** | [e.g. Salesforce, HubSpot] |
| **Other** | [Relevant tools mentioned] |

**Integration Opportunity:** [How your product fits with their stack]

---

## Qualification Signals

### Positive Signals ✅
- [Signal and evidence]
- [Signal and evidence]
- [Signal and evidence]

### Potential Concerns ⚠️
- [Concern and what to watch for]
- [Concern and what to watch for]

### Unknown (Ask in Discovery) ❓
- [Gap in understanding]
- [Gap in understanding]

---

## Recommended Approach

**Best Entry Point:** [Person and why]

**Opening Hook:** [What to lead with based on research]

**Discovery Questions:**
1. [Question about their situation]
2. [Question about pain points]
3. [Question about decision process]

---

## Sources
- [Source 1 with URL]
- [Source 2 with URL]
- [Source 3 with URL]
```

## Research Methods (OpenClaw Tools)

### Step 1: Parse the Request
Identify what to research:
- Company name → Company research
- Person + company → Person + company research
- Domain (acme.com) → Domain-based lookup

### Step 2: Web Search Strategy

**For Company Research:**
```
web_search: "[Company name]"
→ Get: Homepage, about page, description

web_search: "[Company name] news"
→ Get: Recent announcements, funding, leadership changes

web_search: "[Company name] funding"
→ Get: Investment history, investors, valuation

web_search: "[Company name] careers jobs"
→ Get: Open roles, hiring velocity, growth areas

web_search: "[Company name] product features"
→ Get: What they sell, target market

web_search: "[Company name] customers clients"
→ Get: Who they serve, market presence
```

**For Person Research:**
```
web_search: "[Person name] [Company] LinkedIn"
→ Get: Profile info, background, role

web_search: "[Person name] [Company]"
→ Get: News mentions, blog posts, interviews
```

### Step 3: Information Extraction

From search results, extract:
- **Basic info:** Description, size, location, founding year
- **News:** Last 90 days of announcements (funding, product launches, partnerships)
- **Leadership:** CEO, CTO, VP-level executives
- **Hiring:** Job postings count, departments hiring, seniority of roles
- **Tech mentions:** Tools/platforms mentioned in job descriptions or tech blogs
- **Customers:** Case studies, testimonials, target segments

### Step 4: Synthesis & Insights

Generate actionable intelligence:
- **Quick take:** Summary + why they might need you
- **Qualification signals:** What's promising vs. concerning
- **Talking points:** Personalized hooks for outreach
- **Recommended approach:** Who to contact and how to message

## Research Variations

### Quick Company Overview
Just need basics? Say: "Quick overview of [company]"

Output:
- What they do (1 sentence)
- Size + industry
- 1 piece of recent news
- 1 talking point for outreach

### Person-Focused Research
"Who is [name] at [company]?"

Output:
- Background & career history
- Role & responsibilities
- Talking points for outreach
- Estimated seniority

### Pre-Meeting Research
"Research [company] before my 2pm call"

Output:
- Recent news (last 30 days)
- Key attendees at the company
- 1-2 conversation starters based on their business
- Potential questions to ask

### Competitive Research
"Compare [company A] vs [company B]"

Output:
- Side-by-side comparison table
- Positioning differences
- Win/loss considerations

## Qualification Signal Analysis

### Positive Signals to Look For ✅
- Recent funding (growth mode = buying tools)
- Rapid hiring in relevant departments
- Tech stack mentions that integrate with your product
- Recent leadership changes (new C-level)
- Product launches (they're investing in growth)
- Geographic expansion
- Regulatory changes in their industry

### Concern Signals ⚠️
- Layoffs or hiring freezes
- Negative press (lawsuits, security incidents)
- Recent budget cuts / cost-cutting measures
- Leadership exodus
- Competitor acquisitions (they might be acquired)
- Industry headwinds

## Tips for Best Results

1. **Include the domain**: "research acme.com" is more precise
2. **Specify the person**: "Jane Smith, VP Sales at Acme"
3. **State your goal**: "research Stripe before my demo call"
4. **Ask follow-ups**: After initial research, ask specific questions
5. **Recent context matters**: Last 30-90 days of news is most relevant

## File Storage

Research can be saved to workspace:
- `memory/research/companies/[company-name].md`
- `memory/research/people/[person-name].md`
- `memory/research/meetings/[date]-[company].md`

## Related OpenClaw Skills

- **daily-briefing** — Get your day's priorities with meeting context
- **ticket-triage** — Review and categorize customer issues
- **browser** — Navigate websites for deeper research
- **web_fetch** — Get full page content from specific URLs

## Example Usage

**User:** "Research Notion before my call"

**What I'll do:**
1. `web_search: "Notion news"` → Recent product updates, announcements
2. `web_search: "Notion funding valuation"` → Financial status
3. `web_search: "Notion hiring"` → Growth indicators
4. `web_search: "Notion CEO"` → Leadership info
5. Synthesize into formatted report with talking points

---
*Adapted from knowledge-work-plugins (sales/account-research) for OpenClaw*
