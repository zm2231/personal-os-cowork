---
name: project-status
description: Track project progress, metrics, and generate status reports
version: 1.0.0
metadata:
  hermes:
    tags: [collaboration, project-management, status, tracking]
    related_skills: [daily-agenda, session-summary, standup-bot]
---

# Project Status

Track project progress, metrics, milestones, and generate comprehensive status reports for stakeholders and team members.

## When to Use This Skill

**Trigger when user says:**
- "project status"
- "how is [project] doing"
- "progress report"
- "project metrics"
- "what's the status"
- "generate status report"

**Best for:**
- Project tracking and monitoring
- Stakeholder updates
- Sprint retrospectives
- Progress reporting
- Milestone tracking
- Resource allocation

---

## Tier 1: Guided Tracking (Beginner)

**Session Unlock:** Session 14+

### Project Overview

#### Create Project

```
Let's set up a new project:

**Project Name:** [Project name]
**Description:** [Brief description]
**Start Date:** [When project started]
**Target End Date:** [When project should finish]
**Status:** Planning | In Progress | On Hold | Completed | Cancelled

**Team Members:**
- [Name] - [Role]
- [Name] - [Role]

**Key Milestones:**
1. [Milestone name] - [Target date]
2. [Milestone name] - [Target date]
3. [Milestone name] - [Target date]
```

#### Project Template

```markdown
# [Project Name]

**Status:** [Current status]
**Start Date:** [date]
**Target Completion:** [date]
**Actual Completion:** [date or N/A]
**Progress:** [X]%

## Description
[Brief project description and objectives]

## Team
- [Name] - [Role]
- [Name] - [Role]

## Milestones
- [ ] [Milestone 1] - [Target date] - [Status]
- [ ] [Milestone 2] - [Target date] - [Status]
- [ ] [Milestone 3] - [Target date] - [Status]

## Recent Updates
- [Date]: [Update]

## Current Focus
[What's being worked on now]

## Blockers
[None or list of blockers]

## Next Steps
- [ ] [Next step]
- [ ] [Next step]
```

### Update Project

```
Update project progress:

**Project:** [Which project]
**Update Type:** Status | Progress | Milestone | Blocker | Team | Next Steps

**Details:**
[Specific update information]

**Impact:**
[How this affects the project]
```

---

## Tier 2: Confident Reporting (Intermediate)

**Session Unlock:** Session 16+

### Structured Status Reports

#### Daily Project Status

```markdown
# Daily Project Status - [Date]

## 📊 Project: [Project Name]

**Overall Status:** 🟢 On Track / 🟡 At Risk / 🔴 Behind Schedule

**Progress:** [X]% complete ([days] days elapsed / [total] days total)
**Completion Date:** [Target date] (on track / [days] ahead / [days] behind)

---

## ✅ Completed Today
- [Task completed]
- [Task completed]

## 🎯 In Progress
- [Task 1] - [Owner] - [X]% complete
- [Task 2] - [Owner] - [X]% complete

## ⏰ Upcoming (Next 7 Days)
- [Task] - [Due date]
- [Task] - [Due date]

## 🚧 Blockers
1. **[Blocker]** - [Owner]
   - **Impact:** [description]
   - **Resolution:** [plan]

## 📈 Metrics
- **Tasks Completed:** [count] / [total]
- **Tasks in Progress:** [count]
- **Tasks Blocked:** [count]
- **Velocity:** [tasks per day avg]

## 💬 Notes
[Additional notes, updates, announcements]
```

#### Weekly Status Report

```markdown
# Weekly Project Status - [Week of]

## 📊 Executive Summary

**Project:** [Project Name]
**Status:** 🟢 On Track / 🟡 At Risk / 🔴 Behind Schedule
**Completion:** [X]% complete
**ETA:** [date] ([days] ahead/behind schedule)

---

## 📈 Progress This Week

**Completed Tasks:** [count]
**Tasks Completed:** [list of major completions]

**Milestones Achieved:**
- [ ] [Milestone] - [Date achieved]

**Velocity:** [tasks per day] ([+X%/-X% vs last week])

---

## 🎯 Focus for Next Week

**Priority Items:**
1. [Task] - [Owner] - [Due date]
2. [Task] - [Owner] - [Due date]
3. [Task] - [Owner] - [Due date]

**Upcoming Milestones:**
- [Milestone] - [Target date] - [Status]

---

## 🚧 Blockers & Risks

**Active Blockers:** [count]
- [Blocker] - [Days active] - [ETA]

**Risks Identified:**
1. [Risk] - [Likelihood] - [Impact]
   - **Mitigation:** [plan]

---

## 📊 Metrics Dashboard

**Progress:**
```
[██████████░░░░░░░░░░░░░] 40%
```

**Burn Chart:**
```
Tasks
 60 |        ●
 50 |      ●   ●
 40 |    ●       ●
 30 |  ●           ●
 20 |●               ●
 10 |●●●●●●●●●●●●●●●●●
    |___________________
    M  T  W  T  F  M  T
      Week 1     Week 2
