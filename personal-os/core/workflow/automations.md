---
name: automations
type: workflow
tier: unlocked
description: Multi-step workflows synthesized from observation patterns
triggers:
  - User reaches Session 21
  - System detects 3+ multi-step workflow patterns
progressive_unlock: true
session_threshold: 21
---

# Workflow Automations

**Purpose:** Automate complex, multi-step workflows based on observed patterns

## How It Works

This skill learns from your repeated multi-step workflows and creates automated versions. When you perform the same sequence of actions 3+ times, it's synthesized into an automation.

## Unlock Status

**Current State:** Locked (waiting for usage data)

**Required:** 21+ sessions OR 3+ workflow patterns detected
**Current Sessions:** Tracking active
**Patterns Detected:** 0/3

## Discovered Automations

*No automations discovered yet. This will populate after Session 21 or 3 workflow patterns.*

## Example Automations

Once unlocked, you'll see automations like:

### Automation: Code Review Workflow
```yaml
trigger: "code review for [PR/branch]"
steps:
  1. Fetch latest changes
  2. Check diff with `git diff`
  3. Run tests with `pytest`
  4. Check linting with `flake8`
  5. Generate review summary
  6. Post review to GitHub/PR

usage_count: 5 (last 30 days)
time_saved: ~15 minutes per review
confidence: High (5/5 successful executions)
```

### Automation: Weekly Report Generation
```yaml
trigger: "generate weekly report"
steps:
  1. Query completed tasks from TODO list
  2. Fetch git commits from past week
  3. Summarize meeting notes
  4. Calculate productivity metrics
  5. Format report template
  6. Send to team channel

usage_count: 3 (last 30 days)
time_saved: ~45 minutes per report
confidence: Medium (3/3 successful, but some manual edits)
```

### Automation: Deployment Preparation
```yaml
trigger: "prepare deployment for [environment]"
steps:
  1. Run tests: `pytest --cov`
  2. Build Docker image: `docker build -t app:latest .`
  3. Check environment config
  4. Generate changelog
  5. Create deployment checklist
  6. Notify team of pending deploy

usage_count: 8 (last 60 days)
time_saved: ~20 minutes per deployment
confidence: High (8/8 successful)
```

## How Automations Are Created

1. **Pattern Detection**: System tracks multi-step workflows
2. **Frequency Analysis**: Workflows repeated 3+ times are candidates
3. **Success Validation**: Must complete successfully without errors
4. **Synthesis**: Steps are extracted and parameterized
5. **User Approval**: You confirm before adding to automations list
6. **Progressive Unlock**: Appears after Session 21+

## Managing Automations

Once unlocked, you can:

### Create Automation Manually
```
User: "Create automation called 'daily-standup' that does [steps]"
PersonalOS: "I'll create automation 'daily-standup' with these steps:
             1. Fetch TODO list
             2. Get git log for yesterday
             3. Format as standup summary
             4. Send to #team channel
             
             Confirm? (yes/no/edit)"
```

### Edit Automation
```
User: "Edit the 'code-review' automation"
PersonalOS: "What would you like to change?
             1. Add step
             2. Remove step
             3. Modify step
             4. Reorder steps"
User: "Add step: Run security scan with bandit"
PersonalOS: "Step added. Where should it go in the sequence?
             [ ] Before tests
             [ ] After tests
             [ ] After linting"
```

### Disable Automation
```
User: "Disable 'weekly-report' automation"
PersonalOS: "Weekly report automation disabled.
             You can enable it later with: 'Enable weekly-report automation'"
```

### Delete Automation
```
User: "Delete 'deploy-prep' automation permanently"
PersonalOS: "Are you sure? This cannot be undone.
             Confirm: 'delete deploy-prep permanently'"
```

## Execution Safety

### Confirmation Before Running
```markdown
Before executing automation:
1. Show full list of steps
2. Ask for confirmation
3. Allow user to modify or skip steps
4. Preview destructive actions (deletes, deployments, emails)

Example:
PersonalOS: "I'll run 'code-review' automation:
             
             Steps:
             1. Fetch latest changes from origin/main
             2. Check diff with git diff
             3. Run tests (pytest)
             4. Check linting (flake8)
             5. Generate review summary
             6. Post to GitHub PR #123
             
             Confirm? (yes/no/edit/skip)"
```

### Rollback Capability
```
User: "Rollback last automation execution"
PersonalOS: "I can rollback 'code-review' automation:
             
             Rollback steps:
             1. Delete generated review summary file
             2. Remove GitHub PR comment
             3. Reset any state changes
             
             Confirm rollback?"
```

### Error Handling
If automation fails:
1. Stop at error point
2. Show what failed and why
3. Offer options:
   - Retry step
   - Skip step and continue
   - Abort entire automation
   - Partial rollback (undo completed steps)

## Automation Templates

When creating automations, PersonalOS can start from templates:

### Code-Related Templates
- Code review
- Bug reproduction
- Feature development scaffold
- Testing workflow

### Deployment Templates
- Deploy to staging
- Deploy to production
- Rollback deployment
- Database migration

### Documentation Templates
- API documentation
- Meeting notes capture
- Weekly reports
- Project summary

### Communication Templates
- Standup summary
- Project update email
- Incident report
- Announcement post

## Integration Points

### With Shortcuts
- Shortcuts are single-command optimizations
- Automations are multi-step workflows
- Shortcuts can be steps within automations

### With Daily Routine
- Automations can be triggered based on time
- "Run 'daily-standup' automation at 9 AM"
- Automations respect productivity windows

### With Pattern Detection
- Pattern detection identifies automation candidates
- Automations realize those patterns
- Success/failure feeds back into pattern analysis

## Analytics

The system tracks:
- How often each automation runs
- Time saved per automation
- Success/failure rate
- User modifications to automations
- Which automations become obsolete

## Configuration

### Automation Settings
```yaml
automation:
  enabled: true
  require_confirmation: true  # Always ask before running
  allow_rollback: true       # Support undo
  max_execution_time: 3600   # Max 1 hour per automation
  error_handling: stop        # Options: stop, continue, rollback
```

### Template Preferences
```yaml
templates:
  auto_suggest: true          # Suggest templates when creating
  custom_templates: []        # User-defined templates
  preferred_order:           # Template order in suggestions
    - code-review
    - deploy-staging
    - daily-standup
```

## Privacy & Data

- All automations stored locally
- No data shared externally
- You control what's automated
- Export or delete anytime

## Next Steps

1. Continue using PersonalOS naturally
2. System will detect multi-step workflow patterns
3. After Session 21 or 3 patterns detected, review candidates
4. Approve/create automations that are useful
5. Enjoy time savings on repetitive workflows!

---

**Skill Metadata:**
- Category: Workflow
- Unlock Condition: 21+ sessions OR 3+ workflow patterns
- Complexity: High (multi-step, requires validation)
- Safety: Confirmations, rollback, error handling built-in
- Integration: Works with shortcuts, daily-routine, pattern-detect
