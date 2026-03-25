---
name: pomodoro
version: 1.0.0
description: Pomodoro timer with breaks and focus tracking
tier: L1
type: productivity
unlock: session-4
requires: [daily-routine]
---

# Pomodoro Timer

Track focused work sessions with the Pomodoro Technique: 25-minute work periods followed by short breaks.

## When to Use This Skill

Use when you want to:
- Focus deeply on a single task
- Avoid distractions and procrastination
- Track your productive time
- Build a work rhythm
- Estimate how long tasks take

## How It Works

### Level 1: Basic Pomodoro (Sessions 4-10)

I'll help you:
- Start 25-minute work sessions
- Remind you when to take breaks
- Track completed pomodoros
- Log what you worked on
- Show daily productivity stats

**Example:**
```
User: Start a pomodoro session
User: I'm working on: coding the auth feature
User: [25 min later] Timer's done
User: Start another pomodoro
User: How many pomodoros did I complete today?
```

### Level 2: Advanced Scheduling (Sessions 11-25)

I'll also help you:
- Plan pomodoro sessions for the day
- Group related pomodoros into "pomodoro blocks"
- Estimate tasks in pomodoros
- Track focus quality per session
- Identify your peak focus hours

**Example:**
```
User: Plan my pomodoros for today
User: How many pomodoros for this task?
User: I completed 4 pomodoros, focus was great
User: When are my most productive hours?
User: Generate a pomodoro report for this week
```

### Level 3: Productivity Optimization (Sessions 26+)

I'll also help you:
- Analyze pomodoro patterns
- Suggest optimal work schedules
- Track task completion accuracy
- Identify distractions and blockers
- Optimize your focus time

**Example:**
```
User: Analyze my pomodoro patterns this month
User: What's my best time for deep work?
User: Which tasks take longer than estimated?
User: Suggest a pomodoro schedule for next week
User: What distractions are ruining my focus?
```

## Pomodoro Basics

### The Technique
1. Work for 25 minutes (1 pomodoro)
2. Take a 5-minute break
3. After 4 pomodoros, take a 15-30 minute break