```

**Task Distribution:**
- ✅ Completed: [count]
- 🔄 In Progress: [count]
- 📋 Planned: [count]
- 🚧 Blocked: [count]

---

## 💡 Insights & Recommendations

**What's Going Well:**
- [Observation]
- [Observation]

**Areas of Concern:**
- [Concern] - [Impact]

**Recommendations:**
- [Action item]
- [Action item]

---

## 📝 Notes & Announcements
[Additional information]
```

### Milestone Tracking

#### Milestone Template

```yaml
milestones:
  - id: M1
    name: "Design Complete"
    description: "All design assets and specifications finalized"
    target_date: date
    actual_date: date or null
    status: Not Started | In Progress | Completed | Delayed
    completion_percentage: X%
    dependencies: []
    deliverables:
      - [Deliverable 1]
      - [Deliverable 2]
    blockers: []
    
  - id: M2
    name: "Development Phase 1"
    description: "Core features implemented"
    target_date: date
    actual_date: date or null
    status: Not Started | In Progress | Completed | Delayed
    completion_percentage: X%
    dependencies: [M1]
    deliverables:
      - [Deliverable 1]
      - [Deliverable 2]
    blockers: []
```

#### Milestone Progress Calculator

```python
def calculate_milestone_progress(milestone):
    """Calculate overall milestone progress"""
    
    # Progress from deliverables
    deliverable_progress = sum(
        deliverable['completion'] 
        for deliverable in milestone['deliverables']
    ) / len(milestone['deliverables'])
    
    # Adjust for dependencies
    if not all(dep['status'] == 'Completed' for dep in milestone['dependencies']):
        deliverable_progress *= 0.5  # Penalty for unmet dependencies
    
    # Adjust for blockers
    if milestone['blockers']:
        deliverable_progress *= 0.8  # Penalty for active blockers
    
    return deliverable_progress
```

### Resource Tracking

#### Team Allocation

```yaml
team_allocation:
  member_1:
    project: [project_name]
    role: Developer
    allocation: 100%
    tasks:
      - id: T1
        name: "Feature X"
        status: In Progress
        completion: 60%
        estimated_hours: 20
        actual_hours: 12
      - id: T2
        name: "Feature Y"
        status: Planned
        completion: 0%
        estimated_hours: 15
        actual_hours: 0
  
  member_2:
    project: [project_name]
    role: Designer
    allocation: 80%
    tasks:
      - id: T3
        name: "UI Design"
        status: Completed
        completion: 100%
        estimated_hours: 10
        actual_hours: 12
```

#### Capacity Planning

```python
def calculate_team_capacity(team):
    """Calculate team capacity vs workload"""
    
    capacity = {}
    for member in team:
        # Available hours per week
        available_hours = 40 * member['allocation']
        
        # Total estimated hours for assigned tasks
        estimated_workload = sum(
            task['estimated_hours'] - task['actual_hours']
            for task in member['tasks']
            if task['status'] != 'Completed'
        )
        
        capacity[member['name']] = {
            'available_hours': available_hours,
            'workload_hours': estimated_workload,
            'utilization': estimated_workload / available_hours,
            'overallocated': estimated_workload > available_hours
        }
    
    return capacity
```

### Integration with Other Skills

- **daily-agenda**: Extract project tasks for daily planning
- **standup-bot**: Update project status from standup data
- **session-summary**: Log project progress in session notes

---

## Tier 3: Anticipatory Insights (Advanced)

**Session Unlock:** Session 20+

### Predictive Analytics

#### Completion Prediction

