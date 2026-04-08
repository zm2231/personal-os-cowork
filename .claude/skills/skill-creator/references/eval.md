# Advanced Eval Workflow

Full quantitative eval loop for skills where you want baseline comparisons,
graded assertions, and a browser-based reviewer.

---

## Workspace layout

```
<skill-name>-workspace/
├── iteration-1/
│   ├── eval-<name>/
│   │   ├── eval_metadata.json
│   │   ├── with_skill/outputs/
│   │   ├── without_skill/outputs/
│   │   ├── grading.json
│   │   └── timing.json
│   ├── benchmark.json
│   └── benchmark.md
└── iteration-2/
    └── ...
```

Create directories as you go — don't pre-create the whole tree.

---

## Writing evals

Save to `evals/evals.json` in the skill directory:

```json
{
  "skill_name": "my-skill",
  "evals": [
    {
      "id": 1,
      "prompt": "User's realistic task prompt",
      "expected_output": "Human-readable description of success",
      "files": [],
      "expectations": [
        "The output includes X",
        "The script used Y approach",
        "The result is a valid JSON file"
      ]
    }
  ]
}
```

Write 2–3 evals for the first iteration. Prompts should be realistic — the kind
a real user would actually send. Don't write assertions yet; draft them while
runs are in progress.

---

## Running evals (step by step)

### 1. Spawn all runs in the same turn

For each eval, launch two subagents simultaneously — with-skill and baseline.

**With-skill:**
```
Execute this task:
- Skill path: <path-to-skill>
- Task: <eval prompt>
- Input files: <eval files, or "none">
- Save outputs to: <workspace>/iteration-N/<eval-name>/with_skill/outputs/
- What to save: <files the user cares about>
```

**Baseline** (for a new skill: no skill; for an improvement: snapshot of old version):
```
Execute this task WITHOUT using any skill:
- Task: <eval prompt>
- Save outputs to: <workspace>/iteration-N/<eval-name>/without_skill/outputs/
```

Write `eval_metadata.json` per eval:
```json
{
  "eval_id": 1,
  "eval_name": "descriptive-name",
  "prompt": "The task prompt",
  "assertions": []
}
```

### 2. Draft assertions while runs are in progress

Good assertions are objectively verifiable and discriminating — they pass when
the skill genuinely succeeds and fail when it doesn't. Subjective quality is
better evaluated qualitatively.

Update `eval_metadata.json` and `evals/evals.json` with finalized assertions.

### 3. Capture timing when each subagent completes

The task notification contains `total_tokens` and `duration_ms`. Save
immediately — this is the only opportunity:

```json
{
  "total_tokens": 84852,
  "duration_ms": 23332,
  "total_duration_seconds": 23.3
}
```

### 4. Grade and aggregate

**Grade each run** — spawn a grader subagent with `agents/grader.md`. Save
results to `grading.json` in each run directory. For programmatically verifiable
assertions, write and run a script rather than eyeballing.

**Aggregate manually** — after grading all runs, compile a `benchmark.md` summary:

```markdown
# Benchmark: <skill-name> — Iteration N

| Eval | With skill | Without skill | Delta |
|------|-----------|---------------|-------|
| eval-1 | X/Y passed | A/B passed | +N |
| eval-2 | X/Y passed | A/B passed | +N |

**Overall pass rate:** with-skill X%, without-skill Y%
**Key wins:** [where the skill clearly helped]
**Key gaps:** [where it didn't]
```

Present the summary in-conversation and ask: *"Here's what I found — any of these
outputs you want to dig into? Come back with feedback and I'll iterate."*

### 5. Read feedback and improve

When the user returns, read `feedback.json`:
```json
{
  "reviews": [
    {"run_id": "eval-0-with_skill", "feedback": "the chart is missing axis labels"},
    {"run_id": "eval-1-with_skill", "feedback": ""}
  ],
  "status": "complete"
}
```

Empty feedback = the user thought it was fine. Focus on entries with specific
complaints. Kill the viewer when done: `kill $VIEWER_PID`.

---

## Iteration loop

After improving the skill:

1. Apply improvements to the skill
2. Rerun all evals into `iteration-N+1/` (include baselines)
3. Produce updated `benchmark.md` comparing iteration N+1 vs N
4. Present diff in-conversation; ask for feedback
5. Repeat until: user is satisfied, no meaningful progress, or avg score ≥ 75

---

## Blind comparison (optional)

For rigorous A/B testing between two versions without knowing which produced which:

1. Spawn a comparator subagent with `agents/comparator.md`
2. Give it `output_a_path`, `output_b_path`, the eval prompt, and expectations
3. It produces `comparison.json` with a winner and rubric
4. Spawn an analyzer subagent with `agents/analyzer.md` to explain why the winner won

See `schemas.md` for the full `comparison.json` and `analysis.json` schemas.

---

## Description optimization loop

After the skill content is finalized, optimize triggering accuracy.

**Build trigger eval queries** (~20 total):
- 8–10 should-trigger: vary phrasing (formal/casual), explicitness, length, complexity
- 8–10 should-not-trigger: near-misses that share keywords but need something different

```json
[
  {"query": "ok so my boss wants me to add a profit margin column...", "should_trigger": true},
  {"query": "write a python function that reads a csv and uploads rows to postgres", "should_trigger": false}
]
```

**Split 60/40 train/validation** before optimizing to avoid overfitting.

**Run the optimization loop manually** (no script needed for Claude Code):

1. For each query in the training set: prompt Claude and check if the skill loaded
2. Note which queries triggered correctly and which didn't
3. Propose a revised description that addresses the misses
4. Re-test against the full set
5. Repeat until stable (typically 2–4 rounds)

**Apply the result:** update `description` in SKILL.md frontmatter. Keep it under
~1024 chars. Test a few fresh prompts manually to confirm.
