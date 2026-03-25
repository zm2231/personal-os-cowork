---
name: task-automation
description: Automate repetitive tasks, create task macros, and execute workflows
version: 1.0.0
---

# Task Automation

Automate repetitive tasks and create task macros for common workflows. This skill handles task pattern detection, macro creation, and automated execution.

## Trigger When:
- "automate this task", "create automation", "make a task macro"
- "do this automatically", "routine task", "repetitive work"
- "task automation", "macro", "workflow automation"
- "schedule this task", "auto-complete", "automated task"

## Progressive Disclosure

### Level 1: Guided (Default)

**Behavior:**
- Manual task automation with explicit steps
- Requires user approval before executing automations
- Tracks task patterns and suggests simple automations

**Process:**
1. **Identify Repetitive Tasks:**
   - Review recent session logs for repeated task patterns
   - Check `personal-os/memory/patterns.md` for documented routines
   - Ask user: "What tasks do you do repeatedly?"

2. **Create Simple Macros:**
   - Break task into discrete steps
   - Define input parameters
   - Specify output format
   - Document trigger conditions

3. **Test Automation:**
   - Run automation in preview mode
   - Verify each step executes correctly
   - Show user the execution plan
   - Ask for approval before full execution

4. **Record Pattern:**
   - Save automation to `personal-os/memory/automations.md`
   - Document success criteria
   - Track usage frequency
   - Note any edge cases

**Example:**
```
User: "Automate my morning file organization"

Task Automation L1:
1. "I see you organize downloads every morning. Let me create a macro."
2. "Steps: Check downloads folder → Move files to project folders → Delete duplicates"
3. "Preview: Found 12 files to organize. Move 8 to projects, delete 3, 1 manual?"
4. "Ready to execute. Confirm?"
```

**Outputs:**
- Created automations in `personal-os/memory/automations.md`
- Task pattern documentation
- Success/failure metrics

---

### Level 2: Confident

**Unlocks After:** 5+ successful automations + user approval

**Behavior:**
- Auto-detects task patterns from session history
- Suggests automations proactively
- Executes approved automations without step-by-step confirmation
- Handles simple conditional logic

**Enhanced Capabilities:**
1. **Pattern Detection:**
   - Analyzes last 10 sessions for repeated command sequences
   - Identifies task clusters (3+ similar actions)
   - Calculates time saved per automation
   - Prioritizes high-frequency tasks

2. **Smart Automation Suggestions:**
   - Presents automation opportunities with ROI estimates
   - Groups related tasks into compound automations
   - Suggests automation improvements based on usage
   - Flags deprecated automations

3. **Conditional Logic:**
   - If/then branching based on file types, times, or conditions
   - Error handling with fallback actions
   - Variable substitution from context files
   - Multi-step workflows with checkpoints

4. **Automated Execution:**
   - Runs approved automations without prompts
   - Logs all executions with timestamps
   - Sends notifications on failure
   - Provides execution reports weekly

**Example:**
```
User: "What automations can you suggest?"

Task Automation L2:
"I found 3 automation opportunities:

1. Weekly Report Generation (Saves 2.5 hours/week)
   - Triggers: Friday 4pm
   - Steps: Pull metrics from 3 sources → Generate report → Email to team
   - Confidence: 92% (based on 4 weeks of data)
   - Create automation? [Yes/No]

2. Email Triage (Saves 45 minutes/day)
   - Triggers: New email received
   - Steps: Classify priority → Flag urgent → Auto-archive newsletters
   - Confidence: 78% (needs calibration)
   - Create automation? [Yes/No]

3. File Backup (Saves 1 hour/week)
   - Triggers: Sunday 10am
   - Steps: Copy work files to cloud → Verify integrity → Clean old backups
   - Confidence: 98% (consistent pattern)
   - Create automation? [Yes/No]"
```

**Outputs:**
- Automation suggestions with ROI analysis
- Enhanced automations with conditional logic
- Execution reports and metrics
- Automation health monitoring

---

### Level 3: Anticipatory

**Unlocks After:** 15+ successful automations + positive feedback

**Behavior:**
- Proactively creates automations based on detected patterns
- Self-optimizing automations that learn and improve
- Chains multiple automations into complex workflows
- Predictive task scheduling

**Advanced Capabilities:**
1. **Automatic Pattern Recognition:**
   - Detects subtle task patterns across time and context
   - Identifies opportunity chains (task A usually precedes task B)
   - Learns user preferences for automation vs. manual
   - Adapts automations to changing workflows

2. **Self-Optimizing Automations:**
   - A/B tests different automation approaches
   - Learns optimal execution timing
   - Adjusts parameters based on success rates
   - Deprecates low-value automations automatically