```python
def predict_completion(project, historical_data):
    """Predict project completion date based on current velocity"""
    
    # Calculate current velocity
    current_velocity = calculate_velocity(project['completed_tasks'], project['days_active'])
    
    # Compare with historical velocity for similar projects
    similar_projects = find_similar_projects(project, historical_data)
    avg_historical_velocity = calculate_average_velocity(similar_projects)
    
    # Weighted prediction
    predicted_velocity = (current_velocity * 0.6) + (avg_historical_velocity * 0.4)
    
    # Remaining work
    remaining_tasks = project['total_tasks'] - len(project['completed_tasks'])
    
    # Predicted days to completion
    predicted_days = remaining_tasks / predicted_velocity
    
    # Calculate completion date
    predicted_completion = project['start_date'] + timedelta(days=predicted_days)
    
    # Confidence interval
    confidence = calculate_confidence(project, similar_projects)
    
    return {
        'predicted_date': predicted_completion,
        'predicted_days': predicted_days,
        'confidence': confidence,
        'on_track': predicted_completion <= project['target_date'],
        'days_ahead_or_behind': (predicted_completion - project['target_date']).days,
        'velocity_trend': calculate_velocity_trend(project),
        'risk_factors': identify_completion_risks(project)
    }
```

#### Risk Assessment

```python
def assess_project_risks(project):
    """Identify and score project risks"""
    
    risks = []
    
    # Schedule risk
    if project['progress'] < expected_progress(project):
        risk_score = (expected_progress(project) - project['progress']) * 10
        risks.append({
            'type': 'Schedule',
            'description': 'Behind schedule',
            'score': risk_score,
            'severity': 'High' if risk_score > 30 else 'Medium' if risk_score > 15 else 'Low',
            'mitigation': 'Increase team allocation or reduce scope'
        })
    
    # Resource risk
    if project['team_utilization'] > 0.9:
        risks.append({
            'type': 'Resource',
            'description': 'Team overallocated',
            'score': 25,
            'severity': 'Medium',
            'mitigation': 'Add team members or reduce workload'
        })
    
    # Blocker risk
    if len(project['active_blockers']) > 3:
        risk_score = len(project['active_blockers']) * 10
        risks.append({
            'type': 'Blocker',
            'description': f'{len(project["active_blockers"])} active blockers',
            'score': risk_score,
            'severity': 'High' if risk_score > 30 else 'Medium',
            'mitigation': 'Prioritize blocker resolution, escalate if needed'
        })
    
    # Milestone risk
    delayed_milestones = [m for m in project['milestones'] if m['delayed']]
    if delayed_milestones:
        risk_score = len(delayed_milestones) * 15
        risks.append({
            'type': 'Milestone',
            'description': f'{len(delayed_milestones)} milestones delayed',
            'score': risk_score,
            'severity': 'High' if risk_score > 30 else 'Medium',
            'mitigation': 'Reassess timeline, reallocate resources'
        })
    
    return {
        'total_risk_score': sum(r['score'] for r in risks),
        'risk_level': 'Critical' if sum(r['score'] for r in risks) > 75 else 'High' if sum(r['score'] for r in risks) > 50 else 'Medium' if sum(r['score'] for r in risks) > 25 else 'Low',
        'risks': sorted(risks, key=lambda x: x['score'], reverse=True),
        'recommendations': generate_mitigation_plan(risks)
    }
```

### Advanced Metrics

#### Earned Value Management (EVM)

```python
def calculate_ev_metrics(project):
    """Calculate Earned Value Management metrics"""
    
    # BAC: Budget at Completion (total planned hours)
    bac = sum(task['estimated_hours'] for task in project['tasks'])
    
    # PV: Planned Value (what should have been done by now)
    planned_completion_percentage = project['days_active'] / project['total_days']
    pv = bac * planned_completion_percentage
    
    # EV: Earned Value (what has actually been completed)
    ev = sum(
        task['estimated_hours'] * (task['completion'] / 100)
        for task in project['tasks']
    )
    
    # AC: Actual Cost (hours actually spent)
    ac = sum(task['actual_hours'] for task in project['tasks'])
    
    # EVM Metrics
    sv = ev - pv  # Schedule Variance
    spi = ev / pv if pv > 0 else 0  # Schedule Performance Index
    cv = ev - ac  # Cost Variance
    cpi = ev / ac if ac > 0 else 0  # Cost Performance Index
    
    # ETC: Estimate to Complete
    etc = (bac - ev) / cpi if cpi > 0 else (bac - ev)
    
    # EAC: Estimate at Completion
    eac = ac + etc
    
    return {
        'bac': bac,
        'pv': pv,
        'ev': ev,
        'ac': ac,
        'sv': sv,
        'spi': spi,
        'cv': cv,
        'cpi': cpi,
        'etc': etc,
        'eac': eac,
        'schedule_status': 'Ahead' if sv > 0 else 'Behind' if sv < 0 else 'On Track',
        'cost_status': 'Under Budget' if cv > 0 else 'Over Budget' if cv < 0 else 'On Budget',
        'projected_completion': project['start_date'] + timedelta(days=eac/8)  # Assuming 8h/day
    }
```

