---
name: draft-outreach
description: Research a prospect then draft personalized outreach. Uses web research by default. Trigger with "draft outreach to [person/company]", "write cold email to [prospect]", "reach out to [name]". Adapted for OpenClaw.
---

# Draft Outreach (OpenClaw Adapted)

Research first, then draft. Never send generic outreach — always research the prospect first to personalize the message.

## How It Works

**STANDALONE MODE (Web Search):**
✓ Research the prospect (company + person)
✓ Find personalization hooks (news, role, background)
✓ Draft personalized message
✓ Provide email + LinkedIn versions

## Trigger Phrases
- "Draft outreach to [person/company]"
- "Write cold email to [prospect]"
- "Reach out to [name]"
- "LinkedIn message to [person]"
- "Email [company name]'s [title]"

## Output Format

```markdown
# Outreach Draft: [Person] @ [Company]

**Generated:** [Date]
**Research Sources:** Web Search

---

## Research Summary

**Target:** [Name], [Title] at [Company]
**Hook:** [Why reaching out now - the personalized angle]
**Goal:** [What you want from this outreach]

---

## Email Draft

**To:** [email if known, or "find email" note]
**Subject:** [Personalized subject line]

---

[Email body]

---

**Subject Line Alternatives:**
1. [Option 2]
2. [Option 3]

---

## LinkedIn Approach

**Connection Request (<300 chars):**
[Short, no-pitch connection request]

**Follow-up Message (after connected):**
[Value-first message]

---

## Why This Approach

| Element | Based On |
|---------|----------|
| Opening | [Research finding that makes it personal] |
| Hook | [Their priority/pain point] |
| Proof | [Relevant customer story] |
| CTA | [Low-friction ask] |

---

## Follow-up Sequence (Optional)

**Day 3 - Follow-up 1:**
[Short, new angle]

**Day 7 - Follow-up 2:**
[Different value prop]

**Day 14 - Break-up:**
[Final attempt]
```

## Execution Flow

### Step 1: Parse Request
```
Input patterns:
- "draft outreach to John Smith at Acme" → Person + company
- "write cold email to Acme's CTO" → Role + company
- "reach out to sarah@acme.com" → Email provided
- "LinkedIn message to [LinkedIn URL]" → Profile provided
```

### Step 2: Research First (Always)

**Company Research:**
```
web_search: "[Company name]"
→ What they do, size, industry

web_search: "[Company name] news"
→ Recent announcements, triggers

web_search: "[Company name] funding hiring"
→ Growth signals
```

**Person Research:**
```
web_search: "[Person name] [Company] LinkedIn"
→ Background, role, tenure

web_search: "[Person name] [Company]"
→ News mentions, content, interviews
```

**Must find before drafting:**
- Who they are (title, background)
- What the company does
- Recent news or trigger
- Personalization hook

### Step 3: Identify Hook

**Priority order for hooks:**
1. **Trigger event** (funding, hiring, news) → Most timely
2. **Their content** (post, article, talk) → Shows you did research
3. **Company initiative** → Relevant to their priorities
4. **Role-based pain point** → Least personal but still relevant

### Step 4: Draft Message

**Email Structure (AIDA):**
```
SUBJECT: [Personalized, <50 chars, no spam words]

[Opening: Personal hook - shows you researched them]

[Interest: Their problem/opportunity in 1-2 sentences]

[Desire: Brief proof point - similar company result]

[Action: Clear, low-friction CTA]

[Signature]
```

**LinkedIn Connection Request (<300 chars):**
```
Hi [Name], [Genuine compliment/shared interest/relevant observation].
Would love to connect. [No pitch]
```

**LinkedIn Follow-up Message:**
```
Thanks for connecting! [Value-first: insight, article, observation]

[Soft transition to why you reached out]

[Question, not pitch]
```

## Message Templates

### Cold Outreach (No Prior Relationship)

```
Subject: [Their initiative] + [your angle]

Hi [Name],

[Personal hook based on research - news, content, role].

[1 sentence on their likely challenge based on role/company].

[Brief proof: "We helped [Similar Company] achieve [Result]".]

Worth a 15-min call to see if relevant?

[Signature]
```

### Warm Outreach (Mutual Connection)

```
Subject: Following up from [context]

Hi [Name],

[Reference to how you know them / who connected you].

[Why reaching out now - their trigger].

[Specific value you can offer].

[CTA]
```

### Re-Engagement (Went Dark)

```
Subject: [Short, curiosity-driven]

Hi [Name],

[Acknowledge time passed without guilt-tripping].

[New reason to reconnect - their news or your news].

[Simple question to re-open dialogue].

[Signature]
```

## Email Style Guidelines

**DO:**
- Be concise but informative
- Short paragraphs (2-3 sentences max)
- Use plain text (no markdown formatting)
- Get to the point quickly
- Simple lists with plain dashes

**DON'T:**
- Use markdown (**bold**, *italic*, etc.)
- Write generic openers ("I hope this finds you well")
- Feature dump (long product paragraphs)
- Fake personalization ("Congrats on your role" without context)

### Good Example:
```
Here's what I can share:
- Case study from a similar company
- 15-min intro call this week
- Quick demo if helpful
```

### Bad Example:
```
**What I Can Offer:**
- **Case study** from a similar company
- **Intro call** this week
```

## What NOT to Do

**Generic openers:**
- "I hope this email finds you well"
- "I'm reaching out because..."
- "I wanted to introduce myself"

**Feature dumps:**
- Long paragraphs about your product
- Multiple value props at once
- No clear CTA

**Fake personalization:**
- "I noticed you work at [Company]" (obviously)
- Generic compliments without substance

## Channel Selection

```
IF email address known/guessable:
  → Email preferred (higher response rate)
  → Also provide LinkedIn backup

IF no email:
  → LinkedIn connection request
  → Follow-up message template for after connection

IF warm intro possible:
  → Suggest mutual connection outreach first
```

## Configuration (Customize for Your Use)

Before using this skill, provide:

```markdown
## Your Outreach Settings

- Your name: [Your Name]
- Your title: [Your Title]
- Your company: [Company Name]
- Value prop: [One sentence - what you help with]

## Signature
[Your preferred email signature]

## Proof Points
- [Customer 1]: [Result]
- [Customer 2]: [Result]
- [Customer 3]: [Result]

## CTA Options
- Default: "Worth a 15-min call?"
- Softer: "Open to learning more?"
- Specific: "Can I send over a quick demo?"

## Tone
- [Professional / Casual / Direct]
```

## File Storage

Outreach drafts can be saved to:
- `memory/outreach/YYYY-MM-DD-[person-company].md`
- Track responses: `memory/outreach/responses/[person-company].md`

## Example Usage

**User:** "draft outreach to the Head of Engineering at Notion"

**What I'll do:**
1. Research Notion (news, funding, product)
2. Search for Head of Engineering (LinkedIn, background)
3. Find personalization hook (e.g., AI hiring)
4. Draft email with specific talking points
5. Provide LinkedIn alternative

## Related OpenClaw Skills

- **account-research** — Deep company research before outreach
- **call-prep** — Prepare for meetings after outreach succeeds
- **note-taking** — Document conversations and track progress

---
*Adapted from knowledge-work-plugins (sales/draft-outreach) for OpenClaw*
