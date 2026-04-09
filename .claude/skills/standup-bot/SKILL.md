---
name: standup-bot
description: "Automated daily standup facilitation for remote and distributed teams"
---

# Standup Bot

Automated daily standup facilitation for remote and distributed teams. Capture updates, blockers, and keep the team synchronized.

## When to Use This Skill

**Trigger when user says:**
- "start standup"
- "daily standup"
- "team update"
- "what did we do yesterday"
- "standup report"
- "team status"

**Best for:**
- Remote teams
- Distributed teams across time zones
- Daily team synchronization
- Project progress tracking
- Blocker identification and resolution
- Async team communication

---

## Tier 1: Guided Standup (Beginner)

### Individual Standup

#### Capture Your Update

```
Let's capture your daily standup update:

**What did you accomplish yesterday?**
[List tasks completed, features shipped, meetings had]

**What are you working on today?**
[List tasks planned, priorities, focus areas]

**Are there any blockers?**
[List anything preventing progress, needs help]

**Anything else to share?**
[Announcements, wins, learnings]
```

#### Standup Template

```markdown
# Daily Standup - [Date]

**Team Member:** [Name]

## Yesterday
- [Completed task 1]
- [Completed task 2]
- [Meeting or event attended]

## Today
- [Task to work on]
- [Priority to focus on]
- [Meeting or collaboration planned]

## Blockers
- [None] or
- [Blocker description]
  - **Impact:** How it affects work
  - **Need:** What help is needed
  - **Owner:** Who is helping resolve

## Other Updates
- [Announcements, wins, learnings]
```

### Team Standup Collection

#### Prompt Team Members

```
Gather standup updates from the team:

**Team Members:** [List team members]
**Time:** [Scheduled standup time]
**Method:** [Async/Sync, Slack, Email, In-person]

Template to send:
"Hi team! Time for daily standup.

📝 Please share:
1️⃣ What did you accomplish yesterday?
2️⃣ What are you working on today?
3️⃣ Any blockers?
4️⃣ Other updates?

Due by: [Time]
Thanks!"
```

### Generate Standup Summary

```
Compile team standups into summary:

**Standup Date:** [Date]
**Team Members:** [Count]

**Completed Yesterday:** [Summary of accomplishments]
**Working on Today:** [Summary of today's priorities]
**Blockers:** [List of blockers and owners]
**Other Updates:** [Key announcements]
```

---

## Tier 2: Confident Facilitation (Intermediate)

### Structured Standup Format

#### Daily Standup Report

```markdown
# Daily Standup Report - [Date]

## 📊 Quick Stats
- **Team Present:** [count]/[total]
- **Tasks Completed Yesterday:** [count]
- **Tasks Planned Today:** [count]
- **Active Blockers:** [count]

## ✅ Completed Yesterday
[Member Name]: [Task]
[Member Name]: [Task]

## 🎯 Working on Today
[Member Name]: [Task]
[Member Name]: [Task]

## 🚧 Blockers
1. **[Blocker]** - [Member Name]
   - **Impact:** [description]
   - **Resolution:** [action plan]
   - **ETA:** [when will it be resolved]

## 📢 Other Updates
- [Update 1]
- [Update 2]

## 🔗 Dependencies
- [Member A] waiting on [Member B] for [task]
- [Member C] needs review from [Member D]

## 💡 Focus Areas for Today
1. [Priority 1]
2. [Priority 2]
3. [Priority 3]
```

### Blocker Management

#### Blocker Tracking

```yaml
blockers:
  - id: unique_id
    blocker: "API rate limiting issue"
    reported_by: member_name
    reported_date: date
    severity: High|Medium|Low
    impact: "Cannot complete integration testing"
    owner: member_name
    status: Active|Resolved|Escalated
    resolution_plan: "Contact engineering team"
    eta: date
    followers: [list of interested team members]
    
  - id: unique_id
    blocker: "Waiting on design approval"
    reported_by: member_name
    reported_date: date
    severity: Medium
    impact: "Cannot start UI implementation"
    owner: design_lead
    status: Active
    resolution_plan: "Review scheduled for tomorrow"
    eta: date
```

#### Escalation Logic