#### Burndown Chart Analysis

```python
def analyze_burndown(project):
    """Analyze burndown chart and generate insights"""
    
    # Daily remaining work
    daily_remaining = calculate_daily_remaining(project)
    
    # Calculate trend line
    trend = calculate_linear_trend(daily_remaining)
    
    # Compare ideal burndown to actual
    ideal_burndown = calculate_ideal_burndown(project)
    actual_burndown = daily_remaining
    
    # Calculate deviation
    deviation = calculate_deviation(ideal_burndown, actual_burndown)
    
    # Predict completion
    predicted_days = extrapolate_completion(trend)
    
    return {
        'trend': 'Improving' if trend['slope'] < 0 else 'Stable' if abs(trend['slope']) < 0.1 else 'Declining',
        'current_velocity': abs(trend['slope']),
        'deviation_from_ideal': deviation,
        'predicted_completion_days': predicted_days,
        'on_track': predicted_days <= project['total_days'],
        'insights': generate_burndown_insights(trend, deviation),
        'recommendations': generate_burndown_recommendations(trend, deviation)
    }
```

### Intelligent Status Generation

#### Context-Aware Reports

```python
def generate_contextual_status(project, audience):
    """Generate status report tailored to audience"""
    
    if audience == 'executive':
        return {
            'focus': 'high-level metrics and strategic alignment',
            'sections': [
                'Executive Summary',
                'Key Milestones',
                'Budget & Timeline',
                'Risks & Mitigation'
            ],
            'detail_level': 'Low',
            'metrics': ['progress', 'timeline', 'budget', 'risk_score']
        }
    
    elif audience == 'team':
        return {
            'focus': 'detailed task status and blockers',
            'sections': [
                'Daily Progress',
                'Task Breakdown',
                'Blockers',
                'Next Steps'
            ],
            'detail_level': 'High',
            'metrics': ['tasks_completed', 'tasks_in_progress', 'blockers', 'velocity']
        }
    
    elif audience == 'client':
        return {
            'focus': 'deliverables and value',
            'sections': [
                'Deliverables Status',
                'Key Achievements',
                'Timeline',
                'Questions'
            ],
            'detail_level': 'Medium',
            'metrics': ['deliverables', 'timeline', 'quality_metrics']
        }
```

---

## Examples

### Example 1: Daily Status Update

**User:** "What's the status of the Mobile App project?"

**Tier 1 Response:**
```markdown
# Project Status: Mobile App

**Overall Status:** 🟢 On Track

**Progress:** 45% complete (45 days elapsed / 100 days total)
**Target Completion:** May 15, 2026
**Current Date:** March 27, 2026

---

## Description
Build native iOS and Android mobile app for our e-commerce platform with shopping cart, payments, and user accounts.

## Team
- Alex (Tech Lead)
- Sarah (iOS Developer)
- Jordan (Android Developer)
- Taylor (Backend)
- Sam (Designer)

## Milestones
- [x] Requirements Complete - Feb 15
- [x] Design Complete - March 1
- [ ] Core Features - April 15 (In Progress - 70%)
- [ ] Testing Phase - May 1
- [ ] Launch - May 15

## Recent Updates
- March 26: Shopping cart integration completed
- March 25: Payment API testing started
- March 24: User authentication backend deployed

## Current Focus
- Completing payment integration
- Testing core features
- Bug fixes from QA

## Blockers
None

## Next Steps
- [ ] Complete payment integration (Sarah/Jordan)
- [ ] Start integration testing (Taylor)
- [ ] Prepare for testing phase (Alex)
```

### Example 2: Weekly Status Report

**User:** "Generate weekly status report"

