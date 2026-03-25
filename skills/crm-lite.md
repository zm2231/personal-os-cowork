---
name: crm-lite
description: Lightweight customer relationship management for tracking contacts, deals, and interactions
version: 1.0.0
metadata:
  hermes:
    tags: [collaboration, crm, sales, contacts]
    related_skills: [daily-agenda, session-summary, project-status]
---

# CRM Lite

Lightweight customer relationship management for tracking contacts, deals, and interactions. Simple, fast, no complex CRM software needed.

## When to Use This Skill

**Trigger when user says:**
- "add contact"
- "update contact"
- "track deal"
- "CRM" or "customer relationship"
- "follow up with [person]"
- "meeting notes for [client]"

**Best for:**
- Freelancers and consultants
- Small business owners
- Sales representatives
- Client management
- Lead tracking
- Follow-up reminders

---

## Tier 1: Guided Tracking (Beginner)

**Session Unlock:** Session 14+

### Contact Management

#### Add New Contact

```
Let's add a new contact:

**Name:** [Full name]
**Company:** [Company name]
**Email:** [Email address]
**Phone:** [Phone number]
**Role/Title:** [Job title]
**Source:** [How you met - referral, conference, cold outreach]
**Status:** [Lead, Prospect, Customer, Past Customer]
**Notes:** [Initial notes]
```

#### Contact Template

```markdown
# [Name] - [Company]

**Contact Details:**
- Email: [email]
- Phone: [phone]
- LinkedIn: [linkedin_url]
- Website: [company_website]

**Role/Title:** [title]
**Status:** [Lead/Prospect/Customer]
**Source:** [how you met]

**Interactions:**
- [Date] - [Type: Meeting/Call/Email] - [Brief notes]

**Next Follow-up:** [Date and action]
```

#### Update Contact

```
Update existing contact:

**Which contact:** [Search by name/company]
**Field to update:** [Contact info/Status/Notes/Next follow-up]
**New value:** [Updated information]
```

### Deal Tracking

#### Add New Deal

```
Let's track a new deal:

**Deal Name:** [Brief description]
**Contact:** [Which contact]
**Value:** [Estimated value]
**Stage:** [Lead Discovery → Proposal → Negotiation → Closed Won/Lost]
**Probability:** [Estimated win percentage]
**Expected Close Date:** [Target date]
**Notes:** [Initial notes]
```

#### Deal Template

```markdown
# [Deal Name]

**Contact:** [Name - Company]
**Value:** $[amount]
**Stage:** [Current stage]
**Probability:** [percentage]%
**Expected Close:** [date]

**Timeline:**
- [Date] - Created - Stage: Lead
- [Date] - Moved to Proposal
- [Date] - Negotiation started

**Notes:**
- [Key details about this deal]
- [Decision makers involved]
- [Competitors considered]
- [Pain points addressed]

**Next Steps:**
- [ ] Follow up on proposal
- [ ] Schedule demo
- [ ] Send contract for review
```

### Interaction Tracking

#### Log Interaction

```
Log an interaction with a contact:

**Contact:** [Name]
**Type:** [Meeting/Call/Email/Video Conference]
**Date:** [Date of interaction]
**Duration:** [How long]
**Attendees:** [Who was involved]
**Purpose:** [Why you met]
**Outcome:** [What happened]
**Next Actions:** [Follow-up tasks]
**Next Follow-up Date:** [When to follow up]
```

#### Interaction Template

```markdown
## Interaction Log - [Date]

**Contact:** [Name] - [Company]
**Type:** [Meeting/Call/Email]
**Duration:** [minutes]
**Attendees:** [You, Contact, Others]

**Purpose:**
[Brief description of why you met]

**Discussion Summary:**
- [Key point 1]
- [Key point 2]
- [Key point 3]

**Outcome:**
- [What was accomplished]
- [Any decisions made]
- [Items agreed upon]

**Next Actions:**
- [ ] [Action item] - [Owner] - [Due date]
- [ ] [Action item] - [Owner] - [Due date]

**Next Follow-up:** [Date and purpose]
```

### Follow-Up Reminders