```python
def should_escalate_blocker(blocker):
    """Determine if blocker needs escalation"""
    
    # Escalate if:
    # 1. High severity and >1 day old
    if blocker['severity'] == 'High' and blocker['days_active'] > 1:
        return True
    
    # 2. Medium severity and >3 days old
    if blocker['severity'] == 'Medium' and blocker['days_active'] > 3:
        return True
    
    # 3. Blocking critical path (multiple team members waiting)
    if len(blocker['waiting_on']) > 2:
        return True
    
    # 4. No resolution plan
    if not blocker['resolution_plan']:
        return True
    
    return False
```

### Async Standup Workflow

#### Scheduled Standup

```yaml
async_standup_schedule:
  time: "09:00"
  timezone: "America/New_York"
  method: slack
  reminder: "30 minutes before"
  deadline: "12:00"
  compilation_time: "13:00"
  
  notification_channels:
    - "team-standup"
    - "#general"
  
  participants:
    - name: member1
      role: Developer
      required: true
    
    - name: member2
      role: Designer
      required: false
      on_vacation: [dates]
```

#### Follow-Up Prompts

```python
def send_standup_reminders(team_members):
    """Send reminders for incomplete standups"""
    
    for member in team_members:
        if not member['standup_submitted']:
            if time_until_deadline <= 30:
                # Urgent reminder
                send_message(
                    channel=member['dm_channel'],
                    message=f"⏰ Standup due in 30 minutes!\n\nSubmit your update in #team-standup"
                )
            elif time_until_deadline == 60:
                # Standard reminder
                send_message(
                    channel=member['dm_channel'],
                    message=f"📝 Don't forget standup! Due in 1 hour.\n\n#team-standup"
                )
```

### Integration with Other Skills

- **daily-agenda**: Include standup in daily planning
- **project-status**: Update project metrics from standup data
- **message-review**: Review standup communication tone

---

## Tier 3: Anticipatory Coordination (Advanced)

### Standup Analytics

#### Team Velocity Tracking

```python
def calculate_team_velocity(standups, period_days=7):
    """Calculate team velocity from standup data"""
    
    completed_tasks = []
    planned_tasks = []
    blockers = []
    
    for standup in standups:
        # Extract completed tasks
        completed_tasks.extend(standup['completed_yesterday'])
        
        # Extract planned tasks
        planned_tasks.extend(standup['planned_today'])
        
        # Track blockers
        blockers.extend(standup['blockers'])
    
    # Calculate metrics
    tasks_completed = len(completed_tasks)
    tasks_planned = len(planned_tasks)
    completion_rate = tasks_completed / tasks_planned if tasks_planned > 0 else 0
    
    avg_completion_time = calculate_avg_completion(completed_tasks)
    
    blocker_resolution_rate = calculate_blocker_resolution(blockers)
    
    return {
        'period': period_days,
        'tasks_completed': tasks_completed,
        'completion_rate': completion_rate * 100,
        'avg_completion_time': avg_completion_time,
        'blocker_count': len(blockers),
        'blocker_resolution_rate': blocker_resolution_rate * 100,
        'by_member': calculate_by_member(standups)
    }
```

#### Trend Analysis

```python
def analyze_trends(standups, days=30):
    """Analyze trends in standup data over time"""
    
    # Group by date
    daily_data = group_by_date(standups, days)
    
    # Calculate metrics per day
    trends = []
    for date, day_standups in daily_data.items():
        trends.append({
            'date': date,
            'tasks_completed': count_completed(day_standups),
            'tasks_planned': count_planned(day_standups),
            'blockers': count_blockers(day_standups),
            'participation_rate': calculate_participation(day_standups)
        })
    
    # Analyze patterns
    analysis = {
        'velocity_trend': calculate_trend([t['tasks_completed'] for t in trends]),
        'blocker_trend': calculate_trend([t['blockers'] for t in trends]),
        'participation_trend': calculate_trend([t['participation_rate'] for t in trends]),
        'most_productive_day': find_peak_day(trends, 'tasks_completed'),
        'most_blocker_day': find_peak_day(trends, 'blockers'),
        'recommendations': generate_recommendations(trends)
    }
    
    return analysis
```

### Predictive Insights

#### Blocker Prediction

