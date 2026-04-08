---
name: optimization
description: "Continuously optimize system performance based on metrics and patterns"
---

# System Optimization

**Purpose:** Continuously improve PersonalOS performance by analyzing metrics and applying targeted optimizations

## How It Works

This skill tracks performance metrics weekly, identifies improvement opportunities, applies optimizations automatically (with safeguards), and rolls back if regressions occur.

## When It Runs

- **Automatically**: Weekly optimization cycle (every 7 days or 10 sessions)
- **Manually**: User says "optimize my system", "make it faster", "improve performance"
- **Proactively**: When metrics drop significantly (regression detection)

## Optimization Dimensions

### 1. Response Speed

Make the system faster:

**Metrics Tracked:**
- Time to load context files
- Time to select and load skills
- Time to execute common operations
- Response generation time

**Optimizations:**
- Cache frequently accessed files (identity.md, priorities.md)
- Preload skills before they're needed
- Prioritize high-confidence patterns
- Eliminate redundant database queries

**Example:**
```
Before: Loading identity.md takes 500ms (read from disk)
After: Loading identity.md takes 20ms (cached in memory)
Improvement: 25x faster
```

### 2. Accuracy

Make the system more correct:

**Metrics Tracked:**
- Skill success rate (did skill accomplish user's goal?)
- User satisfaction ratings
- Correction frequency (how often user corrects the system)
- Misinterpretation rate

**Optimizations:**
- Adjust intent routing based on success rate
- Refine parameter defaults based on corrections
- Update glossary with learned terms
- Improve pattern detection thresholds

**Example:**
```
Before: "research" intent routes to quick-research (65% success rate)
After: "research" intent routes to deep-research (92% success rate)
Improvement: +27 percentage points
```

### 3. Efficiency

Make workflows more streamlined:

**Metrics Tracked:**
- Steps per workflow (too many?)
- User interaction frequency (can we reduce?)
- Time to complete common tasks
- Automation coverage (what's still manual?)

**Optimizations:**
- Eliminate redundant steps in workflows
- Consolidate similar skills
- Automate repetitive user interactions
- Create shortcuts for frequent sequences

**Example:**
```
Before: "publish code" = 5 separate commands (format, lint, test, commit, push)
After: "publish code" = 1 command (automated workflow)
Improvement: 80% less user interaction
```

## Optimization Cycle

### 1. Collect Metrics

Every week, the system collects:

```yaml
metrics:
  skill_success_rate:
    quick-research: 0.65
    deep-research: 0.92
    draft-email: 0.88
    publish-code: 0.95

  user_ratings:
    avg_session_rating: 4.2/5
    low_rating_sessions: 2 (<3/5)

  corrections_per_week:
    total: 15
    by_type:
      wrong_tool: 7
      wrong_parameters: 5
      format_issues: 3

  response_times:
    avg: 3.2 seconds
    p95: 8.5 seconds
    p99: 12.1 seconds

  automation_coverage:
    tasks_per_week: 150
    automated_tasks: 45 (30%)
    manual_tasks: 105 (70%)
```

### 2. Identify Opportunities

The system analyzes metrics to find improvements:

```yaml
optimization_opportunities:
  - id: opt_001
    type: accuracy
    dimension: intent_routing
    issue: "quick-research has low success rate (65%)"
    impact: "User corrections: 7x/week"
    estimated_benefit: "+27% success rate, -5 corrections/week"
    confidence: high
    priority: high

  - id: opt_002
    type: speed
    dimension: caching
    issue: "identity.md loaded from disk every time"
    impact: "Adds 500ms to every session start"
    estimated_benefit: "-480ms session start time (96% faster)"
    confidence: very_high
    priority: high

  - id: opt_003
    type: efficiency
    dimension: automation
    issue: "git workflow manual (13x/week, 5 steps)"
    impact: "Time spent: ~2 hours/week"
    estimated_benefit: "-1.5 hours/week (75% time saved)"
    confidence: high
    priority: medium
```

### 3. Apply Optimizations

Optimizations are applied based on confidence and impact:

```yaml
optimization_rules:
  very_high_confidence:
    - Automatically apply
    - Notify user after

  high_confidence:
    - Apply automatically if safe
    - Ask for confirmation if impactful

  medium_confidence:
    - Ask user before applying

  low_confidence:
    - Store only, monitor for more data
```

**Example: Applying Optimizations**

```
Opt 002 (Speed, Very High Confidence):
  Action: Enable identity.md caching
  Process: Automatic
  Notification: "✅ Optimized: Session starts 96% faster now"

Opt 001 (Accuracy, High Confidence, High Impact):
  Action: Update "research" intent routing to deep-research
  Process: Ask for confirmation
  Notification: "💡 Optimization suggestion:
                   I can improve 'research' accuracy by 27%.
                   Route 'research' to deep-research instead of quick-research?

                   This will save you ~5 corrections/week.

                   Approve? (yes/no)"

Opt 003 (Efficiency, Medium Confidence):
  Action: Create git automation workflow
  Process: Ask for confirmation
  Notification: "💡 Automation opportunity:
                   You manually run git commands 13x/week.
                   I can automate this and save ~1.5 hours/week.

                   Create 'publish-code' workflow? (yes/no/see details)"
```

### 4. Validate Results

After optimization, the system tracks:

```yaml
optimization_results:
  - id: opt_002
    applied: 2026-03-26
    metrics_before:
      session_start_time: 520ms
    metrics_after:
      session_start_time: 20ms
    improvement: "96% faster"
    validation_period: 7 days
    status: validated

  - id: opt_001
    applied: 2026-03-26 (user approved)
    metrics_before:
      research_success_rate: 0.65
      corrections_per_week: 7
    metrics_after: (pending 7-day validation)
    status: monitoring
```

## Regression Detection

### What Triggers Rollback

If an optimization causes problems:

```yaml
regression_triggers:
  success_rate_drop: "> 10%"  # Skill success rate drops >10%
  correction_increase: "> 50%"  # User corrections increase >50%
  rating_drop: "> 0.5/5"  # Session rating drops >0.5/5
  response_time_increase: "> 20%"  # Response time increases >20%
```

### Rollback Mechanism

```yaml
optimization_log:
  - id: opt_004
    change: "Set draft-email default_tone to casual"
    applied: 2026-03-20
    metrics_before:
      success_rate: 0.92
      corrections_per_week: 8
    metrics_after_7_days:
      success_rate: 0.78  # Dropped 15% ⚠️
      corrections_per_week: 12  # Increased 50% ⚠️
    status: regressed
    action: "Rollback to formal tone"
    rollback_date: 2026-03-27
    lesson_learned: "User prefers formal tone for this task type"
```

### User-Initiated Rollback

You can always roll back manually:

```
User: "Undo that optimization"
PersonalOS: "I rolled back the last optimization:
            'Set draft-email default_tone to casual'

            Back to: formal tone (default)
            Next optimization review: 2026-04-02"
```

## Optimization Types

### A. Intent Routing Optimization

**Problem:** Wrong skill selected frequently

```yaml
Before:
  research:
    default_tool: quick-research
    success_rate: 0.65
    corrections_per_week: 7

After optimization:
  research:
    default_tool: deep-research
    success_rate: 0.92
    corrections_per_week: 2
    reason: "User consistently wanted deep research (13/20 corrections)"
    confidence: high
    date_applied: 2026-03-26
    validation_status: monitoring
```

### B. Parameter Default Optimization

**Problem:** User repeatedly changes same parameter

```yaml
Before:
  draft-email:
    default_tone: formal
    corrections: 8/week ("too formal", "use casual")

After optimization:
  draft-email:
    default_tone: casual
    corrections: 1/week
    reason: "User prefers casual tone (8/10 corrections)"
    confidence: high
    date_applied: 2026-03-26
    validation_status: validated
```

### C. Workflow Optimization

**Problem:** User performs same sequence repeatedly

```yaml
Before:
  User manually:
    - format code
    - run tests
    - commit
    - push
  Frequency: 12x/week
  Time spent: ~2.5 hours/week

After optimization:
  Automation: publish-code
  Usage: 12x/week
  Time spent: ~0.5 hours/week
  time_saved: ~2 hours/week
  date_created: 2026-03-26
  user_satisfaction: positive
```

### D. Caching Optimization

**Problem:** Repeatedly loading same files from disk

```yaml
Before:
  identity.md: Loaded from disk (500ms per session)
  priorities.md: Loaded from disk (300ms per session)
  Total overhead: 800ms per session start

After optimization:
  identity.md: Cached in memory (20ms per session)
  priorities.md: Cached in memory (15ms per session)
  Total overhead: 35ms per session start
  improvement: 95.6% faster
  date_applied: 2026-03-26
  validation_status: validated
```

## Weekly Optimization Report

Every week, you get a summary:

```markdown
## Weekly Optimization Report

**Period:** March 20-26, 2026
**Optimization Cycle:** 12 of 52
**Metrics Collected:** 5 dimensions (speed, accuracy, efficiency)

### Performance Summary

📊 **Current Metrics:**
• Skill Success Rate: 87% (↑ 5% from last week)
• User Satisfaction: 4.2/5 (↑ 0.2 from last week)
• Corrections/Week: 15 (↓ 3 from last week)
• Avg Response Time: 3.2s (↓ 0.4s from last week)
• Automation Coverage: 30% (↑ 5% from last week)

✅ **Trends Improving:**
• Accuracy: +5 percentage points
• Efficiency: +5% automation coverage
• Speed: -0.4s response time

### Optimizations Applied This Week

✅ **High Confidence (Automatic):**
1. identity.md caching (speed)
   Status: ✅ Validated
   Improvement: 96% faster session starts
   User Feedback: None

⚠️ **Medium Confidence (Approved by User):**
2. Git automation workflow (efficiency)
   Status: ⏳ Monitoring
   Expected: Save 1.5 hours/week
   User Feedback: Pending 7-day validation

💡 **User-Requested:**
3. Research intent routing (accuracy)
   Status: ⏳ Monitoring
   Expected: +27% success rate
   User Feedback: Pending 7-day validation

### Optimization Opportunities Identified

🎯 **High Priority (High Confidence):**
1. Slack message automation (9x/week, ~1 hour savings)
   Recommended action: Create automation
   Your approval needed: yes/no

2. Meeting notes template (8x/week, ~30 min/meeting)
   Recommended action: Create template
   Your approval needed: yes/no

⚠️ **Medium Priority (Medium Confidence):**
3. Calendar blocking optimization (5x/week)
   Recommended action: Monitor for more data

### Regression Monitoring

🟢 **All Optimizations Stable:**
• No regressions detected this week
• All active optimizations performing well
• User satisfaction stable

### Performance Comparison

| Metric | This Week | Last Week | Change |
|--------|-----------|-----------|--------|
| Success Rate | 87% | 82% | +5% ✅ |
| Satisfaction | 4.2/5 | 4.0/5 | +0.2 ✅ |
| Corrections | 15 | 18 | -3 ✅ |
| Response Time | 3.2s | 3.6s | -0.4s ✅ |
| Automation | 30% | 25% | +5% ✅ |

### Next Optimization Cycle

**Date:** April 2, 2026
**Metrics to Watch:**
• Git automation validation results
• Research routing validation results
• Slack automation opportunity

**Questions:**
"Should I create the Slack automation workflow?" (pending)
"Should I create the meeting notes template?" (pending)

### User Feedback

Have you noticed any issues with recent optimizations?
- "Yes" → I'll investigate and rollback if needed
- "No" → Great, I'll keep improving
- "Speed it up more" → I'll prioritize speed optimizations
```

## User Control

### Manual Optimization Request

```
User: "Optimize my system"
User: "Make it faster"
User: "Improve performance"

PersonalOS: Running full optimization cycle...
           • Collecting metrics... (5 dimensions)
           • Analyzing opportunities... (12 identified)
           • Applying high-confidence optimizations... (3 applied)
           • Waiting for your approval... (2 pending)

           Results:
           ✅ Session starts 96% faster (applied)
           ⏳ Git automation pending approval (saves 1.5 hours/week)

           Approve pending optimizations? (yes/no/details)
```

### Disable Specific Optimizations

```
User: "Don't optimize my routing"
PersonalOS: "Got it. I won't apply intent routing optimizations.

            I'll still optimize:
            • Speed (caching, response times)
            • Efficiency (automations, workflows)

            Re-enable anytime: 'enable routing optimization'"
```

### Disable All Optimizations

```
User: "Stop optimizing"
PersonalOS: "Understood. I'll stop applying optimizations.

            I'll still track metrics for your information,
            but I won't make any automatic changes.

            Re-enable anytime: 'enable optimizations'"
```

## Integration with Other Skills

### Pattern Detect
- pattern-detect identifies patterns
- optimization analyzes patterns for optimization opportunities

### Self-Correction
- Error patterns feed into optimization cycles
- Low success rate skills are prioritized for optimization

### Recommendations
- Optimization opportunities are shared with recommendations
- Both suggest improvements from different angles

### Memory
- Optimization results stored in adaptation layer
- Metrics tracked over time for trend analysis

## Success Metrics

The optimization system tracks:

- **Performance Improvements:** % improvement in speed/accuracy/efficiency (target: >15%/week)
- **Validation Rate:** % of optimizations that pass validation (target: >90%)
- **Regression Rate:** % of optimizations that need rollback (target: <5%)
- **User Satisfaction:** Satisfaction with applied optimizations (target: >4.0/5)

## Privacy & Data

- All metric collection is local
- No metric data leaves your machine
- You can export or delete optimization logs anytime

## Commands

You can say:
- "Optimize my system"
- "Make it faster"
- "Show me optimization report"
- "Stop optimizing"
- "Undo last optimization"
- "Enable/disable [specific] optimization"

---

**Skill Metadata:**
- Category: Learning
- Frequency: Weekly automatic
- Update Trigger: Every 7 days or 10 sessions
- Data Sources: Performance metrics, user feedback, patterns
- Privacy: Local analysis only, no cloud sync