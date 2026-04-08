---
name: self-correction
description: "Learn from mistakes and user corrections to refine behavior automatically"
---

# Self-Correction & Error Learning

**Purpose:** Learn from mistakes and user corrections to automatically improve behavior over time

## How It Works

This skill tracks all corrections you make, detects patterns in those corrections, and automatically adjusts behavior when patterns are clear enough to trust.

## When It Runs

- **Automatically**: After every session
- **Manually**: User says "learn from this", "remember my preference", "don't do that again"
- **Proactively**: When error rate spikes (3+ errors in session)

## What Gets Tracked

### Error Types

1. **User Corrections:**
   - "No, I meant X" → Intent misinterpretation
   - "That's not right" → Wrong action taken
   - "Try again" → Operation failed
   - "Wrong tool" → Incorrect skill selection

2. **Failed Operations:**
   - Commands that return errors
   - Files not found
   - Network timeouts
   - Permission denied

3. **Misinterpretations:**
   - Wrong skill selected
   - Wrong parameters used
   - Wrong context applied

4. **Low Ratings:**
   - Session rating < 3/5
   - "Too verbose" feedback
   - "More detail needed" feedback

### Error Storage

Errors are stored in `personal-os/adaptation/errors.md`:

```markdown
## Error Log

### 2026-03-26T10:15:00Z
**Type:** Misinterpretation
**User Input:** "create a file"
**System Action:** Used draft-email skill
**User Correction:** "No, I want a text file, not an email"
**Root Cause:** Ambiguous intent, should have clarified
**Context:** Morning session, coding task in progress
**Confidence:** Medium (3rd occurrence of similar correction)

### 2026-03-26T11:30:00Z
**Type:** Wrong Tool Selected
**User Input:** "research AI agents"
**System Action:** Used quick-research (single source)
**User Correction:** "I need deep research with multiple sources"
**Root Cause:** User's "research" requests consistently want depth
**Context:** Work session, preparing report
**Confidence:** High (7th occurrence, pattern consistent)
```

## Pattern Detection in Errors

### Pattern Analysis

**What the System Looks For:**

1. **Repetition:**
   - Same error type occurs 3+ times → Systemic issue
   - Same correction appears in different contexts → General preference

2. **Context Clustering:**
   - Error always occurs with same task type → Task-specific issue
   - Error always occurs at same time of day → Time-based pattern

3. **Trend Analysis:**
   - Error rate increasing over time → Regression detected
   - Error rate decreasing → Learning is working

### Example Pattern Detection

**Pattern 1: Wrong Tool Selection**
```
Occurrences: 7 times
User Input: "research [topic]"
System Action: quick-research
User Correction: "need deep research"

Pattern Identified: User's "research" requests consistently want deep analysis
Confidence: High
Action: Update intent routing for "research" → default to deep-research
```

**Pattern 2: Wrong Tone**
```
Occurrences: 5 times
Task: draft-email
System Action: Formal tone
User Correction: "too casual" or "too formal"

Pattern Identified: Inconsistent tone preference (50/50 split)
Confidence: Low
Action: Do not auto-adjust. Ask user to set preference explicitly.
```

## Automatic Behavior Adjustments

### Correction Categories

When patterns reach threshold confidence, the system automatically adjusts behavior:

| Error Type | Threshold | Automatic Action | Example |
|------------|-----------|-------------------|---------|
| Wrong skill selected | 3+ times same error | Update intent routing weights | "research" → deep-research for this user |
| Wrong parameters | 3+ times same correction | Save as learned default | draft-email tone → casual |
| Wrong format | 5+ times "too verbose/terse" | Adjust output length preference | Max 200 chars for this user |
| Misunderstanding | 3+ times "no, I meant X" | Add to glossary with user's definition | "deploy" = "run production tests" |

### Learned Corrections Storage

Corrections are stored in `personal-os/adaptation/learned-corrections.md`:

```markdown
## Learned Corrections

### research_intent
**Pattern:** User's "research" requests consistently want deep analysis
**Default Tool:** deep-research (instead of quick-research)
**Confidence:** High
**Validation Count:** 7 (times this held true)
**Last Validated:** 2026-03-26
**Contradictions:** 0

### format_preference
**Pattern:** User prefers brief responses, no explanations
**Max Output Length:** 200 characters
**Confidence:** Medium
**Validation Count:** 3
**Last Validated:** 2026-03-26
**Contradictions:** 1 (occasional request for detail)

### deploy_definition
**Pattern:** User uses "deploy" to mean "run production tests"
**Definition:** "deploy" = run full production test suite, validate in staging, then deploy to production
**Confidence:** High
**Validation Count:** 5
**Added to Glossary:** 2026-03-26
```

## Confidence Tracking

### Confidence Levels