```
Set follow-up reminder:

**Contact:** [Name]
**Follow-up Date:** [When]
**Purpose:** [Why follow up]
**Type:** [Email/Call/Meeting]
**Notes:** [Context for follow-up]
```

---

## Tier 2: Confident Management (Intermediate)

**Session Unlock:** Stage 16+

### Advanced Contact Management

#### Contact Scoring

**Lead Scoring Model:**
```
Score contacts based on engagement:

Demographics (0-20 points):
- Job title match: +10
- Company size: 0-10
- Industry fit: +5

Engagement (0-30 points):
- Responded to outreach: +10
- Attended meeting: +15
- Requested demo: +20
- Multiple touchpoints: +5 each

Behavior (0-30 points):
- Visited pricing: +10
- Downloaded content: +15
- Referred by customer: +20
- Active in conversations: +10 each

Fit (0-20 points):
- Budget alignment: +10
- Timeline urgency: +10

Total Score: 0-100
- 0-30: Cold Lead
- 31-50: Warm Lead
- 51-70: Hot Lead
- 71-100: Ready to Close
```

#### Contact Segmentation

```yaml
segments:
  high_value:
    criteria:
      - deal_value: >$50,000
      - company_size: 100+ employees
      - budget_approved: true
  
  quick_wins:
    criteria:
      - deal_value: $10,000-$25,000
      - decision_maker_involved: true
      - timeline: <30 days
  
  long_term:
    criteria:
      - deal_value: >$100,000
      - timeline: 6+ months
      - stakeholder_count: 3+
  
  at_risk:
    criteria:
      - days_since_contact: >30
      - stage_stuck_days: >21
      - engagement_declining: true
```

### Pipeline Management

#### Deal Stage Progression

```yaml
pipeline_stages:
  lead_discovery:
    avg_duration: 14 days
    conversion_rate: 25%
    key_actions:
      - Initial qualification call
      - Needs assessment
      - Budget qualification
    
  qualification:
    avg_duration: 21 days
    conversion_rate: 60%
    key_actions:
      - Stakeholder identification
      - Decision process mapping
      - Competitor analysis
    
  proposal:
    avg_duration: 28 days
    conversion_rate: 40%
    key_actions:
      - Solution presentation
      - Proposal delivery
      - Negotiation prep
    
  negotiation:
    avg_duration: 14 days
    conversion_rate: 70%
    key_actions:
      - Contract review
      - Terms negotiation
      - Legal review
    
  closed_won:
    actions:
      - Contract signing
      - Onboarding kickoff
      - Success plan setup
```

#### Pipeline Health Metrics

```python
def calculate_pipeline_health(deals):
    """Calculate overall pipeline health score"""
    
    total_value = sum(d['value'] for d in deals)
    weighted_value = sum(d['value'] * (d['probability'] / 100) for d in deals)
    
    # Velocity (how fast deals move)
    avg_cycle_time = calculate_average(deals, 'days_in_pipeline')
    
    # Coverage (do we have enough in pipeline?)
    monthly_target = 50000
    pipeline_ratio = total_value / monthly_target
    
    # Conversion rates by stage
    conversion_rates = calculate_conversion_by_stage(deals)
    
    return {
        "total_pipeline": total_value,
        "weighted_pipeline": weighted_value,
        "pipeline_coverage": pipeline_ratio,
        "avg_deal_velocity": avg_cycle_time,
        "conversion_rates": conversion_rates,
        "health_score": calculate_health_score(pipeline_ratio, avg_cycle_time)
    }
```

### Automated Follow-Up

#### Follow-Up Sequences

```yaml
email_sequences:
  cold_outreach:
    - day: 0
      subject: "Quick question about [company]"
      template: "introduction"
    
    - day: 3
      subject: "Still thinking about it?"
      template: "follow_up_1"
    
    - day: 7
      subject: "Value for [company]"
      template: "value_prop"
    
    - day: 14
      subject: "Last attempt"
      template: "break_up"
  
  post_meeting:
    - day: 0
      subject: "Thanks for meeting - Recap & Next Steps"
      template: "meeting_recap"
    
    - day: 2
      subject: "Any questions?"
      template: "check_in"
    
    - day: 7
      subject: "Moving forward?"
      template: "progress_check"
  
  proposal_sent:
    - day: 0
      subject: "Proposal attached - Review requested"
      template: "proposal_sent"
    
    - day: 3
      subject: "Feedback on proposal?"
      template: "proposal_feedback"
    
    - day: 10
      subject: "Next steps for proposal"
      template: "proposal_next_steps"
```