```python
def predict_potential_blockers(member):
    """Predict potential blockers based on patterns"""
    
    risk_factors = {
        'high_workload': member['tasks_assigned'] > member['capacity'],
        'dependency_count': len(member['dependencies']) > 2,
        'recent_blockers': member['recent_blockers_count'] > 2,
        'complex_tasks': any(t['complexity'] == 'high' for t in member['tasks']),
        'new_team_member': member['tenure_days'] < 30
    }
    
    blocker_probability = 0
    if risk_factors['high_workload']:
        blocker_probability += 0.25
    if risk_factors['dependency_count']:
        blocker_probability += 0.20
    if risk_factors['recent_blockers']:
        blocker_probability += 0.30
    if risk_factors['complex_tasks']:
        blocker_probability += 0.15
    if risk_factors['new_team_member']:
        blocker_probability += 0.10
    
    return {
        'probability': blocker_probability * 100,
        'risk_factors': risk_factors,
        'recommendations': generate_prevention_recommendations(risk_factors)
    }
```

#### Workload Balancing

```python
def analyze_workload_balance(team_standups):
    """Analyze workload distribution across team"""
    
    member_workload = {}
    for standup in team_standups:
        member = standup['member']
        tasks = len(standup['planned_today'])
        
        if member not in member_workload:
            member_workload[member] = []
        member_workload[member].append(tasks)
    
    analysis = {}
    for member, task_counts in member_workload.items():
        avg_tasks = sum(task_counts) / len(task_counts)
        analysis[member] = {
            'avg_tasks_per_day': avg_tasks,
            'max_tasks': max(task_counts),
            'min_tasks': min(task_counts),
            'variance': calculate_variance(task_counts),
            'utilization': avg_tasks / member['capacity']
        }
    
    # Identify imbalances
    imbalances = identify_imbalances(analysis)
    
    return {
        'member_analysis': analysis,
        'imbalances': imbalances,
        'redistribution_suggestions': suggest_redistribution(imbalances)
    }
```

### Intelligent Standup Routing

#### Context-Aware Updates

```python
def generate_contextual_standup_summary(standups):
    """Generate summary focused on what matters most"""
    
    # Identify priority themes
    themes = extract_themes(standups)
    
    # Prioritize by impact
    prioritized_items = prioritize_by_impact(themes)
    
    # Group for different audiences
    summary = {
        'executive_summary': generate_executive_summary(prioritized_items),
        'team_detailed': generate_team_summary(standups),
        'blocker_focus': generate_blocker_summary(standups),
        'highlights': generate_highlights(standups),
        'risks': generate_risks(standups)
    }
    
    return summary
```

#### Smart Question Prompts

```python
def generate_smart_questions(member, standup_history):
    """Generate targeted questions based on patterns"""
    
    questions = []
    
    # If member frequently blocked
    if has_frequent_blockers(member):
        questions.append(
            "You've had 3 blockers this week. How can the team help prevent these?"
        )
    
    # If member completing tasks late
    if has_delays(member):
        questions.append(
            "A few tasks are taking longer than expected. What's causing the delay?"
        )
    
    # If member not collaborating much
    if low_collaboration_score(member):
        questions.append(
            "Would you like to pair with anyone on your current tasks?"
        )
    
    # If member's tasks align with priorities
    if aligns_with_priorities(member, team_priorities):
        questions.append(
            "Great progress on priority items! What's next?"
        )
    
    return questions
```

### Automated Insights

#### Weekly Standup Report

```markdown
# Weekly Standup Analysis - [Week]

## 📈 Team Performance

**Velocity:**
- Tasks Completed: [count]
- Average per Day: [number]
- Week over Week: [+X% / -X%]

**Participation:**
- Average Participation: [rate]%
- Late Submissions: [count]
- Missed Standups: [count]

**Blockers:**
- Total Blockers: [count]
- Average Resolution Time: [hours]
- Escalated Blockers: [count]

## 👥 Individual Performance
```
Member       | Completed | Blocked | On Time | Trend
------------- | --------- | ------- | ------- | ------
Member A      | 12        | 2       | 95%     | ⬆️
Member B      | 8         | 5       | 80%     | ⬇️
Member C      | 15        | 1       | 100%    | ➡️
```

## 🚧 Top Blockers This Week
1. **[Blocker]** - Affects [count] team members, [days] days active
2. **[Blocker]** - Affects [count] team members, [days] days active

## 💡 Insights

**What's Working Well:**
- [Observation 1]
- [Observation 2]

**Areas for Improvement:**
- [Observation 1]
- [Observation 2]

**Recommendations:**
- [Recommendation 1]
- [Recommendation 2]

## 🔮 Predictions

**Next Week:**
- Expected velocity: [tasks]
- Potential risks: [description]
- Focus areas: [list]

**Long-term Trends:**
- Velocity trend: [direction]
- Team capacity: [assessment]
- Workload balance: [assessment]
```