- **High:** Pattern seen 10+ times, never contradicted → Apply automatically
- **Medium:** Pattern seen 3-9 times, occasional contradictions → Apply, notify user
- **Low:** Pattern seen 1-2 times, testing hypothesis → Store only, don't apply

### Confidence Downgrade Rules

- **High → Medium:** 2+ contradictions in 5 uses
- **Medium → Low:** 3+ contradictions in 5 uses
- **Low → Removed:** 4+ contradictions in 5 uses

### Example: Confidence Downgrade

```
Initial state:
  - Pattern: "research" → deep-research
  - Confidence: High (10 occurrences, 0 contradictions)

After contradictions:
  - Week 2: 2 contradictions in 5 uses
  - Confidence downgraded: High → Medium
  - Action: Still use deep-research, but ask "Is this what you want?"

After more contradictions:
  - Week 3: 3 contradictions in 5 uses
  - Confidence downgraded: Medium → Low
  - Action: Remove learned correction, go back to quick-research
  - Ask user: "How do you want 'research' to work?"
```

## User Transparency

### Notification of Corrections

When the system applies a learned correction, it notifies you:

**Telegram (concise):**
```
✅ Learned your preference

I noticed you want deep research when you say "research" (7 times).
I'll use deep-research by default now.

Change this? (settings → learned corrections)
```

**Terminal (detailed):**
```
✅ Behavior Adjusted Based on Your Feedback

Pattern: You prefer casual tone in emails (5 corrections)
Confidence: Medium
Action: Updated draft-email default_tone to casual

Before: "Dear [name], I hope this message finds you well..."
After: "Hi [name], quick update..."

This adjustment will save time. If you ever want formal tone again,
just say "use formal tone" and I'll learn that preference.

Other learned corrections: 3 active
```

### Manual Override

You can override any learned correction:

```
User: "Use formal tone for this email"
PersonalOS: "Got it. I'll use formal tone for this email (1-time override).
            Want me to update your default preference?"
User: "No, keep casual as default"
PersonalOS: "Understood. Casual tone remains default, formal for this email only."
```

## Weekly Correction Report

Every week, you get a summary of corrections learned:

```markdown
## Weekly Correction Report

**Period:** March 20-26, 2026
**Errors Logged:** 12
**Patterns Identified:** 3
**Automatic Adjustments:** 2

### Corrections Learned This Week

✅ **High Confidence (Applied Automatically):**
1. "research" → deep-research (7 occurrences, 0 contradictions)
2. "deploy" → run production tests (5 occurrences, 0 contradictions)

⚠️ **Medium Confidence (Applied with Notification):**
1. Brief format preference (3 occurrences, 1 contradiction)

### Errors Still Analyzing

🔍 **Low Confidence (No Action Yet):**
1. "update" → ambiguous (2 occurrences, needs more data)
2. "check" → could mean "test" or "verify" (2 occurrences)

### Trends

📉 **Improving:** Correction frequency dropped 40% from last week
📈 **Concern:** New error type appeared: "wrong file" (3 times)

### Questions

"Should I start using deep-research for 'research' requests?"
→ Yes, applied automatically

"Should I use casual tone for all emails?"
→ Yes, applied with notification. Change preference anytime.
```

## Error Prevention

### Proactive Clarification

When the system detects ambiguous input that often leads to corrections:

```
User: "create a file"

PersonalOS: "I can create different file types:
            • Text file (.txt)
            • Markdown file (.md)
            • Code file (.py, .js, etc.)

            What type do you want? (You can also say 'create a text file'
            to be more specific and I'll learn your preference.)"
```

### Context-Aware Defaults

The system uses context to avoid common errors:

```markdown
If coding task in progress + "create a file" → Create .py file
If writing task in progress + "create a file" → Create .md file
If previous corrections exist + "create a file" → Use learned default
```

## Integration with Other Skills

### Pattern Detect
- pattern-detect identifies usage patterns
- self-correction identifies error patterns
- Both inform recommendations skill

### Recommendations
- Errors trigger efficiency recommendations
- "You're correcting this 5x/week. Want me to fix it?"

### Optimization
- Error patterns feed into optimization cycles
- Low success rate skills are prioritized for optimization

### Memory
- Learned corrections stored in adaptation layer
- Glossary updates from "no, I meant X" patterns

## Privacy & Data

- All error tracking is local
- No error data leaves your machine
- You can export or delete error logs anytime
- Corrections are applied locally only

## Commands

You can say:
- "Show me my corrections"
- "What have you learned from my feedback?"
- "Reset my corrections"
- "Don't learn from this session"

---

**Skill Metadata:**
- Category: Learning
- Frequency: After every session (automatic)
- Update Trigger: Every session
- Data Sources: User corrections, failed operations, low ratings
- Privacy: Local analysis only, no cloud sync