#### Activity Automation

```python
def auto_generate_follow_ups():
    """Generate follow-up tasks based on recent activity"""
    
    recent_interactions = get_interactions(last_days=3)
    
    follow_ups = []
    for interaction in recent_interactions:
        if interaction['type'] == 'meeting':
            # Send recap within 24 hours
            follow_ups.append({
                'contact': interaction['contact'],
                'type': 'email',
                'due_date': interaction['date'] + timedelta(hours=24),
                'purpose': 'meeting_recap',
                'template': 'post_meeting'
            })
        
        elif interaction['type'] == 'proposal_sent':
            # Follow up on proposal in 3 days
            follow_ups.append({
                'contact': interaction['contact'],
                'type': 'email',
                'due_date': interaction['date'] + timedelta(days=3),
                'purpose': 'proposal_feedback',
                'template': 'proposal_follow_up'
            })
    
    return follow_ups
```

### Integration with Other Skills

- **daily-agenda**: Review follow-ups scheduled for today
- **session-summary**: Capture client insights after meetings
- **project-status**: Track deal progress in projects

---

## Tier 3: Anticipatory Management (Advanced)

**Session Unlock:** Session 20+

### Predictive Analytics

#### Deal Prediction Model

```python
def predict_deal_outcome(deal, historical_data):
    """Predict likelihood of closing a deal"""
    
    features = {
        'value': deal['value'],
        'days_in_stage': deal['days_in_current_stage'],
        'days_total': deal['days_in_pipeline'],
        'stages_completed': deal['stages_completed'],
        'touchpoints': deal['total_interactions'],
        'last_activity_days': days_since(deal['last_activity']),
        'contact_score': deal['contact']['lead_score'],
        'company_size': deal['contact']['company_size'],
        'competitor_involved': deal['competitors_present']
    }
    
    # Weighted scoring model
    score = (
        features['contact_score'] * 0.3 +
        (features['touchpoints'] / 10) * 0.2 +
        (features['stages_completed'] / 5) * 0.2 +
        (1 - features['days_in_stage'] / 60) * 0.15 +
        (1 if not features['competitor_involved'] else 0.5) * 0.15
    )
    
    # Adjust based on historical patterns
    historical_win_rate = get_historical_win_rate(similar_deals)
    adjusted_score = (score + historical_win_rate) / 2
    
    return {
        'win_probability': adjusted_score * 100,
        'confidence': calculate_confidence(features),
        'risk_factors': identify_risk_factors(features),
        'recommended_actions': generate_recommendations(features)
    }
```

#### Churn Prediction

```python
def predict_customer_churn(customer):
    """Predict likelihood of customer churn"""
    
    activity_metrics = {
        'login_frequency': calculate_frequency(customer['logins'], days=30),
        'feature_usage': get_feature_usage_ratio(customer),
        'support_tickets': customer['open_tickets'],
        'payment_issues': customer['payment_failures'],
        'nps_score': customer['latest_nps'],
        'usage_decline': calculate_decline(customer['usage_history'])
    }
    
    churn_risk = (
        (activity_metrics['login_frequency'] < 2) * 0.3 +
        (activity_metrics['feature_usage'] < 0.3) * 0.2 +
        (activity_metrics['support_tickets'] > 3) * 0.2 +
        (activity_metrics['nps_score'] < 7) * 0.15 +
        (activity_metrics['usage_decline'] > 0.5) * 0.15
    )
    
    return {
        'churn_risk': churn_risk * 100,
        'risk_level': 'high' if churn_risk > 0.7 else 'medium' if churn_risk > 0.4 else 'low',
        'primary_drivers': identify_drivers(activity_metrics),
        'retention_actions': suggest_retention_actions(churn_risk)
    }
```

### Advanced Segmentation

#### RFM Analysis (Recency, Frequency, Monetary)

