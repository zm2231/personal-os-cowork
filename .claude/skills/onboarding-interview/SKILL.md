---
name: onboarding-interview
description: "Run when: 'Set up my PersonalOS', 'Start onboarding', 'I'm new', or identity.md does not exist. Creates all personal context files."
---

# PersonalOS Onboarding Interview

Creates all personal context files via a structured interview. Do not skip. PersonalOS cannot function without these files.

## Step 0: Tool Discovery (before any questions)

**Part A — Silent MCP probe.** Check connectivity and show status:

| Tool | Status |
|---|---|
| Calendar (Google/Outlook) | Connected / Not connected |
| Email (Gmail/Outlook) | Connected / Not connected |
| Messaging (Slack/Teams/Discord) | Connected / Not connected |
| Notes/Meetings (Notion/Granola/Fireflies) | Connected / Not connected |
| Task management (Linear/Notion/other) | Connected / Not connected |

**Part B — Ask explicitly** (don't rely on MCP probe alone):

```
"Before we start — quick inventory:
- What's your primary task management system? (Notion, Linear, Obsidian, other, or none)
- How do you capture meetings? (Fireflies, Granola, manual notes, or nothing)
- Where does your team communicate? (Slack, Discord, iMessage, Teams, other)
- Any custom internal tools I should know about? (internal dashboards, CLIs, etc.)"
```

Save answers to `personal-os/context/working-preferences.md` under `## Tool Stack`, marked `[confirmed]`.
Note: these answers directly determine how automations are built — capture them now, not later.

Then proceed to Q1–Q6.

---

## Question 1: Who are you and what do you do?

```
"Question 1/6: Who are you and what do you do?
Name, role, company (or 'independent'), and one sentence on your main work."
```

Extract: name, role, company, work description.

**Role signals for later:**
- Engineer / Developer / Architect / CTO → technical user (affects autonomy default)
- Designer / PM / Researcher → knowledge worker
- Founder / Generalist → multi-domain

Save to `personal-os/context/identity.md`:
```markdown
# Identity
**Name:** [name]
**Role:** [role]
**Company:** [company]
**Work Description:** [one sentence]
**Last Updated:** [date]
```

---

## Question 2: What are your top 3 priorities right now?

```
"Question 2/6: What are your top 3 priorities right now?
Active projects, goals, or focus areas — include deadlines if relevant."
```

Save to `personal-os/memory/current-priorities.md`:
```markdown
# Current Priorities
## Priority 1
**Project:** [name] | **Deadline:** [date or Ongoing] | **Status:** Active [confirmed]

## Priority 2
**Project:** [name] | **Deadline:** [date or Ongoing] | **Status:** Active [confirmed]

## Priority 3
**Project:** [name] | **Deadline:** [date or Ongoing] | **Status:** Active [confirmed]

**Last Updated:** [date]
```

---

## Question 3: How do you prefer to communicate?

```
"Question 3/6: Communication style.
- Formal or casual tone?
- Brief or detailed responses?
- How direct? (Very direct / Moderate / Gentle)"
```

Save to `personal-os/context/communication-style.md`:
```markdown
# Communication Style
**Tone:** [Formal / Casual] [confirmed]
**Length:** [Brief / Detailed] [confirmed]
**Directness:** [Very direct / Moderate / Gentle] [confirmed]
**Last Updated:** [date]
```

---

## Question 4: Who do you work with most?

```
"Question 4/6: Key collaborators.
3–5 people you work with regularly. For each: name, role, how you work together."
```

Save to `personal-os/context/team-directory.md`:
```markdown
# Team Directory
## [Name]
**Role:** [Manager / Peer / Report / Client / Other] [confirmed]
**Collaboration:** [daily standup / weekly sync / async / etc.] [confirmed]
**Notes:** —

[repeat for each person]
**Last Updated:** [date]
```

---

## Question 5: Internal terms or jargon I should know?

```
"Question 5/6: Any terms, acronyms, or internal names I should know?
5–10 terms with brief definitions."
```

Save to `personal-os/context/glossary.md`:
```markdown
# Glossary
## [Term]
**Definition:** [definition] [confirmed]

[repeat]
**Last Updated:** [date]
```

---

## Question 6: Where do you want output delivered?

```
"Question 6/6: When I have something for you — a summary, alert, or report —
where do you want it?

Options:
- In-conversation (default, always works)
- Telegram (if you have a bot set up)
- Notion page
- A specific file in this folder
- Multiple destinations depending on urgency

Also: do you prefer output as structured documents, bullet lists, or plain prose?"
```

Save to `personal-os/context/notifications.md` (the pre-existing template file):
- Primary channel and format preference
- Per-type routing (time-sensitive vs archivable vs team-facing)
- Telegram: bot token + chat ID (if provided) — warn user this file is gitignored for a reason
- Notion: workspace name + parent page for outputs

Then update `personal-os/context/output-format.md` with the configured destinations:
- Fill in the Obsidian vault path + output folder (if Obsidian is their KB)
- Fill in the Notion parent page ID/title (if Notion is a destination)
- Leave other sections as-is (they're format specs, not config)

If they have Telegram: "What's your bot token and chat ID? I'll save it to `notifications.md` — that file is gitignored so it stays local and never gets committed."

If they have Notion: "What's the name of the page or database where you want outputs to land? I'll use that as the parent so nothing gets created at the top level."

If they have Obsidian mounted: Ask the vault check questions (see Local Vault section below) now rather than waiting.

---

## Technical User Branch (after Q1, if role is Engineer/Developer/Architect/Founder with tech signals)

If role signals suggest technical background, ask these before proceeding:

```
"A couple more quick questions since you're technical:

a) What repos or codebases are you actively working in right now?
b) Any custom tools, scripts, or internal systems I should know about?
   (Things like custom CLIs, internal dashboards, agent frameworks, etc.)
c) How do you typically move from a conversation or decision to implementation?
   (e.g., Notion → Linear → code? Verbal → you write it up? Async messages → PR?)
d) What does a typical workday look like technically?
   (coding blocks, PR reviews, deploys, meetings — rough shape of the day)"
```

Save to `personal-os/context/working-preferences.md` under a `## Technical Workflow` section.
Mark all answers `[confirmed]`.

---

## Conversation Discovery (after all structured questions)

After Q6, ask this once regardless of role:

```
"Last thing — walk me through what yesterday looked like.
What did you work on, what felt like friction, and what did you
wish you'd had help with?"
```

This is open-ended. Extract:
- Actual workflow patterns (not what they said their job is — what they actually did)
- Friction points → note in `memory/confidence-flags.md` as areas to help with
- Gaps → note in `adaptation/preferences.md` as "user expressed need for X"

Don't force structure onto their answer. Just listen and capture.

---

## Local Vault / Knowledge Base Check (during Step 0 or Q5)

If user mentions Obsidian, Notion, Roam, Logseq, Bear, or any local knowledge system during any question:

```
"You mentioned [tool]. A few quick questions:
a) Is it a local folder? If so, is it accessible in this Cowork session or elsewhere?
b) Do you want me to write new notes there, or treat it as read-only?
c) (Obsidian only) Which community plugins are you actively using?
   — Templater, Dataview, Tasks, Kanban, Calendar, other?"
```

Save access method to `personal-os/context/working-preferences.md` under `## Local Knowledge Base`.

If **write mode + Obsidian**: fill in `personal-os/context/output-format.md` → Obsidian section with:
- Vault path + output folder
- Plugins active (from answer c)
- Templater templates folder + any template paths for common output types (ask: "Do you have Templater templates for meeting notes or daily notes I should use?")
- Any Dataview fields the user's existing queries expect (ask: "Any frontmatter fields your Dataview queries look for? I'll add them to every note I write.")

If not mounted: "To give me access, add the folder path to your Cowork session. You can do this in Claude Desktop → Settings → Directories."

---

## After All Questions: Create Remaining Files

### Autonomy Level (context-sensitive default)

Based on role + technical signals from Q1 and technical branch:

- **AI/agent developer** (signals: "AI", "agents", "MCP", "LLM", "built my own", "agent framework", "Claude API"): start at **L3 (Trusted)**
- **Technical user** (Engineer / Developer / Architect without AI-specific signals): start at **L2 (Supervised)**
- **Non-technical user**: start at **L1 (Guardian)**
- If uncertain: default L1, offer to change immediately

```markdown
# Autonomy Level
**Current:** Level [1/2/3] ([Guardian / Supervised / Trusted])

**What This Means:**
- L1 Guardian: Confirms ALL actions before executing
- L2 Supervised: Confirms risky actions (external sends, file writes, deletes)
- L3 Trusted: Works autonomously; presents output for review before sending externally

**Change:** Say "be more autonomous" (↑) or "be more careful" (↓)
**Levels:** 1 (Guardian) → 2 (Supervised) → 3 (Trusted) → 4 (Anticipatory)

**Last Updated:** [date]
```

Save to `personal-os/adaptation/autonomy-level.md`.

### Working Preferences

```markdown
# Working Preferences
**Work Hours:** [inferred from timezone / ask if unclear]
**Task Management:** [from Step 0 discovery] [confirmed if asked, inferred if detected]
**Meeting Capture:** [from Step 0 discovery] [confirmed if asked, inferred if detected]
**Last Updated:** [date]
```

### Output Format Config

Update `personal-os/context/output-format.md` with values collected during Q6 and Local Vault check:
- Fill in Obsidian vault path + output folder (if write mode configured)
- Fill in Notion parent page/workspace (if Notion is a destination)
- Leave all format specs (frontmatter template, naming convention, MCP patterns) intact — they don't change per user

### Patterns, Learnings, Feedback, Preferences

Create these with empty state:

`personal-os/memory/patterns.md` — "No patterns detected yet."
`personal-os/memory/learnings.md` — "Initial onboarding completed [date]."
`personal-os/memory/decisions.md` — "No decisions logged yet."
`personal-os/memory/confidence-flags.md` — "No active flags."
`personal-os/adaptation/feedback.md` — "No feedback yet."
`personal-os/adaptation/preferences.md` — empty
`personal-os/adaptation/skill-levels.md` — all skills at level-1
`personal-os/adaptation/auto-emergence.md` — "No patterns detected yet."

### Snapshot

Build `personal-os/context/snapshot.md` from all answers:

```markdown
# PersonalOS Snapshot
**Last Updated:** [date]

## Identity
**Name:** [Q1] | **Role:** [Q1] | **Company:** [Q1]

## Priorities
1. [Q2 P1]
2. [Q2 P2]
3. [Q2 P3]

## Output Preferences
**Primary:** [Q6] | **Format:** [Q6]

## Autonomy
**Level:** L[1 or 2] — [Guardian / Supervised]

## Tools Connected
[from Step 0]

## Confidence Flags
**Active:** 0

## Context Health
**Last refresh:** [date] | **Stale warning:** no
```

---

## Completion Message

```
✅ PersonalOS set up.

✓ [Name], [Role] at [Company]
✓ Priorities: [P1], [P2], [P3]
✓ Communication: [tone], [length]
✓ Team: [N] collaborators
✓ Output: [primary destination]
✓ Autonomy: L[N] ([name])

Next:
- "What should I focus on today?" → /daily-agenda
- "We decided to..." → logs to decisions.md
- /check → verify setup
- /session-summary → wrap up sessions
```

---

## Scheduled Tasks Offer

After completion, ask once:

```
"Want to set up any recurring tasks? Using Cowork's built-in scheduling:
- Daily morning briefing (priorities + calendar)
- Friday weekly summary
- Monday planning session

These run automatically via Desktop scheduled tasks — no manual trigger needed.
Set any up now?"
```

If yes → guide them to Desktop app → Schedule tab → create task with the relevant prompt.
If no → note in preferences.md, don't ask again.

---

## After This Skill

1. Run `/role-detection` — infer role, suggest skill packs
2. Run `/system-check` — verify all files created correctly
3. Ask: "What would you like to work on first?"

---

## Confidence Markers

Use throughout all saved files:
- `[confirmed]` — user stated this directly
- `[inferred]` — derived from tool probe or context, not explicitly confirmed

Anything `[inferred]` gets added to `confidence-flags.md` for eventual confirmation.
Never write inferences as facts without marking them.
