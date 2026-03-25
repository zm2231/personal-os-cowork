---
name: time-logging
version: 1.0.0
description: Track time spent on tasks and projects with category analysis
tier: L1
type: productivity
unlock: session-5
requires: [daily-routine]
---

# Time Logging

Track how you spend your time with automatic logging, categorization, and analysis.

## When to Use This Skill

Use when you want to:
- Know where your time goes
- Bill clients accurately
- Identify time-wasting activities
- Improve time estimates for future tasks
- Understand your productivity patterns

## How It Works

### Level 1: Basic Time Tracking (Sessions 5-10)

I'll help you:
- Log time spent on tasks and projects
- Categorize time (work, meetings, admin, personal)
- Show daily time breakdowns
- Track project time totals
- Generate simple reports

**Example:**
```
User: Log 2 hours on "coding feature X"
User: Log 30 min on "email"
User: Show me how I spent my time today
User: What's my total time on the Auth project?
```

### Level 2: Project & Client Tracking (Sessions 11-25)

I'll also help you:
- Track time by project and client
- Set time budgets for projects
- Billable vs. non-billable time
- Weekly and monthly summaries
- Time estimate accuracy tracking

**Example:**
```
User: Add project "Auth API" with 40 hour budget
User: Log 4 hours to "Auth API" project
User: How much billable time this month?
User: Are my time estimates accurate?
User: Generate monthly report for clients
```

### Level 3: Productivity & Optimization (Sessions 26+)

I'll also help you:
- Analyze productivity by time of day
- Identify time-wasting patterns
- Optimize schedule based on energy levels
- Track recurring tasks and their time costs
- Suggest time-saving improvements

**Example:**
```
User: When am I most productive?
User: What's eating my time this month?
User: Analyze my time by project over last quarter
User: How can I save 5 hours per week?
User: Optimize my schedule for peak productivity
```

## Time Categories

### Work Categories
- **Development:** Coding, debugging, code review
- **Meetings:** Internal meetings, client calls, standups
- **Admin:** Email, Slack, documentation, planning
- **Research:** Learning, reading, exploration
- **Support:** Helping others, answering questions

### Personal Categories
- **Health:** Exercise, meditation, meals
- **Learning:** Courses, reading, tutorials
- **Social:** Friends, family, networking
- **Hobbies:** Side projects, creative work
- **Rest:** Sleep, relaxation, downtime

## Data I Track

### Level 1
- Daily time logs (task, duration, category)
- Total hours by category (daily)
- Project totals
- Simple daily breakdown

### Level 2
- All Level 1 data
- Project and client tracking
- Time budgets and progress
- Billable vs. non-billable
- Weekly/monthly summaries
- Estimate vs. actual time

### Level 3
- All Level 2 data
- Productivity by time of day
- Energy level correlation
- Time-wasting patterns
- Recurring task time costs
- Optimization opportunities

## Best Practices

1. **Log in real-time:** Don't rely on memory
2. **Be specific:** "Feature X coding" not just "work"
3. **Use consistent categories:** Makes analysis easier
4. **Review regularly:** Check weekly to see patterns
5. **Adjust estimates:** Learn from actual time data

## Questions I'll Ask

At Level 1:
- "What did you work on? (and for how long?)"
- "What category is this task?"
- "Show your time breakdown for today?"
- "Total time on [project]?"

At Level 2:
- "Set time budget for [project]?"
- "How much billable time this week?"
- "Are time estimates accurate?"
- "Generate monthly client report?"

At Level 3:
- "When are you most productive?"
- "What's wasting your time?"
- "Optimize your schedule?"
- "Save 5 hours per week - how?"

## Examples

### Logging Time
```
User: Log 2 hours on coding authentication feature

Assistant: ⏱️ Time Logged!

TASK: Coding authentication feature
DURATION: 2 hours
CATEGORY: Development
PROJECT: Auth API (if this is a new project, ask)
TIME: April 14, 2026 - 2:00 PM to 4:00 PM

TOTAL TODAY: 4.5 hours logged
```