**Tier 2 Response:**
```markdown
# Weekly Project Status - Week of March 21-27, 2026

## 📊 Executive Summary

**Project:** Mobile App
**Status:** 🟢 On Track
**Completion:** 45% (up from 38% last week)
**ETA:** May 15, 2026 (on track)

---

## 📈 Progress This Week

**Completed Tasks:** 12
**Major Completions:**
- Shopping cart UI (iOS & Android)
- Payment API integration (Backend)
- User authentication testing (QA)

**Milestones Achieved:**
None (next milestone: Core Features - April 15)

**Velocity:** 2.4 tasks/day (+20% vs last week)

---

## 🎯 Focus for Next Week

**Priority Items:**
1. Complete payment integration (iOS/Android) - Sarah/Jordan - April 2
2. Start integration testing - Taylor - April 1
3. Bug fixes from sprint review - All - Ongoing
4. Performance optimization - Taylor - April 3

**Upcoming Milestones:**
- Core Features Complete - April 15 (14 days remaining) - 70% complete

---

## 🚧 Blockers & Risks

**Active Blockers:** 0

**Risks Identified:**
1. **Third-party payment provider downtime** - Low likelihood - High impact
   - **Mitigation:** Implement fallback payment methods

2. **App store approval delays** - Medium likelihood - Medium impact
   - **Mitigation:** Submit 2 weeks early, have contingency plan

---

## 📊 Metrics Dashboard

**Progress:**
```
[██████████░░░░░░░░░░░░░] 45%
```

**Burn Chart:**
```
Tasks
 60 |              ●
 50 |          ●   ●
 40 |      ●       ●
 30 |  ●           ●
 20 |●               ●
 10 |●●●●●●●●●●●●●●●●●
    |___________________
    M  T  W  T  F  M  T
      Last week   This week
```

**Task Distribution:**
- ✅ Completed: 45 tasks
- 🔄 In Progress: 12 tasks
- 📋 Planned: 30 tasks
- 🚧 Blocked: 0 tasks

---

## 💡 Insights & Recommendations

**What's Going Well:**
- Velocity improved 20% this week
- No active blockers
- Shopping cart completed on schedule

**Areas of Concern:**
- Integration testing not yet started (3 days behind plan)
- App store approval timeline is tight

**Recommendations:**
- Start integration testing this week (Taylor)
- Submit app to app stores by April 10 (2-week buffer)
- Schedule daily standups to maintain momentum

---

## 📝 Notes & Announcements
- New design system component library ready for review (Sam)
- Backend API documentation updated (Taylor)
- Team hackathon scheduled for April 5
```

### Example 3: Predictive Analysis

**User:** "Analyze project health and predict completion"

**Tier 3 Response:**
```markdown
# Project Health Analysis - Mobile App

## 📊 Executive Summary

**Project:** Mobile App
**Health Score:** 82/100 🟢 Good
**Status:** On Track with Minor Concerns
**Confidence:** High (85%)

---

## 🔮 Completion Prediction

**Target Date:** May 15, 2026 (49 days remaining)

**Predicted Completion:** May 12, 2026 (3 days early)

**Confidence Interval:**
- Optimistic: May 5 (10 days early) - 25% probability
- Likely: May 12 (3 days early) - 50% probability
- Conservative: May 18 (3 days late) - 25% probability

**Prediction Factors:**
```
Factor                    | Impact  | Weighted Score
------------------------- | ------- | -------------
Current Velocity         | +3 days |  1.5 points
Historical Trend         | +2 days |  1.0 points
Team Capacity            | +1 day  |  0.5 points
Risk Factors             | -2 days | -1.0 points
Complexity               | -1 day  | -0.5 points
------------------------- | ------- | -------------
Total                    | +3 days |  1.5 points
```

---

## 📈 Velocity Analysis

**Current Velocity:** 2.4 tasks/day
**Historical Average:** 2.0 tasks/day
**Trend:** ⬆️ +20% improvement

**Velocity Trend (Last 4 Weeks):**
```
3.0 |          ●●
2.5 |        ●●
2.0 |      ●●
1.5 |    ●●
    |___________________
    Week 1  2  3  4
```

**Insights:**
- Velocity consistently improving over past 4 weeks
- Team working at +20% above historical average
- Sustainable pace (not overworking)

---

## 💰 Earned Value Management

**EVM Metrics:**
```
BAC (Budget at Completion):     1,200 hours
PV (Planned Value):             540 hours (45%)
EV (Earned Value):              590 hours (49%)
AC (Actual Cost):               520 hours

