---
name: skill-creator
description: >
  Create, improve, test, and package Claude Code skills. Use whenever the user
  wants to build a skill from scratch, turn a workflow into a reusable skill,
  edit or improve an existing SKILL.md, or make a skill trigger more reliably.
  Also use when the user asks how to make the agent remember a workflow, do
  something consistently in future sessions, or share a skill with others —
  even if they don't use the word "skill." For skills that produce creative or
  generative output (reports, documents, HTML, designs) where quality varies
  across runs, use the Architect path.
---

# Skill Creator

Create, test, and distribute Claude Code skills — from a quick draft to a fully
evaluated, production-ready workflow.

## Pick your path

| Path | When to use |
|------|-------------|
| **Draft only** | Need a working SKILL.md fast |
| **Draft + test** | Want to verify the skill works before using it |
| **Full eval** | Want baseline comparisons, metrics, description optimization |
| **Architect** | Skill produces creative/generative output where quality varies |

When unsure, ask: *"Do you want a quick draft, or test and iterate?"*

---

## Skill format (Claude Code native)

```
.claude/skills/<skill-name>/
├── SKILL.md             ← required; name must match directory
├── references/          ← optional; detailed docs loaded on demand
├── agents/              ← optional; subagent instruction files
└── assets/              ← optional; templates, static files
```

Skills in `.claude/skills/` are auto-discovered and `/slash-invokable`. No installation step.

### Frontmatter

```yaml
---
name: kebab-case-name     # matches directory name; [a-z0-9-] only
description: >            # the triggering mechanism — write this carefully
  What it does and when to use it. List phrases and contexts.
---
```

### Three-level loading

Context costs tokens. Load only what's needed for the current step.

1. **Frontmatter** — always in context for all skills (description only)
2. **SKILL.md body** — loads when skill activates; keep under ~300 lines
3. **`references/`** — loaded on demand by explicit agent instruction

Everything that isn't needed for the default workflow goes in `references/`.
Write explicit load instructions: *"Read `references/api.md` when you need exact
schema details."* The agent pulls what it needs; it doesn't preload everything.

---

## Step 1 — Capture intent

Extract from the conversation first. Only ask what you can't infer:

- What does this skill help the agent do?
- When should it activate? What phrases or contexts trigger it?
- Who consumes the output — just the agent, or also a human watching?
- What does good output look like?

### Step 1b — The human-agent question

Before writing a single line, answer: **does a human need to observe or trust
what this skill produces?**

If yes — and for most skills the answer is yes — the skill must design for
both consumers explicitly:

- What does the **agent** need? Exact values, parseable structure, correct IDs.
- What does the **human** need? Names, confirmation, readable format, progress signals.

These aren't in conflict. A skill that names its targets, confirms its actions,
and splits detailed reference material into on-demand files serves both. A skill
that returns raw data dumps and monolithic context serves neither well.

---

## Step 2 — Write the SKILL.md

### The description is the most important part

It's the only thing read before deciding to load the skill. Write it as an
instruction, not a label. List concrete phrases and contexts.

**Weak:** `"Helps with meeting notes."`

**Strong:** `"Capture, organize, and synthesize meeting notes with automatic
action item extraction. Use when the user mentions a meeting that just happened,
wants to write up notes, or says 'we discussed X and decided Y.'"`

### Body writing style

- Imperative: "Run the script" not "The script should be run"
- Explain the *why* — agents follow reasoning better than bare commands
- Clear default → brief mention of alternatives
- Exact output format → provide a template (don't describe it)
- **Gotchas section** for non-obvious things the agent will get wrong without being told

### Calibrating length and detail

| Task type | Approach |
|-----------|----------|
| Multiple valid approaches | Explain the goal; let the agent decide |
| Preferred pattern exists | Pseudocode or parameterized example |
| Fragile / consistency-critical | Exact script, minimal free variables |

### Context split design

- SKILL.md body → agent's working context for the default workflow
- `references/` → detailed patterns, examples, full API — pulled when needed
- Don't put everything in SKILL.md

---

## Step 3 — Test (optional but recommended)

Propose 2–3 test prompts. Share them: *"Here are test cases — do these look right?"*

Run with and without the skill, compare outputs. Ask:
- Does the with-skill output actually follow the skill's instructions?
- Is the output readable/trustworthy to a human, not just correct for an agent?
- What would go wrong on edge cases?

When improving: generalize over specific prompts. Lean prompts often outperform
verbose ones. If every run reinvented the same helper, bundle it in a script.

For full grading methodology: read `references/eval.md`

---

## Step 4 — Deliver

Claude Code skills are file-based and auto-discovered. No packaging needed.

```bash
# Write to the correct path — that's all
.claude/skills/<skill-name>/SKILL.md
```

**To share with others:**
- Copy the `<skill-name>/` directory
- Recipient drops it into their `.claude/skills/` — it's immediately active
- Or include it in a repo and it travels with the codebase

**Common failures to check:**
- `name:` field doesn't match the directory name
- Missing `---` frontmatter delimiters
- Uppercase or underscores in skill name (use `kebab-case` only)
- SKILL.md body over ~300 lines (move detail to `references/`)

For reference: browse the 87 existing skills in `.claude/skills/` — particularly
`onboarding-interview`, `system-check`, and `session-summary` for well-structured examples.

---

## Step 5 — Optimize the description (if not triggering)

1. Write 10–15 test phrases — mix of should/shouldn't trigger
2. Include near-misses that share keywords but need something different
3. Run and note which loaded the skill
4. Revise to address the pattern, not specific wording
5. Repeat until stable

---

## Architect Path

For skills that produce creative/generative output where quality varies.
A self-correcting loop: generate → grade → extract patterns → iterate.

Read `references/architect-workflow.md` before starting this path.

**Loop overview:**
```
1. Capture intent + style examples + anti-examples
2. Design quality rubric (before writing any skill code)
3. Draft minimal SKILL.md
4. Generate outputs on 3-4 varied inputs
5. Grade against rubric
6. Extract patterns (wins) + anti-patterns (failures)
7. Create reference templates from best outputs
8. Update SKILL.md with lessons
9. Repeat 4-8 until quality stabilizes (2-3 rounds)
10. Deliver
```

Stop when: avg score ≥ 75/100, no fails in 2+ consecutive rounds, anti-pattern
list stabilized, at least 2 varied reference templates exist.

---

## Reference files

Load these when the task requires them — not by default:

- `references/eval.md` — grading methodology, blind A/B comparison
- `references/architect-workflow.md` — full architect path workflow
- `references/rubric-template.md` — default quality rubric format
