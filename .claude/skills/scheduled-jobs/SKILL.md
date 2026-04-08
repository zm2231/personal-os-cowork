---
name: scheduled-jobs
description: "Set up and manage recurring automated tasks using Cowork Desktop scheduled tasks or Claude Code's /loop command. Trigger when: 'schedule a task', 'recurring task', 'run this daily', 'set up automation'."
---

# Scheduled Jobs

Set up recurring tasks using the two real scheduling mechanisms available:

| Mechanism | When to use | Persists? |
|-----------|-------------|-----------|
| **Desktop scheduled task** | Always-on recurring work (daily briefings, weekly summaries) | Yes — survives restarts |
| **`/loop` in Claude Code** | Polling during an active session (check deploy every 5 min) | No — session only, 7-day max |

**Important:** Neither mechanism runs Claude autonomously in the background without setup. Desktop scheduled tasks require the Desktop app open; `/loop` requires an active Claude Code session.

---

## Setting Up a Desktop Scheduled Task

Desktop scheduled tasks are the right choice for most PersonalOS recurring work.

**Where to set up:** Claude Desktop app → Schedule tab

**What each task needs:**
1. **Prompt** — self-contained, describes exactly what to do and what success looks like
2. **Frequency** — minimum 1 minute; daily, weekly, or custom cron
3. **Output destination** — where results go (file in `personal-os/`, Notion, email via MCP, etc.)

**The prompt must be self-contained** — each task run is a fresh session with no memory of previous runs. It reads from files, acts, and writes results back to files.

### Prompt Template for PersonalOS Tasks

```
Read personal-os/context/snapshot.md and personal-os/memory/current-priorities.md.

[Describe the specific task]

Write the result to personal-os/logs/[filename]-[date].md.

Read personal-os/context/notifications.md and deliver output per those preferences.
```

---

## Standard PersonalOS Scheduled Tasks

### Daily Morning Briefing

**Frequency:** Daily at [user's preferred time]

**Prompt:**
```
Read personal-os/context/snapshot.md and personal-os/memory/current-priorities.md.
Read personal-os/memory/decisions.md for any recent decisions.

Generate a morning briefing:
- Top 3 priorities for today
- Any decisions or flags from yesterday
- One focus recommendation based on patterns

Write to personal-os/logs/briefings/[YYYY-MM-DD]-morning.md. Keep it under 20 lines.
Read personal-os/context/notifications.md and deliver per those preferences.
```

### Friday Weekly Summary

**Frequency:** Weekly, Friday at [e.g., 4pm]

**Prompt:**
```
Read personal-os/logs/sessions/ for all session notes from this week.
Read personal-os/memory/decisions.md and personal-os/memory/learnings.md.

Generate a weekly summary: what was accomplished, decisions made, patterns noticed,
suggested focus for next week.

Write to personal-os/logs/weekly/[YYYY-MM-DD]-weekly.md.
Read personal-os/context/notifications.md and deliver per those preferences.
```

### Reflection Pass

**Frequency:** Weekly (reads session notes → updates learnings)

**Prompt:**
```
Read all files in personal-os/logs/sessions/ added since the last reflection date
in personal-os/memory/learnings.md.

Extract: recurring issues, skills that could be improved, patterns worth noting.

Append findings to personal-os/memory/learnings.md.
If a skill improvement is clearly needed, note it in personal-os/memory/patterns.md.
Update the "last reflection" date in learnings.md.
```

---

## Setting Up `/loop` (Session-Scoped)

For polling during an active Claude Code session only:

```
/loop 5m "check if deploy finished and report status"
/loop 1h "pull latest from personal-os/logs/ and surface anything urgent"
```

Expires after 7 days or when the session ends. Not for always-on tasks.

---

## Process: Adding a New Task

1. **Define it** — what does it read? what does it produce? where does output go?
2. **Test manually first** — ask Claude to run the prompt now and verify the output
3. **Schedule** — Desktop app → Schedule tab → New task → paste prompt → set frequency
4. **Review first run** — check output after the first scheduled execution

Never schedule a task you haven't tested manually. The prompt must work end-to-end on its own.

---

## Output Rules

- Always write to `personal-os/` files so the reflection task can read them
- Never hardcode a Notion page ID, Telegram chat ID, or email address in a prompt
- Always read `personal-os/context/notifications.md` for delivery preferences
- Keep output files under 50 lines — the reflection task needs to read many of them
