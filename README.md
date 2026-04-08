# PersonalOS

A personal AI system for Claude Code / Cowork that learns how you work and adapts over time. No code, no database — just markdown skills that Claude discovers natively.

---

## How It Works

Clone the repo into your Cowork session. Claude reads `CLAUDE.md` on startup, discovers all 87 skills in `.claude/skills/`, and runs onboarding if you're new. Your personal context lives in `personal-os/` and persists across sessions.

```bash
git clone https://github.com/zm2231/personal-os-cowork.git
cd personal-os-cowork
# Open in Cowork or Claude Code — say "Set up my PersonalOS"
```

---

## Setup

Say **"Set up my PersonalOS"** or **"/onboarding-interview"**.

The interview takes ~10 minutes and covers:

1. **Who you are** — name, role, company, work description
2. **Priorities** — top 3 active projects with deadlines
3. **Communication style** — tone, length, directness
4. **Team** — key collaborators and how you work together
5. **Glossary** — internal terms and acronyms
6. **Output preferences** — where to deliver results (in-conversation, Telegram, Notion, local files)

For technical/engineer/founder roles: additional questions about repos, custom tools, and your decision → implementation workflow.

After onboarding, run **`/system-check`** to verify everything is wired up.

---

## File Structure

```
personal-os-cowork/
├── CLAUDE.md                        # System instructions — read on every session start
├── .claude/
│   ├── settings.json                # Stop hook — forces session notes before exit
│   ├── hooks/
│   │   └── session-notes-check.sh  # Blocks Claude from stopping without writing notes
│   └── skills/                      # 87 native skills — auto-discovered, /slash-invokable
│       ├── onboarding-interview/
│       ├── system-check/
│       ├── role-detection/
│       ├── skill-creator/           # Build your own skills (draft/test/eval/architect paths)
│       ├── daily-agenda/
│       ├── meeting-notes/
│       ├── session-summary/
│       └── ... (81 more)
│
└── personal-os/                     # Your personal data — populated during onboarding
    ├── context/                     # Layer 1: Who you are
    │   ├── identity.md
    │   ├── communication-style.md
    │   ├── working-preferences.md
    │   ├── team-directory.md
    │   ├── glossary.md
    │   ├── snapshot.md              # Fast-load summary — auto-rebuilt when stale
    │   ├── output-format.md         # Obsidian/Notion write format (Dataview, Templater, Tasks)
    │   └── notifications.md         # Delivery config — gitignored (may contain credentials)
    ├── memory/                      # Layer 2: What matters
    │   ├── current-priorities.md
    │   ├── patterns.md
    │   ├── decisions.md
    │   ├── learnings.md
    │   └── confidence-flags.md
    ├── adaptation/                  # Layer 3: How it improves
    │   ├── autonomy-level.md
    │   ├── skill-levels.md
    │   ├── feedback.md
    │   └── preferences.md
    └── logs/                        # Session notes and meeting logs — gitignored
```

**Key rule:** `personal-os/` is your data. `.claude/skills/` is the system. Don't mix them.

---

## Skills

All 87 skills live in `.claude/skills/<name>/SKILL.md` and are auto-discovered by Claude Code. Invoke any skill with `/skill-name` or describe what you need and Claude routes to the right one.

### Core (always relevant)
`/onboarding-interview` `/system-check` `/role-detection` `/session-summary` `/skill-creator` `/scheduled-jobs`

### Daily work
`/daily-agenda` `/meeting-notes` `/draft-email` `/quick-research` `/standup-bot` `/project-status`

### Writing & communication
`/draft-email` `/grammar-check` `/tone-adjuster` `/style-transfer` `/message-review` `/presentation`

### Engineering
`/code-review` `/debugging` `/git-workflow` `/api-testing` `/documentation-generator` `/ci-cd-helper`

### Research
`/quick-research` `/fact-checker` `/source-analyzer` `/literature-review` `/data-analysis` `/knowledge-graph`

### Strategy & planning
`/strategic-planning` `/risk-management` `/stakeholder-communication` `/goal-tracker` `/forecasting`

### Productivity
`/habit-tracker` `/pomodoro` `/time-logging` `/journaling` `/handoff-manager`