```python
def rfm_segmentation(customers):
    """Segment customers using RFM model"""
    
    for customer in customers:
        # Calculate scores
        recency_score = score_recency(days_since(customer['last_purchase']))
        frequency_score = score_frequency(customer['purchase_count'])
        monetary_score = score_monetary(customer['total_value'])
        
        # Combine scores
        customer['rfm_score'] = f"{recency_score}{frequency_score}{monetary_score}"
        customer['rfm_segment'] = determine_segment(customer['rfm_score'])
        
    segments = {
        'Champions': ['555', '554', '544', '545'],
        'Loyal Customers': ['543', '444', '445', '354', '355'],
        'Potential Loyalists': ['534', '533', '443', '434'],
        'Recent Customers': ['343', '344', '335', '345'],
        'Promising': ['335', '435', '325', '245'],
        'Needs Attention': ['155', '154', '144', '214'],
        'About to Sleep': ['331', '321', '312', '221'],
        'At Risk': ['255', '254', '245', '244'],
        'Cannot Lose Them': ['155', '154', '144'],
        'Hibernating': ['332', '223', '232', '231'],
        'Lost': ['111', '112', '121', '131']
    }
    
    return customers, segments
```

#### Lifecycle Segmentation

```yaml
customer_lifecycle:
  new_customer:
    criteria:
      - days_as_customer: 0-90
      - purchases: 1-3
    strategy:
      - Onboarding communication
      - Feature education
      - Early success checks
      - Welcome offers
  
  growing_customer:
    criteria:
      - days_as_customer: 90-365
      - purchase_frequency: increasing
      - usage_rate: >50%
    strategy:
      - Upsell opportunities
      - Product expansion
      - Referral requests
      - Loyalty program
  
  mature_customer:
    criteria:
      - days_as_customer: 365+
      - purchase_frequency: stable
      - usage_rate: >75%
    strategy:
      - Advanced features
      - Premium offerings
      - Advocacy programs
      - Strategic partnership
  
  at_risk_customer:
    criteria:
      - activity_decline: >30%
      - support_tickets: increasing
      - nps_score: <7
    strategy:
      - Win-back campaigns
      - Discount offers
      - Personal outreach
      - Problem resolution
  
  churned_customer:
    criteria:
      - last_purchase: >180 days
      - active_subscription: false
    strategy:
      - Reactivation campaigns
      - Win-back offers
      - Exit interviews
      - Competitor analysis
```

### Intelligent Automation

#### Smart Task Prioritization

```python
def prioritize_sales_tasks(tasks, deals, contacts):
    """Prioritize sales tasks using multiple factors"""
    
    for task in tasks:
        # Base score from task type
        task_type_scores = {
            'call_prospect': 10,
            'demo': 9,
            'proposal': 8,
            'follow_up': 7,
            'email': 5,
            'admin': 2
        }
        task['base_score'] = task_type_scores.get(task['type'], 5)
        
        # Boost based on deal value
        related_deal = find_deal(task['deal_id'])
        if related_deal:
            value_boost = min(related_deal['value'] / 10000, 5)
            task['score'] += value_boost
        
        # Boost based on contact score
        contact = find_contact(task['contact_id'])
        if contact:
            contact_boost = contact['lead_score'] / 20
            task['score'] += contact_boost
        
        # Boost based on urgency (deadline approaching)
        if task['due_date']:
            days_until_due = (task['due_date'] - today).days
            urgency_boost = max(0, (7 - days_until_due) / 7) * 3
            task['score'] += urgency_boost
    
    # Sort by score and return
    return sorted(tasks, key=lambda x: x['score'], reverse=True)
```

#### Opportunity Matching

```python
def find_similar_won_deals(current_deal, historical_deals):
    """Find similar deals that were won to predict success factors"""
    
    similarity_factors = {
        'industry': 0.3,
        'company_size': 0.2,
        'deal_size': 0.25,
        'pain_points': 0.15,
        'stakeholder_role': 0.1
    }
    
    similar_deals = []
    for historical in historical_deals:
        if historical['status'] != 'won':
            continue
        
        similarity = 0
        for factor, weight in similarity_factors.items():
            if current_deal[factor] == historical[factor]:
                similarity += weight
            elif isinstance(current_deal[factor], int) and isinstance(historical[factor], int):
                # Numeric similarity
                similarity += weight * (1 - abs(current_deal[factor] - historical[factor]) / max(current_deal[factor], historical[factor]))
        
        if similarity > 0.6:
            similar_deals.append({
                'deal': historical,
                'similarity': similarity,
                'success_factors': extract_success_factors(historical)
            })
    
    return sorted(similar_deals, key=lambda x: x['similarity'], reverse=True)[:5]
```