```
User: Log 45 min on email and Slack

Assistant: ⏱️ Time Logged!

TASK: Email and Slack
DURATION: 45 minutes
CATEGORY: Admin
TIME: April 14, 2026 - 4:15 PM to 5:00 PM

TOTAL TODAY: 5.25 hours logged
```

### Daily Breakdown
```
User: Show my time breakdown today

Assistant: 📊 Time Breakdown - April 14, 2026

TOTAL TIME LOGGED: 7.5 hours

BY CATEGORY:
Development:   4.5 hrs (60%)  ████████████
Meetings:      1.0 hrs (13%)  █████
Admin:         1.0 hrs (13%)  █████
Research:       0.5 hrs (7%)   ██
Support:       0.5 hrs (7%)   ██

BY PROJECT:
Auth API:      4.5 hrs (60%)
Internal:       3.0 hrs (40%)

REMAINING TIME (16-hour day):
Untracked:     8.5 hrs
Sleep:         ~7-8 hrs (estimated)

INSIGHTS:
- 60% of time in development (good - you're a dev!)
- Admin + Meetings = 26% (reasonable)
- Untracked time = 8.5 hrs (what are you doing?)

Want to log the untracked time?
```

### Project Tracking
```
User: Add project "Auth API" with 40 hour budget

Assistant: ✅ Project Added!

PROJECT: Auth API
BUDGET: 40 hours
CLIENT: [Ask or mark internal]
STATUS: Active

TIME LOGGED SO FAR:
- 4.5 hours today
- Total: 4.5 hours

REMAINING: 35.5 hours (11% complete)

I'll track all future "Auth API" time to this project.
```

```
User: How much time on the Auth API project?

Assistant: 📊 Auth API Project Summary

PROJECT: Auth API
BUDGET: 40 hours
LOGGED: 12.5 hours
REMAINING: 27.5 hours
STATUS: 31% complete

BREAKDOWN:
Development:  10.0 hrs (80%)
Research:       1.5 hrs (12%)
Meetings:       1.0 hrs (8%)

DAILY AVERAGE: 3.1 hours/day (4 days)
PROJECTED COMPLETION: April 22 (8 days from now)

ON BUDGET? ✅ Yes (projecting 36 hrs vs 40 hr budget)

BUDGET USAGE:
 0%  [████████████████████████ ] 100%
    ↑
 31%

KEEP UP THE GOOD PACE! 🚀
```

### Weekly Summary
```
User: Generate a weekly time summary

Assistant: 📊 Weekly Time Report
Week of: April 8-14, 2026

TOTAL HOURS: 38.5 hours
TARGET: 40 hours
STATUS: 96% ✅ (0.5 hrs under)

BY CATEGORY:
Development:   22.0 hrs (57%)  ██████████████████████
Meetings:       8.0 hrs (21%)  ████████████
Admin:          4.5 hrs (12%)  ████████
Research:       2.5 hrs (6%)   ██████
Support:        1.5 hrs (4%)   ████

BY PROJECT:
Auth API:       18.0 hrs (47%)
Dashboard:     10.5 hrs (27%)
Internal:        7.0 hrs (18%)
Admin:           3.0 hrs (8%)

DAILY BREAKDOWN:
Mon: 7.5 hrs
Tue: 8.0 hrs
Wed: 7.0 hrs
Thu: 7.5 hrs
Fri: 8.5 hrs
Sat: 0.0 hrs
Sun: 0.0 hrs

BILLABLE:
- Billable hours: 28.5 hrs
- Non-billable: 10.0 hrs
- Billable ratio: 74% (target: 80%)

INSIGHTS:
- Meeting time: 21% (acceptable for dev role)
- Admin time: 12% (good, keep under 15%)
- Billable ratio: 74% (target 80%, need to reduce admin)
- Weekend work: 0 hrs (great work-life balance!)

RECOMMENDATIONS:
1. Reduce admin to 6 hrs/week (currently 4.5, good!)
2. Focus billable time: hit 32 hrs/week
3. Meeting load stable (8 hrs/week is okay)

GREAT WEEK! ✅
```

