---
name: system-check
description: "Verifies PersonalOS health: required files exist, snapshot is fresh, skills are accessible. Run after onboarding, on demand, or when something seems off."
---

# System Check

Health check for PersonalOS. Verifies files, snapshot freshness, and skill accessibility.

---

## Step 1: Directory Structure

Check these directories exist:
```
personal-os/context/
personal-os/memory/
personal-os/adaptation/
personal-os/logs/sessions/
.claude/skills/
```

✓ if exists | ✗ ERROR if missing

---

## Step 2: Context Files (Layer 1)

Check `personal-os/context/`:
- `identity.md` — must have Name, Role, Company
- `communication-style.md` — must have Tone, Length, Directness
- `working-preferences.md` — work hours, task mgmt, meeting capture, tool stack
- `team-directory.md` — at least 1 person
- `glossary.md` — at least 1 term
- `notifications.md` — primary channel, format, per-type routing (file is gitignored; warn if missing)
- `output-format.md` — Obsidian/Notion write config (WARN if placeholders not filled in after onboarding)
- `snapshot.md` — must exist and be fresh (see Step 6)

---

## Step 3: Memory Files (Layer 2)

Check `personal-os/memory/`:
- `current-priorities.md` — at least 1 priority (ERROR if missing)
- `patterns.md` — can be empty
- `learnings.md` — can be empty
- `decisions.md` — can be empty
- `confidence-flags.md` — can be empty

---

## Step 4: Adaptation Files (Layer 3)

Check `personal-os/adaptation/`:
- `autonomy-level.md` — must have Current: Level [1-4] (ERROR if missing)
- `skill-levels.md` — can be minimal
- `feedback.md` — can be empty
- `preferences.md` — can be empty

---

## Step 5: Skills Accessible

Check `.claude/skills/` directory exists and contains skill folders.
Count total skills. Spot-check 3 random skills for valid frontmatter (`name:` and `description:` present).

CLAUDE.md must exist at repo root.

---

## Step 6: Snapshot Freshness

Read `personal-os/context/snapshot.md` — check `Last Updated:` date.
Read `personal-os/context/identity.md`, `personal-os/memory/current-priorities.md`, `personal-os/adaptation/autonomy-level.md` — check their `Last Updated:` dates.

If any source file was updated *after* snapshot's `Last Updated:` date:
→ Flag as STALE: "snapshot.md is out of date — [file] was updated on [date]. Run /session-summary or ask me to refresh the snapshot."

If snapshot is more than 14 days old regardless:
→ Flag as WARNING: "Snapshot is [N] days old. Consider refreshing."

---

## Step 7: Confidence Flags

Read `personal-os/memory/confidence-flags.md`.
If any `[inferred]` items have been there for more than 7 days:
→ Surface them: "You have [N] unconfirmed inferences. Want to review them?"

---

## Step 8: Report

```
PersonalOS System Check — [date]
User: [name] | Role: [role] | Autonomy: L[N]

Directories    [✓/✗ each]
Context files  [✓/✗ each]
Memory files   [✓/✗ each]
Adaptation     [✓/✗ each]
Skills         [N] skills in .claude/skills/
Snapshot       [Fresh / STALE: reason]
Conf. flags    [N] unconfirmed inferences

Status: HEALTHY / ISSUES FOUND
```

If issues: list each with fix. Common fixes:
- Missing context files → "Re-run /onboarding-interview"
- Stale snapshot → "Ask me to rebuild your snapshot"
- Missing notifications.md → "Run /onboarding-interview Q6 or create manually" (note: this file is gitignored — it lives locally only)

---

## After This Skill

- Healthy → suggest next action based on time of day ("Generate your daily agenda?")
- Issues → offer to fix now, prioritize ERRORs before WARNINGs
- Log result to `personal-os/logs/sessions/[date]-system-check.md`