### CRM Dashboards

#### Daily Dashboard

```markdown
# Today's CRM Overview - [Date]

## 🎯 Key Metrics
- **Pipeline Value:** $[total_value]
- **Weighted Pipeline:** $[weighted_value] (based on win probability)
- **Active Deals:** [count]
- **Follow-ups Due Today:** [count]

## 📊 Pipeline Health
```
Stage           | Deals | Value      | Win Rate
--------------- | ----- | ---------- | ---------
Lead Discovery  | [n]   | $[value]   | [rate]%
Qualification   | [n]   | $[value]   | [rate]%
Proposal        | [n]   | $[value]   | [rate]%
Negotiation     | [n]   | $[value]   | [rate]%
Closed Won      | [n]   | $[value]   | 100%
```

## 🔥 Hot Opportunities (High Probability + Value)
1. [Deal Name] - [Company] - $[value] - [probability]% - [Days to Close]
2. [Deal Name] - [Company] - $[value] - [probability]% - [Days to Close]

## ⚠️ At Risk Deals (Stalled >21 days)
1. [Deal Name] - [Company] - Stalled for [days] days
2. [Deal Name] - [Company] - Stalled for [days] days

## 📅 Today's Follow-ups
- [ ] [Time] - [Contact] - [Purpose] - [Type]
- [ ] [Time] - [Contact] - [Purpose] - [Type]

## 💡 AI Recommendations
- Deal [Name] has high churn risk based on activity decline
- Schedule follow-up with [Contact] - not contacted in 30 days
- Consider upsell opportunity with [Company] - usage at 85%
```

#### Weekly Analysis

```markdown
# Weekly CRM Analysis - [Week]

## 📈 Performance
- **New Deals Added:** [count]
- **Deals Moved Forward:** [count]
- **Deals Closed Won:** [count] ($[value])
- **Deals Closed Lost:** [count] ($[value])
- **Win Rate:** [rate]%

## 🔍 Pipeline Velocity
- **Average Deal Cycle:** [days] days (vs. [benchmark])
- **Stage Dwell Times:**
  - Lead Discovery: [days] days
  - Qualification: [days] days
  - Proposal: [days] days
  - Negotiation: [days] days

## 👥 Contact Activity
- **New Contacts:** [count]
- **Interactions Logged:** [count]
- **Meetings Held:** [count]
- **Follow-up Completion Rate:** [rate]%

## 🎯 Top Performing Sources
1. [Source] - [count] deals - $[value]
2. [Source] - [count] deals - $[value]
3. [Source] - [count] deals - $[value]

## 📊 Conversion Funnel
```
Lead Discovery → [count] (100%)
           ↓
Qualification → [count] ([rate]%)
           ↓
Proposal → [count] ([rate]%)
           ↓
Negotiation → [count] ([rate]%)
           ↓
Closed Won → [count] ([rate]%)
```

## 💡 Insights & Opportunities
- [AI-generated insight 1]
- [AI-generated insight 2]
- [AI-generated insight 3]

## 🎯 Next Week Focus
1. Follow up with [count] at-risk deals
2. Advance [count] deals to next stage
3. Target [source] for new opportunities
```

---

## Examples

### Example 1: Adding a New Contact

**User:** "Add a new contact for Sarah Johnson at TechCorp"

**Tier 1 Response:**
```
Let's add Sarah Johnson as a new contact:

**Contact Details:**
- **Name:** Sarah Johnson
- **Company:** TechCorp
- **Email:** [I'll need her email]
- **Phone:** [I'll need her phone]
- **Role/Title:** [What's her role?]
- **Source:** [How did you meet her?]
- **Status:** Lead

**Notes:**
[Any initial notes about this contact?]

Please provide the missing details, or I can create a basic contact now and you can update later.
```