### Billable vs. Non-Billable
```
User: How much billable time this month?

Assistant: 📊 Monthly Billable Report
April 2026

TOTAL HOURS: 154.0 hours
TARGET: 160 hours
STATUS: 96% ✅

BILLABLE BREAKDOWN:
Billable:       118.0 hrs (77%)  ███████████████████████████
Non-Billable:    36.0 hrs (23%)  ████████

CLIENT BREAKDOWN:
Client A:        58.0 hrs (49% of billable)
Client B:        42.0 hrs (36% of billable)
Client C:        18.0 hrs (15% of billable)

NON-BILLABLE BREAKDOWN:
Meetings:       20.0 hrs (56%)
Admin:          10.0 hrs (28%)
Internal:        6.0 hrs (17%)

BILLABLE RATIO TREND:
Week 1: 72%
Week 2: 78%
Week 3: 76%
Week 4: 82%
MONTHLY: 77%

TARGET: 80% (you're at 77%, need +3 hrs)

RECOMMENDATIONS:
- Reduce meeting time (currently 20 hrs/month)
- Batch admin tasks (currently 10 hrs)
- Focus on billable work (118 hrs → 124 hrs)

YOU'RE ALMOST AT TARGET! 💪
```

### Estimate Accuracy
```
User: Are my time estimates accurate?

Assistant: 📊 Estimate Accuracy Analysis

COMPLETED TASKS (Last 30 days): 45 tasks

ESTIMATE vs ACTUAL:
Within 10%:  18 tasks (40%) ✅
Within 25%: 12 tasks (27%) ✅
Within 50%:  10 tasks (22%) 😐
Over 50%:      5 tasks (11%) ❌

BY CATEGORY:
Development:   85% accuracy (best!)
Research:      70% accuracy
Meetings:      60% accuracy (hard to estimate)
Admin:          75% accuracy

PATTERNS:
- You UNDERESTIMATE new features (-25% average)
- You OVERESTIMATE routine tasks (+15% average)
- Meetings are hardest to estimate
- Debugging time is unpredictable

TASKS WITH WORST ACCURACY (>50% error):
1. "Integration with payment API" (estimated: 4 hrs, actual: 8 hrs)
2. "Setup CI/CD pipeline" (estimated: 2 hrs, actual: 5 hrs)
3. "Client requirements meeting" (estimated: 1 hr, actual: 2.5 hrs)

LESSONS:
- Add 25% buffer to new features
- Add 100% buffer to integrations (API issues)
- Meetings always run long (plan +50%)

RECOMMENDATIONS:
1. Multiply new feature estimates by 1.25
2. Multiply integration estimates by 2.0
3. Schedule meetings as 1.5x your estimate
4. Track time in real-time (improves accuracy)

Accuracy goal: 75% within 25% (currently 67% - getting there!)
```