### Rules
- One task per pomodoro (no multitasking)
- If distracted, pause or reset
- Track what you worked on
- Take breaks seriously (don't skip them!)

## Data I Track

### Level 1
- Pomodoro count (daily/weekly)
- Task descriptions per pomodoro
- Break times taken
- Total focused time (25 min × pomodoros)

### Level 2
- All Level 1 data
- Task estimates vs. actual time
- Focus quality rating (1-5) per pomodoro
- Peak productivity hours
- Pomodoro blocks (grouped sessions)

### Level 3
- All Level 2 data
- Task completion accuracy
- Distraction frequency and types
- Long-term productivity trends
- Optimal schedule recommendations
- Energy level patterns

## Best Practices

1. **Start focused:** Know exactly what you'll work on
2. **Single task:** No email, Slack, or other tasks during pomodoro
3. **Take breaks:** Step away, stretch, hydrate
4. **Track honestly:** Note if you got distracted
5. **Review weekly:** See patterns and adjust

## Questions I'll Ask

At Level 1:
- "Ready to start a pomodoro? What will you work on?"
- "Pomodoro complete! Take a 5-min break or continue?"
- "How was your focus in this pomodoro? (1-5)"
- "Start another pomodoro?"
- "How many pomodoros today? [X]"

At Level 2:
- "How many pomodoros do you estimate for [task]?"
- "Want to plan your pomodoros for the day?"
- "What's your best focus hour?"
- "Generate a pomodoro report?"

At Level 3:
- "Analyze your pomodoro patterns this month?"
- "What's ruining your focus lately?"
- "Suggest an optimized schedule?"
- "Which tasks take longer than expected?"

## Examples

### Starting a Pomodoro
```
User: Start a pomodoro

Assistant: 🍅 Pomodoro Started!

TASK: [Waiting for your input]
TIME: 25 minutes
BREAK: 5 minutes after work session

What are you working on in this pomodoro?
```

```
User: Coding the authentication feature

Assistant: 🍅 Pomodoro Running!

TASK: Coding the authentication feature
TIME: 25 minutes
STARTED: 2:30 PM
END: 2:55 PM

Work mode: ON! No distractions. Focus.

[25 minutes later...]
⏰ TIMER COMPLETE!

Take a 5-minute break. Stretch, hydrate, step away.

When ready, type "next" to start another pomodoro.
```

### Daily Progress
```
User: How many pomodoros today?

Assistant: 📊 Today's Pomodoro Progress

TOTAL: 8 pomodoros
FOCUSED TIME: 3 hours 20 minutes

SESSIONS:
1. 2:30 PM - 2:55 PM | Coding auth | Focus: 5/5 ⭐
2. 3:05 PM - 3:30 PM | Coding auth | Focus: 5/5 ⭐
3. 3:40 PM - 4:05 PM | Testing auth | Focus: 4/5 ✅
4. 4:20 PM - 4:45 PM | Debugging | Focus: 3/5 😐
5. [Break] | Lunch
6. 5:30 PM - 5:55 PM | Fixing bugs | Focus: 4/5 ✅
7. 6:05 PM - 6:30 PM | Code review | Focus: 5/5 ⭐
8. 6:40 PM - 7:05 PM | Deploy to staging | Focus: 5/5 ⭐

AVERAGE FOCUS: 4.4/5 (Great!)
TASKS COMPLETED: Auth feature shipped! 🎉

NEXT: Long break (15-30 min) - you've earned it!
```

### Planning Pomodoros
```
User: Plan my pomodoros for today

Assistant: 📅 Pomodoro Plan for Today

Based on your priorities:

9:00 AM - 9:25 AM: Email triage (1 pomodoro)
9:35 AM - 10:00 AM: Meeting prep (1 pomodoro)
10:10 AM - 10:35 AM: Deep work: Feature A (1 pomodoro)
10:45 AM - 11:10 AM: Deep work: Feature A (1 pomodoro)
11:20 AM - 11:45 AM: Deep work: Feature A (1 pomodoro)
[Lunch Break]

1:00 PM - 1:25 PM: Code review (1 pomodoro)
1:35 PM - 2:00 PM: Bug fixes (1 pomodoro)
2:10 PM - 2:35 PM: Bug fixes (1 pomodoro)
2:45 PM - 3:10 PM: Bug fixes (1 pomodoro)
[LONG BREAK]

3:30 PM - 3:55 PM: Planning tomorrow (1 pomodoro)
4:05 PM - 4:30 PM: Admin tasks (1 pomodoro)

TOTAL: 11 pomodoros | 4h 35m focused work
DEEP WORK BLOCKS: 3 (Feature A, Bug fixes)
ESTIMATED FOCUS TIME: 9-11 AM, 1:30-3:10 PM

Ready to start at 9:00 AM?
```

### Task Estimation
```
User: How many pomodoros to build the dashboard?

Assistant: 📊 Task Estimation

TASK: Build the dashboard
HISTORY:
- Similar dashboard took 12 pomodoros (5 hours)
- Last dashboard had more features (15 pomodoros)
- Simplest dashboard took 8 pomodoros (3.3 hours)

BASED ON YOUR HISTORY:
Estimated: 10-12 pomodoros (4-5 hours)

Factors:
✓ You're experienced with dashboards
✓ API is ready (saves 2-3 pomodoros)
✗ New design system (adds 1-2 pomodoros)
✗ Integration with 3 services (adds 2-3 pomodoros)

CONSERVATIVE ESTIMATE: 12 pomodoros (5 hours)
OPTIMISTIC ESTIMATE: 10 pomodoros (4.2 hours)

Let's plan:
Day 1: 6 pomodoros (core functionality)
Day 2: 6 pomodoros (polish + testing)

Track actuals to improve future estimates!
```

### Focus Analysis
```
User: Analyze my focus this week

Assistant: 📊 Focus Analysis (April 8-14)

OVERALL:
- Total pomodoros: 42
- Average focus: 4.2/5
- Total focused time: 17.5 hours

DAILY BREAKDOWN:
Mon: 6 pomodoros | Avg focus: 3.5/5 😐 (tired)
Tue: 7 pomodoros | Avg focus: 4.3/5 ✅ (good)
Wed: 8 pomodoros | Avg focus: 4.8/5 ⭐ (shipped feature!)
Thu: 5 pomodoros | Avg focus: 4.0/5 ✅ (meetings)
Fri: 8 pomodoros | Avg focus: 4.5/5 ⭐ (productive)
Sat: 4 pomodoros | Avg focus: 3.8/5 😐 (weekend mode)
Sun: 4 pomodoros | Avg focus: 4.2/5 ✅ (steady)

PEAK HOURS:
- 9:00 AM - 11:00 AM: Avg focus 4.6/5 ⭐
- 1:00 PM - 3:00 PM: Avg focus 4.4/5 ⭐
- 4:00 PM - 6:00 PM: Avg focus 3.8/5 😐 (afternoon slump)

TASK-TYPE FOCUS:
- Coding: 4.6/5 (you love coding!)
- Debugging: 3.2/5 (frustrating)
- Meetings: 2.8/5 (low focus)
- Planning: 4.5/5 (very focused)
- Writing: 4.1/5 (good)

DISTRACTIONS:
- Slack pings: 12 times (blocked pomodoros: 3)
- Hunger: 8 times (blocked pomodoros: 2)
- Meetings: 6 times (blocked pomodoros: 5)
- Social media: 4 times (blocked pomodoros: 2)

RECOMMENDATIONS:
1. Schedule deep work 9-11 AM (your peak!)
2. Block Slack during pomodoros (turn off notifications)
3. Avoid meetings during your 9-11 AM slot
4. Eat before starting pomodoros (hunger distraction)

OPTIMIZED SCHEDULE:
9:00 - 11:00 AM: Deep work block (4 pomodoros)
11:00 - 12:00 PM: Admin/Meetings (lower focus expected)
1:00 - 3:00 PM: Deep work block (4 pomodoros)
3:00 - 4:00 PM: Email/Slack/Meetings
4:00 - 6:00 PM: Light work or wrap up

Try this schedule next week!
```

### Productivity Report
```
User: Generate a pomodoro report for this week

Assistant: 📊 Pomodoro Weekly Report

WEEK OF: April 8-14, 2026

SUMMARY:
- Total pomodoros: 42
- Total focused time: 17.5 hours
- Average daily pomodoros: 6
- Average focus: 4.2/5
- Target met? ✅ Yes (goal: 8/day, average: 6)

TASKS COMPLETED:
✓ Auth feature (8 pomodoros) - Shipped! 🎉
✓ Dashboard design (6 pomodoros) - In progress
✓ Code review backlog (10 pomodoros) - Cleared!
✓ Bug fixes (12 pomodoros) - 8/10 done
✓ Documentation (4 pomodoros) - Complete!

FOCUS TRENDS:
Mon: 3.5/5 😐 → Recovery day (low focus)
Tue: 4.3/5 ✅ → Building momentum
Wed: 4.8/5 ⭐ → Peak day (feature shipped!)
Thu: 4.0/5 ✅ → Steady (meetings)
Fri: 4.5/5 ⭐ → Strong finish
Sat: 3.8/5 😐 → Weekend pace
Sun: 4.2/5 ✅ → Preparing for week

KEY INSIGHTS:
1. Your best day was Wednesday (shipped feature = dopamine boost)
2. Monday consistently low (weekend hangover?)
3. Peak hours: 9-11 AM (4.6/5 average)
4. Coding focus > debugging focus (frustration factor)

AREAS TO IMPROVE:
- Daily average: 6 vs goal of 8 (try scheduling)
- Monday focus: Plan easier tasks to build momentum
- Debugging frustration: Take breaks or switch tasks

NEXT WEEK GOALS:
- 8 pomodoros/day (56 total)
- Protect 9-11 AM for deep work
- Schedule easier tasks for Monday
- Try "focus music" during debugging

KEEP UP THE GREAT WORK! 🍅
```

## Integration with Other Skills

- **daily-routine:** Schedule pomodoro blocks in your routine
- **habit-tracker:** Track "daily pomodoro goal" as a habit
- **time-logging:** Sync pomodoro time with time tracking
- **pattern-detect:** Identify when you're most productive
- **optimization:** Get personalized schedule recommendations

## Tips for Success

1. **Clear task:** Know exactly what you'll work on before starting
2. **Single focus:** No multitasking, no email checking
3. **Take breaks:** Seriously, take the full break
4. **Track interruptions:** Note what distracted you
5. **Review weekly:** Use reports to optimize your schedule

## Common Mistakes

- Skipping breaks (leads to burnout)
- Multitasking during pomodoros (defeats the purpose)
- Not tracking what you worked on (hard to see patterns)
- Over-scheduling (aim for 6-8 pomodoros, not 12)
- Getting discouraged if interrupted (just restart!)

---

**Ready to focus? Start a pomodoro session! 🍅**