### Example 2: Tracking a Deal

**User:** "I just had a great meeting with Acme Corp. They want to move forward with our Enterprise plan - $50,000"

**Tier 2 Response:**
```
Great news! Let me create the deal for you:

## Deal: Acme Corp - Enterprise Plan

**Contact:** [Which contact at Acme Corp?]
**Value:** $50,000
**Stage:** Proposal (since they want to move forward)
**Probability:** 70% (they've expressed interest)
**Expected Close Date:** [When do you expect to close?]

**Decision Makers:**
- [Who are the key stakeholders?]
- [Who has final approval?]

**Competitors:**
- [Who else are they considering?]
- [What's our advantage?]

**Next Steps:**
- [ ] Send proposal
- [ ] Schedule demo (if needed)
- [ ] Contract review
- [ ] Negotiation

**Timeline Estimate:**
Based on similar $50k deals, expect 2-4 weeks from proposal to close.

Would you like me to:
1. Create the deal now with this information?
2. Update an existing contact/deal?
3. Log the meeting details as well?
```

### Example 3: Pipeline Review

**User:** "Show me my pipeline health"

**Tier 3 Response:**
```
## Pipeline Health Report

### Overall Score: 7.2/10 ⚠️

**Strengths:**
✅ Good pipeline coverage (3.2x monthly target)
✅ Strong conversion in Proposal stage (75% win rate)
✅ Average deal velocity improving (45 days vs. 52 last month)

**Concerns:**
⚠️ Low win rate in Qualification stage (45% vs. 60% benchmark)
⚠️ 3 deals stalled in Negotiation >21 days
⚠️ Pipeline concentration: 60% of value in 2 deals (risk)

### Pipeline Overview
```
Stage           | Deals | Value      | Weighted | Velocity
--------------- | ----- | ---------- | -------- | --------
Lead Discovery  | 8     | $120,000   | $18,000   | 12 days ⬇️
Qualification   | 5     | $85,000    | $25,500   | 24 days ⬆️
Proposal        | 4     | $180,000   | $108,000  | 28 days ➡️
Negotiation     | 3     | $95,000    | $76,000   | 21 days ⬆️
Closed Won      | 2     | $75,000    | $75,000   | -
---------------- | ----- | ---------- | -------- | --------
**Total**       | 22    | **$555,000** | **$302,500** | **25 days avg**
```

### 🔥 Hot Opportunities
1. **Enterprise Deal - MegaCorp** - $75,000 - 85% - Close in 7 days
2. **SaaS License - TechStartup** - $45,000 - 75% - Close in 14 days
3. **Consulting - FinanceCorp** - $35,000 - 70% - Close in 21 days

### ⚠️ At Risk Deals
1. **Integration Project - DataCo** - Stalled 28 days in Negotiation
   - **Issue:** Legal review delays
   - **Action:** Schedule check-in with legal team
   
2. **Annual Contract - RetailInc** - Stalled 24 days in Qualification
   - **Issue:** Budget reallocation
   - **Action:** Confirm if deal still active

3. **Custom Dev - StartupXYZ** - Stalled 22 days in Proposal
   - **Issue:** Competitor price undercut
   - **Action:** Value-based selling conversation

### 💡 AI Recommendations

**Based on historical data, here's what I recommend:**

1. **Focus on stalled Negotiation deals** (DataCo)
   - 82% of deals stalled >21 days in Negotiation are lost
   - Win-back rate: 23% with proactive outreach
   - Recommended: Call decision-maker directly

2. **Improve Qualification win rate** (45% vs 60%)
   - Top reason for lost deals: No clear champion
   - Recommendation: Confirm stakeholder mapping before advancing

3. **Pipeline diversification**
   - Current risk: 60% of value in 2 deals
   - Recommendation: Increase Lead Discovery activity
   - Target: Add 5 new leads this week

4. **Predictive insight: MegaCorp deal**
   - Similar deals: 85% win rate in this stage
   - Risk factor: Competitor involved (reduces win rate to 72%)
   - Recommended: Emphasize unique value propositions

### 📊 This Week's Goals
- [ ] Move DataCo from Negotiation → Closed Won or Lost
- [ ] Advance 2 deals to next stage
- [ ] Add 5 new qualified leads to pipeline
- [ ] Follow up with 10 cold leads

Would you like me to:
1. Create a daily agenda with follow-up tasks?
2. Draft emails for at-risk deals?
3. Analyze a specific deal in detail?
```