SV (Schedule Variance):         +50 hours ✅ (ahead)
SPI (Schedule Performance):     1.09 ✅ (9% ahead)
CV (Cost Variance):            +70 hours ✅ (under budget)
CPI (Cost Performance):        1.13 ✅ (13% under budget)

ETC (Estimate to Complete):    540 hours
EAC (Estimate at Completion):  1,060 hours (12% under budget)
```

**Interpretation:**
- ✅ Ahead of schedule by 50 hours (about 3 days)
- ✅ Under budget by 12% (140 hours saved)
- ✅ Efficient execution (CPI > 1.0)

---

## 🚧 Risk Assessment

**Total Risk Score:** 23/100 🟢 Low

**Risks by Category:**

1. **Schedule Risk** - Score: 10/100 (Low)
   - Project ahead of schedule
   - No delayed milestones
   - **Mitigation:** Continue current pace, maintain focus

2. **Resource Risk** - Score: 15/100 (Low)
   - Team utilization: 85% (healthy)
   - One team member (Taylor) at 95% capacity
   - **Mitigation:** Monitor Taylor's workload, redistribute if needed

3. **Technical Risk** - Score: 20/100 (Low-Medium)
   - Third-party payment provider (unreliable history)
   - App store approval uncertainty
   - **Mitigation:** Implement fallbacks, submit early

4. **Scope Risk** - Score: 0/100 (None)
   - No scope creep detected
   - Requirements stable
   - **Mitigation:** Continue scope management

**Top 3 Risk Factors:**
1. **Payment provider downtime** - Probability: 15% - Impact: High
   - Mitigation: Implement multiple payment gateways as fallback

2. **App store rejection** - Probability: 25% - Impact: Medium
   - Mitigation: Submit 2 weeks early, have contingency plan

3. **Taylor capacity issues** - Probability: 40% - Impact: Low
   - Mitigation: Redistribute integration testing to Sarah/Jordan

---

## 📊 Health Score Breakdown

```
Metric                    | Score | Weight | Weighted Score
------------------------- | ----- | ------ | -------------
Progress vs Plan          |  95   |  25%   |  23.75 points
Velocity Trend            |  90   |  20%   |  18.00 points
Budget Performance        |  90   |  15%   |  13.50 points
Milestone Adherence       | 100   |  15%   |  15.00 points
Team Capacity             |  85   |  10%   |   8.50 points
Risk Level                |  77   |  10%   |   7.70 points
Stakeholder Satisfaction |  85   |   5%   |   4.25 points
------------------------- | ----- | ------ | -------------
TOTAL                     |       | 100%   |  90.70 / 100
```

**Health Grade:** A (90.7/100)

**Insights:**
- ✅ Excellent milestone adherence (100%)
- ✅ Strong progress vs plan (95%)
- ✅ Good velocity trend (90%)
- ⚠️ Risk level could be improved (77%)

---

## 💡 AI Recommendations

### Immediate Actions (This Week)
1. **Start integration testing** (Taylor) - Currently 3 days behind plan
   - Impact: Maintains schedule buffer
   - Priority: High

2. **Monitor Taylor's capacity** (Alex)
   - Impact: Prevents burnout and delays
   - Priority: Medium

### Short-term (Next 2 Weeks)
3. **Submit to app stores** (All)
   - Target: April 10 (5 days early)
   - Impact: Provides approval buffer
   - Priority: High

4. **Implement payment fallbacks** (Taylor)
   - Impact: Reduces technical risk
   - Priority: Medium

### Long-term (Next Month)
5. **Plan post-launch support** (Alex)
   - Impact: Smooth transition to maintenance
   - Priority: Low

6. **Document lessons learned** (All)
   - Impact: Improves future projects
   - Priority: Low

---

## 🎯 Success Metrics

**On-Track Indicators:**
✅ EV > PV (ahead of schedule)
✅ CPI > 1.0 (under budget)
✅ Velocity improving
✅ No critical blockers
✅ Stakeholder satisfaction high

**Warning Indicators:**
⚠️ Taylor at 95% capacity (monitor)
⚠️ Third-party dependency (payment provider)

**Critical Indicators:**
🔴 None

---

## 📈 Project Health Trend

**Health Score History:**
```
100 |                    ●
 90 |              ●●●  ●
 80 |          ●●
 70 |      ●●
 60 |  ●●
    |___________________
    Week 1  2  3  4  5  6
