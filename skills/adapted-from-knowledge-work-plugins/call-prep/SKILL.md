---
name: call-prep
description: Prepare for sales calls with account context, attendee research, and suggested agenda. Uses web search for research. Works standalone. Trigger with "prep me for my call with [company]", "I'm meeting with [company] prep me", "call prep [company]", or "get me ready for [meeting]". Adapted for OpenClaw.
---

# Call Prep (OpenClaw Adapted)

Get fully prepared for any sales call in minutes using web research and structured analysis.

## How It Works

**STANDALONE MODE (Web Search):**
✓ You tell me: company, meeting type, attendees
✓ Web search: recent news, funding, leadership changes
✓ Company research: what they do, size, industry
✓ Output: prep brief with agenda and questions

## Trigger Phrases
- "Prep me for my call with [company]"
- "I'm meeting with [company] prep me"
- "Call prep [company]"
- "Get me ready for [meeting]"
- "Prepare me for [name/company] meeting"

## What I'll Ask

**Required:**
- Company or contact name
- Meeting type (discovery, demo, negotiation, check-in, etc.)

**Helpful if you have:**
- Who's attending (names and titles)
- Any context (paste prior notes, emails, etc.)
- Your goal for the meeting

## Output Format

```markdown
# Call Prep: [Company Name]

**Meeting:** [Type] — [Date/Time if known]
**Attendees:** [Names with titles]
**Your Goal:** [What you want to accomplish]

---

## Account Snapshot

| Field | Value |
|-------|-------|
| **Company** | [Name] |
| **Industry** | [Industry] |
| **Size** | [Employees / Revenue if known] |
| **Status** | [New prospect / Active opportunity / Customer] |
| **Last Touch** | [Date and summary if provided] |

---

## Who You're Meeting

### [Name] — [Title]
- **Background:** [Career history, education if found]
- **LinkedIn:** [URL]
- **Role in Deal:** [Decision maker / Champion / Evaluator / etc.]
- **Talking Point:** [Something personal/professional to reference]

[Repeat for each attendee]

---

## Context & History

**Recent news about [Company]:**
- [News item 1 — why it matters]
- [News item 2 — why it matters]
- [News item 3 — why it matters]

**What you've shared:**
- [Key points from context provided]
- [Open commitments or action items]
- [Any concerns or objections raised]

---

## Suggested Agenda

1. **Open** — [Reference last conversation or trigger event]
2. **[Topic 1]** — [Discovery question or value discussion]
3. **[Topic 2]** — [Address known concern or explore priority]
4. **[Topic 3]** — [Demo section / Proposal review / etc.]
5. **Next Steps** — [Propose clear follow-up with timeline]

---

## Discovery Questions

Ask these to fill gaps in your understanding:

1. [Question about their current situation]
2. [Question about pain points or priorities]
3. [Question about decision process and timeline]
4. [Question about success criteria]
5. [Question about other stakeholders]

---

## Potential Objections

| Objection | Suggested Response |
|-----------|-------------------|
| [Likely objection based on context] | [How to address it] |
| [Common objection for this stage] | [How to address it] |

---

## Quick Wins / Talking Points

- [Specific personalization from research]
- [Relevant case study or proof point]
- [Timely hook based on news]

---

## After the Call

Next steps:
- [ ] Send follow-up email within 24h
- [ ] Update notes in memory
- [ ] Schedule next touchpoint
```

## Research Strategy (OpenClaw Tools)

### Step 1: Parse Request
Identify what I need:
- Company name
- Meeting type
- Attendee names/titles (if provided)
- Context (if provided)

### Step 2: Web Research

**For Company:**
```
web_search: "[Company name]"
→ Homepage, about page, what they do

web_search: "[Company name] news"
→ Recent announcements (last 30 days)

web_search: "[Company name] funding"
→ Investment history, investors

web_search: "[Company name] hiring"
→ Growth signals, open roles

web_search: "[Company name] product"
→ What they sell, features
```

**For Attendees:**
```
web_search: "[Person name] [Company] LinkedIn"
→ Background, career history

web_search: "[Person name] [Company]"
→ News mentions, interviews, content
```

**For Context:**
```
web_search: "[Company] [industry] trends"
→ Market context

web_search: "[Company] competitors"
→ Competitive landscape
```

### Step 3: Synthesize & Generate

1. Combine research findings
2. Identify knowledge gaps → create discovery questions
3. Anticipate objections based on stage and industry
4. Create suggested agenda tailored to meeting type
5. Generate talking points from research

## Meeting Type Variations

### Discovery Call
- **Focus:** Understanding their world, pain points, priorities
- **Agenda emphasis:** Questions > Talking
- **Key output:** Qualification signals, next step proposal

### Demo / Presentation
- **Focus:** Their specific use case, tailored examples
- **Agenda emphasis:** Show relevant features, get feedback
- **Key output:** Technical requirements, decision timeline

### Negotiation / Proposal Review
- **Focus:** Addressing concerns, justifying value
- **Agenda emphasis:** Handle objections, close gaps
- **Key output:** Path to agreement, clear next steps

### Check-in / QBR
- **Focus:** Value delivered, expansion opportunities
- **Agenda emphasis:** Review wins, surface new needs
- **Key output:** Renewal confidence, upsell pipeline

## File Storage

Call prep can be saved to workspace:
- `memory/call-prep/YYYY-MM-DD-[company-name].md`
- Post-call notes: `memory/call-notes/YYYY-MM-DD-[company-name].md`

## Tips for Better Prep

1. **More context = better prep** — Paste emails, notes, anything you have
2. **Name the attendees** — Even just titles help me research
3. **State your goal** — "I want to get them to agree to a pilot"
4. **Flag concerns** — "They mentioned budget is tight"
5. **Share timing** — Helps prioritize what's most urgent to research

## Related OpenClaw Skills

- **account-research** — Deep dive on a company before first contact
- **note-taking** — Document the call afterward
- **daily-briefing** — Get today's meetings with prep reminders

---
*Adapted from knowledge-work-plugins (sales/call-prep) for OpenClaw*
