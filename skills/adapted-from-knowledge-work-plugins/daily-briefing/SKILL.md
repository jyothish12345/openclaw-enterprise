---
name: daily-briefing
description: Start your day with a prioritized briefing. Works standalone when you tell me your meetings and priorities. Use "daily brief", "what's on my plate today", or "start my day". Adapted for OpenClaw.
---

# Daily Briefing (OpenClaw Adapted)

Get a clear view of what matters most today. This skill creates a structured daily briefing based on what you share with me.

## How It Works

**STANDALONE MODE (No external connectors needed):**
✓ You tell me: today's meetings, key tasks, priorities
✓ I organize: prioritized action plan for your day
✓ Output: scannable 2-minute briefing

## Trigger Phrases
- "daily brief" / "morning briefing"
- "what's on my plate today"
- "prep my day" / "start my day"
- "quick brief" / "tldr my day" (abbreviated version)
- "wrap up my day" / "end of day summary"

## What I'll Ask

1. **Meetings**: "What meetings do you have today? (Just paste your calendar or list them)"
2. **Priorities**: "What are your key tasks or focus areas today?"
3. **Urgent items**: "Anything urgent or time-sensitive I should know about?"

## Output Format

```markdown
# Daily Briefing | [Day, Month Date]

---

## #1 Priority

**[Most important thing to do today]**
[Why it matters and what to do about it]

---

## Today's Meetings

### [Time] — [Event/Meeting]
**Context:** [One-line: what's at stake, expected outcome]
**Prep:** [Quick action before this meeting]

---

## Task Priorities

### 🔴 URGENT
- [Task] — [Deadline/action needed]

### 🟡 HIGH
- [Task] — [Why it matters]

### 🟢 MEDIUM/LOW
- [Task]

---

## Suggested Actions

1. **[Action]** — [Why now]
2. **[Action]** — [Why now]
3. **[Action]** — [Why now]

---

## Quick Wins
- [ ] [Small task you can knock out quickly]
- [ ] [Another quick win]

---

*Tip: Share your calendar, task list, or just tell me what's on your mind!*
```

## Quick Mode (Abbreviated)

Say "quick brief" or "tldr my day" for a condensed version:

```markdown
# Quick Brief | [Date]

**#1:** [Priority action]

**Meetings:** [N] — [Item 1], [Item 2], [Item 3]

**Top 3 Actions:**
1. [Action 1]
2. [Action 2]
3. [Action 3]

**Do Now:** [Single most important action]
```

## End of Day Mode

Say "wrap up my day" or "end of day summary":

```markdown
# End of Day | [Date]

**Completed:**
- [Task 1] — ✓
- [Task 2] — ✓

**Tomorrow's Focus:**
- [Priority 1]
- [Priority 2]

**Open Loops:**
- [ ] [Unfinished item needing follow-up]
```

## Prioritization Logic

I automatically rank your priorities:

1. **URGENT**: Deadlines today/tomorrow, immediate action needed
2. **HIGH**: Important meetings today, time-sensitive tasks
3. **MEDIUM**: Tasks due this week, important but not urgent
4. **LOW**: Nice-to-have, can be deferred

**Factors that bump priority up:**
- Time-sensitive deadlines
- Important meetings with key stakeholders
- Blocked items affecting other work
- Tasks you've been procrastinating on

## Tips for Best Results

1. **Be specific**: "Call with Client X at 2pm to discuss Q4 contract" is better than "afternoon meeting"
2. **Share context**: Let me know what's at stake or why something matters
3. **No format needed**: Copy-paste from your calendar or just talk naturally
4. **Even partial info helps**: Share whatever you have and I'll structure it

## File Storage (Optional)

Your briefings can be saved to workspace files:
- Daily briefings: `memory/briefings/YYYY-MM-DD.md`
- End of day summaries: `memory/briefings/eod-YYYY-MM-DD.md`

## Related Skills

- Use `web_search` to research meeting attendees or companies
- Use `exec` for calendar/task command integrations
- Use `memory_search` to recall previous briefings

---
*Adapted from knowledge-work-plugins (sales/daily-briefing) for OpenClaw*
