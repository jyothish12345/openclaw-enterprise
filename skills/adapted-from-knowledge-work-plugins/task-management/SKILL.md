---
name: task-management
description: Simple task management using workspace files. Track tasks, todos, and commitments. Use when the user asks about their tasks, wants to add/complete tasks, or needs help tracking commitments. Adapted for OpenClaw.
---

# Task Management (OpenClaw Adapted)

Track tasks, todos, and commitments in structured workspace files.

## How It Works

Tasks are tracked in a simple `TASKS.md` file in your workspace:
- Read/write to track tasks
- Organize by status (Active, Waiting On, Someday, Done)
- Simple checkbox format
- Easy to edit manually or via assistant

## File Location

`/Users/joy/.openclaw/workspace/TASKS.md`

- If it exists, read/write to it
- If it doesn't exist, create it with the template below

## Format & Template

```markdown
# Tasks

## Active

## Waiting On

## Someday

## Done
```

**Task format:**
- `- [ ] **Task title** - context, for whom, due date`
- Sub-bullets for additional details
- Completed: `- [x] ~~Task~~ (YYYY-MM-DD)`

## Trigger Phrases

**View tasks:**
- "What's on my plate"
- "My tasks"
- "What do I need to do"
- "Show my todos"

**Add tasks:**
- "Add a task"
- "Remind me to [task]"
- "I need to [task]"
- "Track [task]"

**Complete tasks:**
- "Done with [task]"
- "Finished [task]"
- "Mark [task] complete"
- "I completed [task]"

**Check waiting items:**
- "What am I waiting on"
- "Waiting items"
- "Blocked tasks"

## How to Interact

### When user asks "what's on my plate" / "my tasks"
1. Read TASKS.md
2. Summarize Active and Waiting On sections
3. Highlight anything overdue or urgent
4. Count tasks by section

### When user says "add a task" / "remind me to"
1. Add to Active section with `- [ ] **Task**` format
2. Include context if provided (who it's for, due date)
3. Confirm addition
4. Write updated TASKS.md

### When user says "done with X" / "finished X"
1. Read TASKS.md
2. Find the task
3. Change `[ ]` to `[x]`
4. Add strikethrough: `~~task~~`
5. Add completion date `(YYYY-MM-DD)`
6. Move to Done section
7. Confirm completion

### When user asks "what am I waiting on"
1. Read the Waiting On section
2. Note how long each item has been waiting (if dates included)
3. Suggest follow-ups if items are stale

## Conventions

✅ **DO:**
- **Bold** the task title for scannability
- Include "for [person]" when it's a commitment to someone
- Include "due [date]" for deadlines
- Include "since [date]" for waiting items
- Use sub-bullets for additional context
- Keep Done section for ~1 week, then archive old items

❌ **DON'T:**
- Create vague tasks without context
- Let Active section grow unbounded
- Forget to move completed items to Done

## Example TASKS.md

```markdown
# Tasks

## Active

- [ ] **Finish Q1 report** - due Friday, for Sarah
  - Include sales metrics and customer feedback
  - Get input from marketing team
- [ ] **Review pull request #234** - for dev team, urgent
- [ ] **Book dentist appointment** - personal
- [ ] **Prepare slides for Monday demo** - 20 slides max

## Waiting On

- [ ] **Approval for budget increase** - waiting on CFO (since 2026-02-10)
- [ ] **Design mockups** - waiting on Jane (since 2026-02-12)

## Someday

- [ ] **Learn Rust** - personal development
- [ ] **Reorganize home office** - low priority

## Done

- [x] ~~Send contract to client~~ (2026-02-13)
- [x] ~~Update documentation~~ (2026-02-12)
```

## Extracting Tasks from Conversations

When summarizing meetings or conversations, offer to add extracted tasks:
- Commitments the user made ("I'll send that over")
- Action items assigned to them
- Follow-ups mentioned

**Always ask before adding** — Don't auto-add without confirmation.

Example:
> "I noticed you committed to sending the proposal by Friday and following up with John about the budget. Would you like me to add those to your task list?"

## Task Organization Tips

### Active vs. Someday
- **Active:** Working on now or very soon (this week/month)
- **Someday:** Might do eventually, but not prioritized

### When to use "Waiting On"
- You've delegated something
- You need input before proceeding
- Blocked by external dependency

Include "since [date]" so you know how long you've been waiting.

### Cleaning up Done
- Keep completed tasks for ~1 week for reference
- Archive or remove older items periodically
- Consider moving important completions to memory/notes

## Integration with OpenClaw Tools

**Create tasks from:**
- Meeting notes (`note-taking` skill)
- Customer issues (`ticket-triage` skill)
- Project planning (`daily-briefing` skill)
- Email follow-ups

**Use with:**
- `write` — Save TASKS.md updates
- `read` — Load current tasks
- `memory_search` — Find old completed tasks

## File Storage

- Main file: `/Users/joy/.openclaw/workspace/TASKS.md`
- Archive: `/Users/joy/.openclaw/workspace/memory/tasks/archive-YYYY-MM.md`
- Templates: `/Users/joy/.openclaw/workspace/memory/tasks/templates/`

## Automation Ideas

**Daily check:**
- Review Active tasks each morning
- Flag overdue items
- Suggest follow-ups for Waiting On items

**Weekly cleanup:**
- Move old Done items to archive
- Review Someday — promote any to Active
- Count completion rate

**Project-based:**
- Create project-specific task lists
- Link tasks to project files
- Track milestones

## Alternative: Rich Task Management

For more complex needs, consider:
- **Apple Reminders** (via `apple-reminders` skill if available)
- **Todoist/Things** integration (via exec or API)
- **Project management tools** (Asana, Linear, etc.)

This skill is intentionally simple for quick, lightweight task tracking.

## Related OpenClaw Skills

- **daily-briefing** — Get your day's priorities with task review
- **note-taking** — Document meetings and extract action items
- **call-prep** — Review tasks before important meetings

---
*Adapted from knowledge-work-plugins (productivity/task-management) for OpenClaw*