---

## Best Practices

### Contact Management

1. **Keep Information Current**
   - Update contact info regularly
   - Log every interaction
   - Note role changes and job transitions

2. **Qualify Before Investing**
   - Use lead scoring to prioritize
   - Confirm budget and timeline early
   - Identify decision makers

3. **Build Relationships**
   - Add value beyond sales
   - Remember personal details
   - Follow up promptly

### Deal Management

1. **Qualify Rigorously**
   - Use BANT framework (Budget, Authority, Need, Timeline)
   - Document all decision criteria
   - Validate win probability regularly

2. **Move Deals Forward**
   - Always have next steps
   - Set clear deadlines
   - Remove stalled deals

3. **Learn from Every Deal**
   - Document why deals are won/lost
   - Analyze patterns
   - Improve process

---

## Common Mistakes

### Contact Mistakes

❌ **Incomplete Information:** Missing email, phone, or company
✅ **Complete Profiles:** All key contact fields filled

❌ **No Context:** Just a name, no notes or history
✅ **Rich Context:** Interaction history, preferences, relationship details

❌ **Not Updated:** Old information, no recent activity
✅ **Current:** Regular updates, recent interactions logged

### Deal Mistakes

❌ **Optimistic Probability:** Every deal at 80%
✅ **Realistic Scoring:** Probability based on evidence

❌ **Stalled Deals Ignored:** Deals sitting in same stage for months
✅ **Active Management:** Move forward or close

❌ **No Next Steps:** Deal exists but no action items
✅ **Clear Path:** Always have defined next steps

---

## CRM Templates

### Contact Database Structure

```yaml
contacts:
  - id: unique_identifier
    name:
      first: string
      last: string
    company: string
    title: string
    contact_info:
      email: string
      phone: string
      linkedin: string
      website: string
    demographics:
      company_size: number
      industry: string
      location: string
    status: Lead|Prospect|Customer|PastCustomer
    source: string
    lead_score: number
    created_at: date
    updated_at: date
    tags: [string]
    notes: string
    interactions:
      - date: date
        type: string
        duration: minutes
        outcome: string
        next_actions: [string]
```

### Deal Database Structure

```yaml
deals:
  - id: unique_identifier
    name: string
    contact_id: reference
    value: number
    currency: string
    stage: string
    probability: number
    expected_close_date: date
    created_at: date
    closed_date: date
    status: Active|Won|Lost
    competitors: [string]
    decision_makers: [string]
    win_reason: string
    loss_reason: string
    timeline:
      - date: date
        stage: string
        notes: string
    notes: string
```

---

## Integration with Other Skills

### Related Skills

- **daily-agenda**: Review today's follow-ups and prioritize tasks
- **session-summary**: Capture client insights after meetings
- **project-status**: Track deal progress in project dashboards

### Workflow Integration

1. **Daily Agenda → CRM**
   ```
   Load daily agenda → Prioritize follow-ups → Update CRM tasks
   ```

2. **Session Summary → CRM**
   ```
   End meeting → Generate session summary → Log interaction → Update deal
   ```

3. **CRM → Project Status**
   ```
   Update deal status → Refresh project dashboard → Track overall progress
   ```

---

## Progressive Disclosure

**Level 1 (Guided):**
- Basic contact and deal tracking
- Simple interaction logging
- Manual follow-up reminders

**Level 2 (Confident):**
- Contact scoring and segmentation
- Pipeline health metrics
- Automated follow-up sequences

**Level 3 (Anticipatory):**
- Predictive analytics for deals
- Advanced segmentation (RFM, lifecycle)
- Intelligent task prioritization
- AI-powered recommendations

---

## Session Tracking

After using this skill, update `personal-os/adaptation/skill-levels.md`:
```
crm-lite:
  level: 1
  sessions_used: 1
  last_used: [current_date]
  progression_notes: "Added first contact, tracked initial deal"
```
