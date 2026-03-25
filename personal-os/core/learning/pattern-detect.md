---
name: pattern-detect
type: learning
tier: core
description: Synthesize weekly patterns from usage data and generate actionable insights
triggers:
  - Weekly automatic review
  - User requests "weekly pattern report" or "pattern analysis"
frequency: weekly
---

# Pattern Detection & Weekly Synthesis

**Purpose:** Discover recurring patterns in your work and provide actionable insights

## How It Works

This skill analyzes all usage data from the past week to identify:
- What's working well
- What needs improvement
- Trends and changes in behavior
- Optimization opportunities

## When It Runs

- **Automatically**: Every 7 days of usage (or 10 sessions, whichever comes first)
- **Manually**: User requests "weekly pattern report" or "pattern analysis"

## Weekly Pattern Report Template

```markdown
## Weekly Pattern Report

**Period:** [Start Date] to [End Date]
**Sessions:** [Number]
**Tasks Completed:** [Number]
**Average Rating:** [Score]/5

### What's Working

✅ **High-Impact Patterns**
- [Pattern 1]: [Why it works, metrics]
- [Pattern 2]: [Why it works, metrics]

✅ **Efficient Workflows**
- [Workflow]: Time saved, frequency used
- [Workflow]: Time saved, frequency used

✅ **Optimal Conditions**
- [Time/Productivity correlation]
- [Task/Environment correlation]

### What Needs Improvement

⚠️ **Frustration Points**
- [Issue]: [Frequency, impact, suggestions]

⚠️ **Inefficient Patterns**
- [Pattern]: [Why inefficient, alternatives]

⚠️ **Recurring Corrections**
- [Correction type]: [Frequency, root cause]

### Trends & Changes

📈 **Improving**
- [Metric]: [Trend, rate of improvement]

📉 **Declining**
- [Metric]: [Trend, rate of decline]

🔄 **Shifting Patterns**
- [Pattern change]: [Old pattern → New pattern, why]

### Recommendations

🎯 **Immediate Actions (This Week)**
1. [Action]: [Why, expected impact]
2. [Action]: [Why, expected impact]

📋 **Process Improvements**
- [Process]: [Current state, proposed change, benefit]

🔧 **Tool/Workflow Changes**
- [Tool/Workflow]: [Current usage, suggested optimization]

### Signal Summary

**Explicit Feedback:**
- Average rating: [Score]/5
- Most common feedback: [Category, examples]
- Corrections made: [Number], [Most common type]

**Implicit Signals:**
- Peak productivity window: [Time range]
- Most frequent task type: [Type]
- Average session length: [Duration]
- Tool preference changes: [Changes detected]

---

**Next Review:** [Date]
**Questions or Feedback:** Ask anytime
```

## Signal Types Analyzed

### Explicit Signals (User-Provided)

#### Ratings (1-5 Scale)
- Track average rating over time
- Identify low-rating patterns
- Correlate ratings with task types, times, tools

#### Feedback Comments
- "Too verbose" → Adjust output length
- "More detail needed" → Increase depth
- "Wrong tool" → Update routing logic
- "Perfect!" → Reinforce successful patterns

#### Corrections
- "No, I meant X" → Track misunderstanding patterns
- "That's not right" → Identify error-prone contexts
- "Try again" → Detect failure modes

### Implicit Signals (Auto-Captured)

#### Tone Analysis
- Casual → Formal shift: Adapt communication style
- Urgent → Relaxed shift: Adjust response speed
- Frustration detected: Offer alternative approaches

#### Correction Frequency
- 3+ corrections in session: Flag for investigation
- Consistent correction on same topic: Retrain/update knowledge
- Decreasing corrections over time: Learning is working

#### Tool Preference
- Telegram > CLI usage: Route notifications accordingly
- Browser > Terminal: Prioritize web-based solutions
- Python > JavaScript: Prefer Python code examples

#### Time-of-Day Patterns
- Peak usage 9-11 AM: Schedule heavy tasks then
- Drop-off after 4 PM: Avoid complex work late day
- Weekend usage patterns: Adjust expectations

#### Session Duration
- Short sessions (<15 min): Likely quick lookups
- Long sessions (>60 min): Deep work, preserve flow
- Duration changes over time: Workload shifts