---

## Examples

### Example 1: Individual Standup

**User:** "Start my standup"

**Tier 1 Response:**
```
Let's capture your daily standup update:

## 📋 Daily Standup

**Date:** March 27, 2026

**Your Name:** [Your name]

---

**What did you accomplish yesterday?**
Please list what you completed:
- [Task 1]
- [Task 2]
- [Task 3]

**What are you working on today?**
What's your focus for today?
- [Priority 1]
- [Priority 2]

**Any blockers?**
Is anything preventing your progress?
- [None]
- [Blocker description]

**Anything else to share?**
Wins, learnings, announcements?

---

Please respond with your update, or I can fill in from context if you'd like me to check recent work.
```

### Example 2: Team Standup Summary

**User:** "Generate standup summary for today"

**Tier 2 Response:**
```markdown
# Daily Standup Report - March 27, 2026

## 📊 Quick Stats
- **Team Present:** 5/5 (100%)
- **Tasks Completed Yesterday:** 18
- **Tasks Planned Today:** 22
- **Active Blockers:** 2

## ✅ Completed Yesterday
**Sarah:** Shipped user authentication feature, fixed 3 bugs
**Alex:** Completed API integration, updated documentation
**Jordan:** Designed new dashboard, reviewed PRs
**Taylor:** Wrote unit tests, deployed to staging
**Sam:** Conducted user interviews, synthesized feedback

## 🎯 Working on Today
**Sarah:** Testing auth feature, preparing for demo
**Alex:** Performance optimization, bug fixes
**Jordan:** Implementing dashboard design
**Taylor:** Integration testing, code review
**Sam:** Writing feature spec, planning next sprint

## 🚧 Blockers

1. **API Rate Limiting** - Alex
   - **Impact:** Cannot complete performance testing
   - **Need:** Contact API provider for higher rate limit
   - **Owner:** Alex
   - **ETA:** Tomorrow

2. **Design Assets Missing** - Jordan
   - **Impact:** Cannot complete dashboard implementation
   - **Need:** Final assets from design team
   - **Owner:** Jordan
   - **ETA:** End of day

## 📢 Other Updates
- **Sarah:** Won team hackathon! 🎉
- **Alex:** Published blog post about API integration
- **Jordan:** New design system component library ready for review
- **Taylor:** Test coverage now at 85%
- **Sam:** Customer feedback positive on recent features

## 🔗 Dependencies
- Alex waiting on Sam for feature spec before API integration finalization
- Jordan waiting on design team approval for dashboard assets

## 💡 Focus Areas for Today
1. Unblock API rate limiting issue (Alex)
2. Complete dashboard implementation (Jordan)
3. Prepare for demo tomorrow (Sarah)
4. Continue testing (Taylor)
5. Write feature spec (Sam)

## 📈 Team Velocity Trend
- **Last 7 days:** 112 tasks completed (16/day avg)
- **Week before:** 104 tasks completed (15/day avg)
- **Trend:** ⬆️ +7.7% improvement

---

**Action Items for Team Lead:**
- Check in on API rate limit issue (Alex)
- Follow up on design assets (Jordan)
- Review dashboard progress (Jordan)
- Prepare demo presentation (Sarah)
```

### Example 3: Predictive Analysis

**User:** "Analyze our standup trends for this month"

**Tier 3 Response:**
```markdown
# Monthly Standup Analysis - March 2026

## 📊 Executive Summary

**Team Velocity:** 458 tasks completed (19.9 tasks/day avg)
**Trend:** ⬆️ +12% from February (409 tasks)
**Blocker Rate:** 23 blockers (0.97 blockers/day avg, -15% improvement)
**Participation:** 96% on-time submissions

---

## 📈 Performance Trends

### Velocity Analysis
```
Week 1: 102 tasks (20.4/day)  ████████████████████████████
Week 2: 98 tasks  (19.6/day)  ██████████████████████████
Week 3: 112 tasks (22.4/day) ███████████████████████████████
Week 4: 146 tasks (29.2/day) █████████████████████████████████████████████
Overall: 458 tasks (19.9/day)
```

**Insights:**
- Strongest week: Week 4 (+48% vs. Week 1)
- Consistent improvement: +12% month-over-month
- Peak day: Friday, March 21 (32 tasks completed)

### Blocker Analysis
```
Severity Breakdown:
High:   4 blockers (17%)   ██████
Medium: 12 blockers (52%)  ████████████████████
Low:    7 blockers (30%)   ███████████