```

**Trend:** ⬆️ Improving consistently
**Confidence:** High - project health has improved 4 weeks in a row

---

## 🔮 Scenario Analysis

**Scenario 1: Everything Goes Well (Optimistic)**
- Probability: 25%
- Completion: May 5 (10 days early)
- Budget savings: ~15%
- Key drivers: Velocity continues, no blockers

**Scenario 2: Current Trend Continues (Most Likely)**
- Probability: 50%
- Completion: May 12 (3 days early)
- Budget savings: ~12%
- Key drivers: Maintain current pace, minor delays

**Scenario 3: Some Setbacks (Conservative)**
- Probability: 25%
- Completion: May 18 (3 days late)
- Budget: On plan
- Key drivers: Payment provider issues, app store delays

**Recommended Contingency:** Plan for Scenario 3, aim for Scenario 2

---

## 📋 Executive Summary for Stakeholders

**Key Message:** Project is on track and performing well, with 3-day early completion predicted. No major concerns.

**Highlights:**
- 45% complete, ahead of schedule
- 12% under budget
- Team velocity improving
- No critical blockers

**Risks:**
- Payment provider reliability (mitigated with fallbacks)
- App store approval timeline (mitigated with early submission)

**Recommendation:** Continue current approach, no intervention needed at this time.

**Next Update:** Weekly report on April 3, 2026
```

---

## Best Practices

### For Status Reporting

1. **Be Honest and Transparent**
   - Report delays early
   - Don't hide blockers
   - Share both good and bad news

2. **Focus on Actionable Information**
   - What needs to be done
   - Who is responsible
   - When it's due

3. **Tailor to Audience**
   - Executives: High-level metrics and risks
   - Team: Detailed tasks and blockers
   - Clients: Deliverables and timeline

### For Project Tracking

1. **Update Regularly**
   - Daily: Task progress
   - Weekly: Milestones and blockers
   - Monthly: Overall project health

2. **Use Consistent Metrics**
   - Same measurements over time
   - Track trends, not just snapshots
   - Compare to baselines

3. **Plan for Contingencies**
   - Identify risks early
   - Have mitigation strategies
   - Build buffer into timeline

---

## Common Mistakes

### Reporting Mistakes

❌ **Too Optimistic:** "Everything's going great" when behind schedule
✅ **Realistic:** "3 days behind plan, taking steps to recover"

❌ **Too Detailed:** 50-page report for executives
✅ **Right Detail:** 1-page summary with key metrics and risks

❌ **Late Reporting:** Status updates 1 week late
✅ **Timely:** Status updates within 24 hours of period end

### Tracking Mistakes

❌ **Not Updated:** Tasks marked "In Progress" for weeks
✅ **Current:** Regular progress updates, accurate status

❌ **No Blockers Reported:** "No blockers" but nothing getting done
✅ **Honest:** Report blockers even if they seem small

❌ **Scope Creep:** Tasks added without adjusting timeline
✅ **Scope Managed:** Adjust timeline when scope changes

---

## Integration with Other Skills

### Related Skills

- **daily-agenda**: Extract project tasks for daily planning
- **standup-bot**: Update project status from team standups
- **session-summary**: Log project progress in session notes

### Workflow Integration

1. **Standup Bot → Project Status**
   ```
   Team standups → Extract task updates → Refresh project dashboard
   ```

2. **Project Status → Daily Agenda**
   ```
   Review project status → Identify priorities → Update daily tasks
   ```

3. **Daily Agenda → Project Status**
   ```
   Complete daily tasks → Update project progress → Log milestones
   ```

---

## Progressive Disclosure

**Level 1 (Guided):**
- Simple project overview template
- Basic status tracking
- Manual milestone updates

**Level 2 (Confident):**
- Structured daily and weekly reports
- Milestone progress calculation
- Team capacity tracking
- Resource allocation

**Level 3 (Anticipatory):**
- Predictive completion analysis
- Earned Value Management (EVM)
- Risk assessment and mitigation
- AI-powered insights and recommendations

---

## Session Tracking

After using this skill, update `personal-os/adaptation/skill-levels.md`:
```
project-status:
  level: 1
  sessions_used: 1
  last_used: [current_date]
  progression_notes: "Created project overview, tracked first milestone"
```