## Pattern Categories

### Productivity Patterns
- Most productive time windows
- Task type vs. success rate
- Session length vs. completion rate
- Interruption impact on tasks

### Communication Patterns
- Preferred response length
- Format preferences (code blocks, bullet points, paragraphs)
- Tone adaptation needs
- Feedback interpretation

### Workflow Patterns
- Sequencing of tasks
- Tool combinations
- Repeated actions (automation candidates)
- Bottleneck identification

### Learning Patterns
- Knowledge retention rate
- Error reduction over time
- Skill acquisition speed
- Unconscious competence indicators

## Pattern Detection Algorithms

### Frequency Analysis
```python
# Pseudocode
for action in user_actions:
    frequency[action] = count(action)
    if frequency[action] > threshold:
        flag_as_pattern(action)
```

### Co-occurrence Analysis
```python
# What tools/tasks appear together?
for session in sessions:
    for (task_a, task_b) in combinations(session.tasks):
        co_occurrence[(task_a, task_b)] += 1
```

### Trend Analysis
```python
# Is this getting better or worse?
for metric in tracked_metrics:
    trend = calculate_slope(metric over time)
    if abs(trend) > significance_threshold:
        report_trend(metric, trend)
```

### Anomaly Detection
```python
# What's unusual this week?
for metric in tracked_metrics:
    if abs(this_week - average) > 2 * std_dev:
        flag_anomaly(metric, this_week)
```

## Actionable Insights Generation

For each detected pattern, generate:

1. **What**: Clear description of the pattern
2. **Why**: Why it's important or what it indicates
3. **How to Leverage**: Specific actions to take advantage
4. **Expected Impact**: Quantified or estimated benefit
5. **Validation Plan**: How to verify the suggestion works

## Example Insights

### Insight: Peak Productivity Window
```
**What:** You're 45% more productive between 9-11 AM
**Why:** Higher completion rates, higher task quality scores
**How to Leverage:** Schedule your hardest, most important tasks during this window
**Expected Impact:** 30-40% increase in weekly output
**Validation Plan:** Track task completion and quality for 2 weeks, compare to baseline
```

### Insight: Repetitive Workflow
```
**What:** You perform "format code + commit + push" sequence 8+ times/week
**Why:** Manual process with high repetition
**How to Leverage:** Create automation script or alias
**Expected Impact:** Save ~2 hours/week
**Validation Plan:** Measure time spent on this workflow before/after automation
```

## Customization Options

### Report Detail Level
```yaml
report_detail: standard  # minimal, standard, detailed
  - minimal: Top 3 insights only
  - standard: All insights with recommendations (default)
  - detailed: Full analysis with metrics and trends
```

### Pattern Sensitivity
```yaml
pattern_sensitivity: medium  # low, medium, high
  - low: Only strong patterns (high confidence)
  - medium: Medium-strong patterns (default)
  - high: Include weak patterns (may be noisy)
```

### Action Priority
```yaml
action_priority: impact  # effort, impact, balanced
  - effort: Sort by ease of implementation
  - impact: Sort by expected benefit (default)
  - balanced: Balance effort vs. impact
```

## Integration with Other Skills

### Shortcuts
- Suggest automation candidates for high-frequency patterns
- Track shortcut usage to verify effectiveness

### Daily Routine
- Validate and refine time-based patterns
- Cross-reference productivity windows with task completion

### Memory
- Store long-term patterns and trends
- Track how patterns evolve over months

### Profile Adaptation
- Update preferences based on detected patterns
- Evolve profile as user behavior changes

## Privacy & Data

- All analysis runs locally
- No data leaves your machine
- Patterns are synthesized, not raw logs
- Export or delete anytime

## Asking for Pattern Analysis

You can request:
- "What patterns have you detected this week?"
- "Give me a weekly productivity report"
- "How am I doing compared to last week?"
- "What should I improve?"
- "What's working well for me?"

---

**Skill Metadata:**
- Category: Learning
- Frequency: Weekly automatic
- Update Trigger: Every 7 sessions or 7 days
- Data Sources: All user sessions, ratings, corrections, tool usage
- Privacy: Local analysis only, no cloud sync