3. **Workflow Chaining:**
   - Connects automations into end-to-end workflows
   - Handles dependencies and parallel execution
   - Manages workflow state and checkpoints
   - Enables workflow templates for reuse

4. **Predictive Scheduling:**
   - Schedules automations based on historical patterns
   - Adjusts for calendar events and priorities
   - Balances automation load throughout day
   - Reschedules based on real-time conditions

**Example:**
```
Task Automation L3 (Autonomous):
"I've created 2 new automations based on your patterns:

✅ Client Onboarding Workflow (Chain of 4 automations)
   - Triggers: New client added to CRM
   - Automation chain: Create project folder → Send welcome email → Schedule kickoff → Add to standup
   - Time saved: 3.5 hours per client
   - Next run: Pending (no new clients)

✅ Meeting Prep Automation (Optimized)
   - Improved from last week: Now includes attendee research (saves 20 min)
   - Triggers: Meeting in 1 hour on calendar
   - Steps: Check attendee LinkedIn → Pull project context → Prep talking points → Generate agenda
   - Success rate: 94% (up from 87% after optimization)
   - Next run: Today 3pm (Team Standup)

Weekly Automation Report:
- 12 automations ran this week
- Total time saved: 18.5 hours
- Failure rate: 2.1% (below target of 5%)
- New opportunities detected: 2 (see report)"
```

**Outputs:**
- Automatically created and optimized automations
- Complex workflow chains
- Predictive scheduling recommendations
- Weekly automation performance reports

---

## Integration with Other Skills

- **pattern-detect:** Provides task pattern data for automation opportunities
- **daily-routine:** Suggests automations based on daily work patterns
- **workflow-orchestrator:** Chains automations into complex workflows
- **notification-manager:** Alerts on automation failures
- **scheduled-jobs:** Triggers time-based automations

---

## Best Practices

### DO:
1. Start with simple, high-frequency tasks for L1
2. Always show automation steps before first execution
3. Track automation success and failure rates
4. Gradually increase automation autonomy as trust builds
5. Keep automations reversible and safe
6. Document all automations clearly
7. Monitor for automation side effects
8. Retire automations that are no longer useful

### DO NOT:
1. Automate high-stakes tasks without explicit approval
2. Create automations with destructive actions (deletes, git push) without confirmation
3. Chain too many automations together before proven stability
4. Assume patterns are permanent—workflows change
5. Ignore automation failures—fix or retire them
6. Automate tasks that require human judgment/creativity
7. Create automations that are harder to maintain than the task itself

---

## Common Mistakes

1. **Over-automating:** Creating automations for tasks that take longer to set up than to do manually
   - *Fix:* Only automate if saves >30 minutes per week

2. **Fragile automations:** Hardcoded paths, names, or values that break when things change
   - *Fix:* Use variables, fuzzy matching, and error handling

3. **No monitoring:** Automations fail silently and keep failing
   - *Fix:* Set up failure notifications and weekly review

4. **Zombie automations:** Old automations that still run but are no longer useful
   - *Fix:* Track automation usage, retire inactive ones monthly

5. **Destructive without confirmation:** Automations that delete files or send emails without checks
   - *Fix:* Always require confirmation for destructive actions, even at L3

---

## Example Use Cases

1. **Developer:** Automate build/test/deploy pipeline with conditional steps
2. **Designer:** Automate file export and versioning for design assets
3. **Manager:** Automate weekly report generation and team updates
4. **Researcher:** Automate literature search and citation management
5. **Writer:** Automate document formatting and backup workflows
6. **Sales:** Automate lead qualification and follow-up sequences

---

## Data Structure

`personal-os/memory/automations.md`:
```markdown
# Automations

## Active Automations
- **morning-file-org:** Downloads organization [L2] (Last run: Today 9am, Success rate: 98%)
- **weekly-report:** Report generation [L3] (Last run: Friday 4pm, Success rate: 94%)
- **email-triage:** Email classification [L2] (Last run: Ongoing, Success rate: 87%)

## Suggested Automations
- meeting-prep (Saves 1.5 hours/week) - Awaiting approval
- client-onboarding (Saves 3.5 hours/client) - Awaiting approval

## Retired Automations
- daily-backup (Retired 2026-03-15 - Now handled by cloud sync)
```

---

## Success Metrics

- **L1:** Create 3+ working automations, 90%+ success rate
- **L2:** Detect 5+ automation opportunities, execute without prompts, 95%+ success rate
- **L3:** Self-optimize 3+ automations, create 2+ autonomously, 97%+ success rate
