# Changelog

## Current

### 88 native Claude Code skills — April 2026

PersonalOS rebuilt as a native Claude Code system. Skills live in `.claude/skills/<name>/SKILL.md`
and are auto-discovered — no registration, no install step, no session unlock thresholds.

**What's included:**

- Full onboarding interview (identity, priorities, communication style, team, glossary, output format)
- Three-layer memory: `personal-os/context/` / `personal-os/memory/` / `personal-os/adaptation/`
- Stop hook — blocks session exit until notes are written
- Obsidian and Notion output format spec (`personal-os/context/output-format.md`)
- Autonomy ladder: L1 Guardian → L2 Supervised → L3 Trusted → L4 Anticipatory
- Skill-creator with eval loop (draft / draft+test / full eval / architect paths)
- Voice-style template (generic; personalizes via `personal-os/context/voice-profile.md`)
- 88 skills across: daily work, writing, engineering, research, strategy, productivity

**Architecture:**

Skills are markdown files. Claude Code reads frontmatter for routing, full body on activation,
and `references/` subdirectories on demand. Personal data lives in `personal-os/` (gitignored
for credentials and session logs). Skills live in `.claude/skills/` (system, committed).

---

Older pre-release notes (v0.1.0-alpha through v1.1.0) described a fictional `skill-packs/`
packaging system and progressive session unlock tiers. Those designs were not shipped.
This is the first public release.