Browse all: `/skill-suggester` — describe what you need and get matched to the right skill.

---

## Memory System

Three layers, all markdown files:

| Layer | Location | What's stored |
|-------|----------|---------------|
| **Identity** | `personal-os/context/` | Who you are, your team, your style, your tools |
| **Memory** | `personal-os/memory/` | Priorities, decisions, patterns, learnings |
| **Adaptation** | `personal-os/adaptation/` | Autonomy level, feedback, learned preferences |

**Automatic capture:**

| Trigger | Updated |
|---------|---------|
| New person mentioned with role | `context/team-directory.md` (silent) |
| Unknown term explained | `context/glossary.md` (silent) |
| "We decided X" | `memory/decisions.md` — "Logged." |
| Style correction received | `context/communication-style.md` — "Updated." |
| Pattern seen 3+ times | `memory/patterns.md` — "I noticed a pattern…" |

**Snapshot:** `context/snapshot.md` is a fast-load summary. Claude checks if it's stale on session start and rebuilds it if any source file is newer.

---

## Autonomy Ladder

Set in `personal-os/adaptation/autonomy-level.md`. Change anytime: *"be more autonomous"* or *"be more careful"*.

| Level | Name | Behavior |
|-------|------|----------|
| L1 | Guardian | Confirms ALL actions before executing |
| L2 | Supervised | Confirms risky actions; executes reads/research directly |
| L3 | Trusted | Works autonomously; presents output for review before sending |
| L4 | Anticipatory | Pre-populates everything; approval gates always apply |

Default: **L1** for most users. **L2** for engineers/developers. **L3** for AI/agent developers (auto-detected during onboarding from signals like "MCP", "agents", "built my own").

---

## Session Notes

A Stop hook (`.claude/hooks/session-notes-check.sh`) prevents Claude from ending a session without writing notes to `personal-os/logs/sessions/YYYY-MM-DD-[topic].md`. This is how the system learns over time — notes feed into the weekly reflection scheduled task.

To write notes manually: `/session-summary`

---

## Scheduled Tasks

Use **Claude Desktop → Schedule tab** for always-on recurring tasks. Each task is a self-contained prompt that runs in a fresh session.

Included templates in `/scheduled-jobs`:
- **Daily morning briefing** — reads priorities + decisions, delivers today's focus
- **Friday weekly summary** — reads session logs, surfaces patterns
- **Reflection pass** — extracts learnings from logs, updates `memory/learnings.md`

Tasks read delivery preferences from `personal-os/context/notifications.md` — never hardcode a Telegram ID or Notion page in a prompt.

---

## Obsidian / Notion Output

When you have Obsidian or Notion set up, `personal-os/context/output-format.md` defines exactly how Claude writes to each:

**Obsidian:** frontmatter schema, file naming (`YYYY-MM-DD-[type]-[slug].md`), plugin compatibility (Dataview fields, Templater workflow, Tasks plugin emoji syntax)

**Notion:** MCP tool sequence (`notion_from_title` → `notion_append_markdown`), page structure, "always nest under parent page" rule

Fill in the config sections during onboarding or edit directly.

---

## Building Custom Skills

Use `/skill-creator` to build skills for your specific workflows — your LMS, your internal tools, your domain. Paths:

- **Draft only** — get a working `SKILL.md` fast
- **Draft + test** — verify with 2–3 test cases
- **Full eval** — grader/comparator/analyzer subagents, baseline comparisons
- **Architect** — for creative/generative output (generate → grade → extract patterns → iterate)

Custom skills go in `.claude/skills/<name>/SKILL.md` and are immediately active.

---

## Gitignored Files

These files contain personal data and are not committed:

- `personal-os/context/notifications.md` — may contain Telegram token, Notion credentials
- `personal-os/logs/sessions/` — session notes with personal context
- `.obsidian/` — vault layout config

---

## Contributing

PersonalOS is open source. Skills are plain markdown — fork, build, share.

To add a skill: create `.claude/skills/<your-skill>/SKILL.md` with `name:` and `description:` frontmatter. Use `/skill-creator` for guidance on structure, testing, and description optimization.

---

## License

MIT — see `LICENSE` file.

---

*Built on Claude Code / Cowork — native skills, file-based memory, real scheduling.*
