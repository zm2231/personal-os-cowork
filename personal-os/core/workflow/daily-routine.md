---
name: daily-routine
type: workflow
tier: unlocked
description: Learn and optimize daily work patterns and time-based habits
triggers:
  - User has 5+ sessions
  - Consistent time-based patterns detected
progressive_unlock: true
session_threshold: 5
---

# Daily Routine Learning

**Purpose:** Understand when and how you work to optimize task timing and context

## How It Works

This skill monitors your usage patterns across time of day, day of week, and session duration. It learns when you're most productive, what you work on at different times, and optimizes task scheduling.

## Unlock Status

**Current State:** Locked (waiting for usage data)

**Required:** 5+ sessions
**Current Sessions:** Tracking active

## Routine Insights

*No routine data yet. This will populate after ~5 sessions.*

## Example Insights

Once unlocked, you'll see insights like:

### Peak Productivity Windows
```yaml
morning_peak: 9:00 AM - 11:30 AM
  - Tasks completed: 45% higher than average
  - Focus score: 8.5/10
  - Best task types: Deep work, coding, research

afternoon_peak: 2:00 PM - 4:00 PM
  - Tasks completed: 30% higher than average
  - Focus score: 7.2/10
  - Best task types: Reviews, meetings, communication
```

### Task Type Scheduling
```yaml
time_based_routing:
  - deep_work: morning (9-12)
  - meetings: midday (12-2)
  - reviews: afternoon (2-4)
  - planning: end-of-day (4-5)
```

### Session Patterns
```yaml
average_session_length: 47 minutes
most_productive_day: Tuesday
least_productive_day: Friday
common_break_interval: 2-3 hours between sessions
```

## What The System Tracks

### Time Patterns
- Peak productive hours
- Consistent work blocks
- Natural break times
- Weekend vs weekday usage

### Task Patterns
- What you work on at different times
- Task sequencing (what follows what)
- Task duration estimates
- Context switching patterns

### Workflow Patterns
- Tools you use together
- Multi-step workflows
- Interruption points
- Bottleneck identification

## Routine Optimization Suggestions

Based on detected patterns, PersonalOS will suggest:

### Scheduling Improvements
- "You're most productive with deep work 9-11 AM. Schedule your hardest tasks then."
- "Meetings cluster around 1 PM. Consider moving them to 12-2 PM block."
- "You take breaks naturally around 3 PM. This is good—don't fight it."

### Context Awareness
- "It's 10 AM—based on your patterns, this is prime deep work time."
- "It's 2:30 PM—good time for reviews and communication tasks."
- "You've been coding for 90 minutes—consider taking a break based on your average session length."

### Workflow Enhancements
- "You always run [tool] after [tool]. Automate this?"
- "You switch between these 3 tools frequently. Consider organizing them."
- "This task took 2x longer than usual last time. Anything blocking?"

## Configuring Routine Learning

You can customize:

### Sensitivity
```yaml
learning_sensitivity: medium  # low, medium, high
  - low: Needs 10+ sessions before insights
  - medium: Needs 5+ sessions (default)
  - high: Needs 3+ sessions (may be noisy)
```

### Update Frequency
```yaml
update_frequency: weekly  # daily, weekly, monthly
  - daily: Updates every session (may be noisy)
  - weekly: Updates every 7 sessions (default)
  - monthly: Updates monthly (stable, less responsive)
```

### Privacy Level
```yaml
privacy_level: standard  # minimal, standard, detailed
  - minimal: Only aggregate insights
  - standard: Insights with examples (default)
  - detailed: Full session logs
```

## Using Routine Insights

Once unlocked, you can ask:

### Queries
- "When am I most productive?"
- "What should I work on right now?"
- "How's my productivity been this week?"
- "What patterns have changed recently?"

### Actions
- "Schedule this task for my peak hours"
- "Set a reminder for deep work at 9 AM"
- "Generate a weekly productivity report"
- "Optimize my schedule for today"

## Privacy & Data

- All data stored locally in `personal-os/data/routine/`
- No cloud uploads or third-party analytics
- Data is used solely for personal optimization
- Export and delete anytime

## Next Steps

1. Use PersonalOS naturally over the next 5-10 sessions
2. System will build routine profile in background
3. After Session 5, review initial insights
4. Adjust sensitivity and settings based on your preferences
5. Ask for routine-based suggestions as you work

---

**Skill Metadata:**
- Category: Workflow
- Unlock Condition: 5+ sessions
- Update Frequency: Weekly (configurable)
- Integration: Uses session data, task timing, and tool usage
- Privacy: Local storage, no cloud sync