Resolution Time:
0-24 hours:   13 blockers (57%)  ███████████████████
24-48 hours:  7 blockers (30%)   █████████████
48+ hours:    3 blockers (13%)   █████
```

**Insights:**
- 70% of blockers resolved within 48 hours ✅
- Top blocker categories: Technical (43%), External (35%), Resource (22%)
- Escalation rate: 22% (5 blockers escalated to leadership)

### Participation Analysis
```
Member       | On-Time Rate | Tasks Completed | Blockers | Trend
------------- | ------------ | -------------- | -------- | -----
Sarah         | 98%          | 112            | 3        | ⬆️
Alex          | 95%          | 98             | 5        | ➡️
Jordan        | 100%         | 105            | 2        | ⬆️
Taylor        | 93%          | 87             | 6        | ⬇️
Sam           | 94%          | 56             | 7        | ➡️
```

**Insights:**
- Jordan: Highest participation and fewest blockers (model performer)
- Taylor: Declining trend (+3 blockers this week) - recommend check-in
- Sam: High blocker count relative to tasks - investigate workload

---

## 🚧 Top Recurring Blockers

1. **API Rate Limiting** (5 occurrences)
   - **Frequency:** Every 5-7 days
   - **Impact:** Testing delays (avg. 8 hours lost)
   - **Root Cause:** Third-party API limits
   - **Recommended Action:** Implement request caching and queueing

2. **Design Asset Delays** (4 occurrences)
   - **Frequency:** Weekly pattern
   - **Impact:** Development delays (avg. 1 day per blocker)
   - **Root Cause:** Design team workflow bottleneck
   - **Recommended Action:** Establish design sprint planning with dev team

3. **Code Review Bottlenecks** (3 occurrences)
   - **Frequency:** During sprint end
   - **Impact:** Deployment delays (avg. 0.5 day per blocker)
   - **Root Cause:** Limited reviewer availability
   - **Recommended Action:** Expand reviewer pool, implement async review

---

## 💡 AI Insights

### What's Working Well
✅ **Increasing velocity:** 12% month-over-month improvement
✅ **Blocker resolution:** 70% resolved within 48 hours
✅ **Team collaboration:** High participation rates (96%)

### Areas for Improvement
⚠️ **Technical blockers:** 43% of blockers are technical (API, dependencies)
⚠️ **Design workflow:** Recurring asset delays affecting development
⚠️ **Code review velocity:** Sprint-end bottlenecks delaying deployments

### Predictive Analysis

**Next Month Forecast:**
- Expected velocity: 510 tasks (+11%)
- Predicted blockers: 20-25 (based on trend)
- Risk factors: Major feature launch (Week 2), Design team turnover

**Risk Indicators:**
🔴 **High Risk:** API rate limiting (recurring, increasing frequency)
🟡 **Medium Risk:** Design asset delays (recurring, stable frequency)
🟡 **Medium Risk:** Taylor's declining performance (new pattern)

### Recommendations

**Immediate Actions (This Week):**
1. Implement API request caching to reduce rate limit issues
2. Establish design-dev sync meetings (weekly, 30 minutes)
3. Check in with Taylor to understand performance decline

**Short-term (This Month):**
4. Expand code reviewer pool (train 2 additional reviewers)
5. Create blocker prevention checklist for common patterns
6. Implement workload balancing based on capacity analysis

**Long-term (Next Quarter):**
7. Build self-service design asset library for developers
8. Implement automated blocker detection and escalation
9. Establish continuous improvement process for workflow optimization

---

## 🎯 Next Week Priorities

1. **Resolve API rate limiting** (Alex)
   - Implement caching layer
   - Queue non-critical requests
   - Monitor effectiveness

2. **Streamline design workflow** (Jordan + Design Lead)
   - Weekly design-dev sync
   - Asset library initiative
   - Reduce delivery time to <24 hours

3. **Support team performance** (Team Lead)
   - Check in with Taylor
   - Review workload distribution
   - Provide resources as needed

4. **Prepare for feature launch** (All)
   - Final testing (Week 1)
   - Documentation (Week 1)
   - Launch plan execution (Week 2)

---

**Would you like me to:**
1. Create detailed blocker resolution plans?
2. Generate individual performance summaries?
3. Schedule follow-up meetings for key issues?
4. Set up automated blocker monitoring?
```