### Productivity by Time of Day
```
User: When am I most productive?

Assistant: 📊 Productivity by Time of Day
Analysis: Last 4 weeks

PRODUCTIVITY SCORE (Tasks completed / Hours logged):

9:00 AM - 11:00 AM: 8.5/10 ⭐ PEAK
11:00 AM - 1:00 PM: 7.2/10 ✅ Good
1:00 PM - 3:00 PM: 6.8/10 😐 Slump
3:00 PM - 5:00 PM: 7.5/10 ✅ Recovery
5:00 PM - 7:00 PM: 5.5/10 😞 Low

TASK COMPLETION BY TIME:
9-11 AM: 12 tasks completed (highest output)
11-1 PM: 9 tasks completed
1-3 PM: 7 tasks completed (lunch dip)
3-5 PM: 10 tasks completed
5-7 PM: 5 tasks completed

FOCUS QUALITY (Self-reported):
9-11 AM: 4.7/5 (very focused)
11-1 PM: 4.2/5 (meetings interrupt)
1-3 PM: 3.8/5 (afternoon grogginess)
3-5 PM: 4.1/5 (second wind)
5-7 PM: 3.2/5 (tired/ready to quit)

TASK-TYPE OPTIMIZATION:
- Coding: Best 9-11 AM
- Meetings: Best 11-1 PM (already grouped)
- Admin: Best 1-3 PM (low energy tasks)
- Learning: Best 5-7 PM (relaxed mode)

OPTIMIZED SCHEDULE:
9:00 - 11:00 AM: Deep work (coding, hard problems)
11:00 - 1:00 PM: Meetings and calls
1:00 - 2:00 PM: Lunch + walk (refresh)
2:00 - 3:00 PM: Admin, email, planning (low energy)
3:00 - 5:00 PM: Coding (medium complexity)
5:00 - 6:00 PM: Wrap up, planning tomorrow
6:00+:  Personal time (stop working)

EXPECTED PRODUCTIVITY GAIN: +15%

Try this schedule for 1 week and I'll measure improvement!
```

### Time-Saving Opportunities
```
User: How can I save 5 hours per week?

Assistant: 💡 5-Hour Weekly Savings Analysis

Based on your time logs, here are opportunities:

CURRENT TIME-WASTERS:
1. Email checking: 6 hrs/week (scattered throughout day)
2. Unnecessary meetings: 4 hrs/week
3. Context switching: 3 hrs/week
4. Social media: 2 hrs/week (estimated)
5. Repetitive admin: 2 hrs/week

OPPORTUNITY #1: Email Batching (Save 2.5 hrs/week)
Current: 6 hrs (checking every 30 min)
Proposed: Check 3x/day (30 min each)
Savings: 3.5 hrs/week

Action: Check at 9 AM, 1 PM, 5 PM only

OPPORTUNITY #2: Meeting Reduction (Save 2 hrs/week)
Current: 4 hrs unnecessary meetings
Proposed: Decline/reduce by half
Savings: 2 hrs/week

Action: Ask "Can we handle this async?" before accepting

OPPORTUNITY #3: Context Blocking (Save 1.5 hrs/week)
Current: 3 hrs lost to switching
Proposed: 2-hour deep work blocks
Savings: 1.5 hrs/week

Action: Block calendar 9-11 AM, 2-4 PM for deep work

OPPORTUNITY #4: Automation (Save 1 hr/week)
Current: 2 hrs repetitive admin
Proposed: Automate or delegate
Savings: 1 hr/week

Action: Identify 1 repetitive task to automate this week

OPPORTUNITY #5: Social Media Limits (Save 1 hr/week)
Current: 2 hrs/day estimated
Proposed: Block distracting sites
Savings: 1 hr/week

Action: Use website blocker during work hours

TOTAL POTENTIAL SAVINGS: 9 hrs/week
REALISTIC GOAL: 5 hrs/week

IMPLEMENTATION PLAN:
Week 1: Email batching (easiest win)
Week 2: Context blocking (biggest impact)
Week 3: Meeting reduction (requires social skills)
Week 4: Automation (requires setup)

I'll track your time and measure savings!
```

## Integration with Other Skills

- **pomodoro:** Sync pomodoro time with time logs
- **daily-routine:** Schedule time blocks in your routine
- **habit-tracker:** Track "log time daily" as a habit
- **weekly-review:** Use time data for weekly reviews
- **optimization:** Get personalized efficiency suggestions

## Tips for Success

1. **Log in real-time:** Memory is unreliable
2. **Use categories consistently:** Makes analysis easier
3. **Set time budgets:** Helps you stay on track
4. **Review weekly:** Patterns emerge over time
5. **Adjust estimates:** Learn from actual time data

## Common Mistakes

- Logging at end of day (memory errors)
- Vague task descriptions (hard to analyze)
- Too many categories (keep it simple)
- Never reviewing data (misses insights)
- Forgetting to track small tasks (adds up!)

---

**Ready to track your time? What did you work on today? ⏱️**
