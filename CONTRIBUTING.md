# Contributing to PersonalOS

PersonalOS is open source. Skills are plain markdown — fork, build, share.

---

## Types of Contributions

- **New skills** — add capabilities to `.claude/skills/`
- **Skill improvements** — fix bugs, improve trigger descriptions, add examples
- **Documentation** — fix typos, improve guides
- **Bug reports** — behavior you expected vs. what happened
- **Feature requests** — with use case and integration notes

---

## Getting Started

```bash
# Fork and clone
git clone https://github.com/zm2231/personal-os-cowork.git
cd personal-os-cowork

# Add upstream remote
git remote add upstream https://github.com/zm2231/personal-os-cowork.git

# Create a branch
git checkout -b feature/my-new-skill
```

Open in Claude Code (`claude`) — say "Set up my PersonalOS" to onboard if needed.

---

## Skill Development

### Format

Every skill lives at `.claude/skills/<name>/SKILL.md` and requires only two frontmatter fields:

```markdown
---
name: skill-name
description: >
  One or two sentences describing what this skill does and what phrases trigger it.
  Be specific — Claude uses this to route to the skill automatically.
---

# Skill Name

[Skill content here]
```

That's it. Claude Code auto-discovers skills by reading all `.claude/skills/*/SKILL.md` files. No registration, no index to update.

### Three-level loading

- **Frontmatter** (`name` + `description`) — always in context, used for routing
- **SKILL.md body** — loaded when the skill is activated
- **`references/` subdirectory** — heavy reference files loaded only when the skill explicitly instructs Claude to read them

Keep SKILL.md under ~300 lines. Move lookup tables, templates, and examples to `references/` files.

### Content standards

1. **Trigger phrase specificity**: The `description` field is how Claude routes to your skill. Include the phrases users actually type. Bad: "Helps with writing." Good: "Write, rewrite, or edit content — trigger when user says 'rewrite this', 'write in my voice', or 'make this sound like me'."
2. **Read before acting**: Skills should read context files (`personal-os/context/identity.md`, etc.) before producing output.
3. **Write to the right files**: Memory updates go to `personal-os/memory/`, never to `.claude/skills/`.
4. **No hardcoded personal data**: No real names, tokens, IDs, or URLs in skill files.

### Example skill

```markdown
---
name: quick-research
description: >
  Research a topic quickly and return a structured summary. Trigger when user
  asks "research X", "look up X", or "what do you know about X".
---

# Quick Research

Read `personal-os/context/identity.md` to understand the user's domain before framing results.

## Process

1. Clarify scope if ambiguous (one sentence max)
2. Research and synthesize
3. Return: key finding, 3-5 supporting points, one open question

## Output

Match the user's communication style from `personal-os/context/communication-style.md`.
If not found, default to brief and direct.
```

---

## Testing Your Skill

1. Open the repo in Claude Code
2. Trigger your skill via `/skill-name` or a natural language phrase
3. Verify it reads the right context files
4. Verify output quality and format
5. Test edge cases: what if context files don't exist?

---

## Submission

1. **Create a pull request** with a clear title: `Add [skill-name]` or `Fix [description]`
2. **Describe**: what it does, why it's useful, how you tested it
3. **Link issues** if applicable: `Fixes #123`

PRs are squash-merged. One clean commit per contribution.

---

## Code of Conduct

Be direct, respectful, and constructive. We welcome contributors of all experience levels. Harassment, personal attacks, or publishing others' private information will result in removal.

Report issues: open a GitHub issue at https://github.com/zm2231/personal-os-cowork/issues

---

## Getting Help

- Open a GitHub issue with the `question` label
- Check README.md for architecture overview
- Use `/skill-creator` inside PersonalOS to build and test new skills interactively