---

## Best Practices

### For Individuals

1. **Be Consistent**
   - Submit standups at the same time daily
   - Keep updates concise (2-3 minutes to read)
   - Be honest about blockers

2. **Be Specific**
   - Use clear, actionable language
   - Quantify progress where possible
   - Link blockers to specific tasks

3. **Be Proactive**
   - Ask for help early
   - Offer help to others
   - Share learnings and wins

### For Teams

1. **Create Psychological Safety**
   - No blame for blockers
   - Celebrate wins
   - Support team members

2. **Keep It Brief**
   - Target 2-3 minutes per person
   - Focus on impact, not details
   - Use async when time zones vary

3. **Follow Up**
   - Address blockers promptly
   - Track resolution
   - Learn from patterns

---

## Common Mistakes

### Individual Mistakes

❌ **Too Vague:** "Working on stuff"
✅ **Specific:** "Implementing user authentication API endpoints"

❌ **No Blockers Reported:** "No blockers" when there are issues
✅ **Honest:** "Blocked on design approval, waiting 2 days"

❌ **Task Dumping:** List of 20 tasks
✅ **Prioritized:** "Top 3 priorities: [tasks]"

### Team Mistakes

❌ **Synchronous Across Time Zones:** 2 AM standup for someone
✅ **Async First:** Allow flexible submission times

❌ **No Follow-Up:** Blockers discussed but not resolved
✅ **Action Tracking:** Every blocker has owner and deadline

❌ **One-Way Communication:** Updates submitted but never read
✅ **Engagement:** Team reads, comments, helps each other

---

## Standup Templates

### Email Standup Template

```
Subject: Daily Standup - [Date] - [Your Name]

Hi team,

Here's my standup update:

**Yesterday:**
• [Completed task 1]
• [Completed task 2]
• [Attended meeting/event]

**Today:**
• Working on [task/priority]
• Focus: [area of focus]
• Meeting/collaboration: [what's planned]

**Blockers:**
• [None] or [Blocker description]
  - Impact: [how it affects work]
  - Need: [what help is needed]

**Other:**
• [Announcements, wins, learnings]

Thanks,
[Your Name]
```

### Slack Standup Template

```
📋 **Daily Standup** - [Date]

**Yesterday:**
~ [task]
~ [task]

**Today:**
🎯 [priority/task]
🎯 [priority/task]

**Blockers:**
🚧 [None] or [blocker + help needed]

**Other:**
📢 [announcement]
```

---

## Integration with Other Skills

### Related Skills

- **daily-agenda**: Incorporate standup priorities into daily plan
- **message-review**: Review standup communication tone and clarity
- **project-status**: Update project metrics from standup data

### Workflow Integration

1. **Standup → Daily Agenda**
   ```
   Submit standup → Extract priorities → Update daily agenda
   ```

2. **Standup → Project Status**
   ```
   Team standups → Compile updates → Refresh project dashboard
   ```

3. **Daily Agenda → Standup**
   ```
   Review daily agenda → Identify accomplishments → Prepare standup
   ```

---

## Progressive Disclosure

**Level 1 (Guided):**
- Simple three-question format
- Basic blocker tracking
- Manual compilation of team updates

**Level 2 (Confident):**
- Structured team summaries
- Blocker escalation logic
- Async standup workflows
- Dependency tracking

**Level 3 (Anticipatory):**
- Standup analytics and trends
- Predictive blocker insights
- Workload balancing analysis
- Automated insights generation

---

## Session Tracking

After using this skill, update `personal-os/adaptation/skill-levels.md`:
```
standup-bot:
  level: 1
  sessions_used: 1
  last_used: [current_date]
  progression_notes: "Completed first individual standup, captured blockers"
```