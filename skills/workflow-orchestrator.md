---
name: workflow-orchestrator
description: Orchestrate complex multi-step workflows, manage dependencies, and coordinate task execution
version: 1.0.0
---

# Workflow Orchestrator

Orchestrate complex multi-step workflows with dependencies, parallel execution, and intelligent task coordination. This skill manages workflow planning, execution, and monitoring.

## Trigger When:
- "workflow", "orchestrate", "multi-step process"
- "coordinate tasks", "manage dependencies", "parallel execution"
- "workflow plan", "task pipeline", "project workflow"
- "run workflow", "execute workflow", "workflow status"

## Progressive Disclosure

### Level 1: Guided (Default)

**Behavior:**
- Manual workflow planning with explicit steps
- Linear task execution (no parallelization)
- Requires user approval for each step
- Basic dependency tracking

**Process:**
1. **Define Workflow:**
   - Work with user to identify all required steps
   - Clarify step sequence and dependencies
   - Identify required resources and tools
   - Define success criteria for each step

2. **Create Workflow Plan:**
   - List steps in execution order
   - Document step dependencies
   - Specify required inputs and expected outputs
   - Identify potential failure points

3. **Execute Sequentially:**
   - Execute step 1, verify output
   - Ask for approval before step 2
   - Continue until workflow complete
   - Handle failures by pausing and alerting user

4. **Document Results:**
   - Record workflow execution log
   - Note any deviations or issues
   - Save outputs to specified location
   - Ask for user feedback on workflow

**Example:**
```
User: "Orchestrate a software release workflow"

Workflow Orchestrator L1:
1. "Let's plan this release workflow together."
2. "Steps I'm seeing: Test build → Create release branch → Update version → Tag release → Deploy"
3. "Dependencies: Test must pass before branching, version update before tagging"
4. "Ready to start. Execute Step 1: Test build. Confirm?"
   [User confirms]
5. "Test build passed. Ready for Step 2: Create release branch. Confirm?"
   [User confirms]
...
6. "Workflow complete! Release v1.2.3 deployed to production."
```

**Outputs:**
- Workflow plan in `personal-os/memory/workflows.md`
- Execution log with timestamps
- Workflow outputs and artifacts

---

### Level 2: Confident

**Unlocks After:** 5+ successful workflows + user approval

**Behavior:**
- Auto-generates workflow plans from goals
- Executes steps without step-by-step confirmation
- Identifies parallel execution opportunities
- Handles conditional branching and error recovery

**Enhanced Capabilities:**
1. **Workflow Planning:**
   - Analyze goal and suggest optimal step sequence
   - Identify parallelizable tasks
   - Calculate critical path and estimated duration
   - Recommend alternative approaches

2. **Parallel Execution:**
   - Execute independent tasks concurrently
   - Manage resource allocation for parallel tasks
   - Monitor parallel task status and failures
   - Aggregate results from parallel branches

3. **Conditional Branching:**
   - If/then/else logic based on intermediate results
   - Multiple paths through workflow
   - Merge branches back to main flow
   - Handle exceptions with alternative paths

4. **Error Recovery:**
   - Automatic retry for transient failures
   - Fallback procedures for critical failures
   - Rollback to previous state on unrecoverable errors
   - Continue workflow when non-critical steps fail

5. **Workflow Templates:**
   - Save common workflows as reusable templates
   - Template parameterization for different contexts
   - Template library for quick workflow instantiation
   - Template versioning and updates

**Example:**
```
User: "Orchestrate a client onboarding workflow"

Workflow Orchestrator L2:
"Planning workflow: Client Onboarding

Critical Path (Serial): 3.5 hours
1. Create client folder in CRM (5 min) ✓
2. Send welcome email (2 min) ✓
3. Schedule kickoff meeting (5 min) ✓
4. Conduct kickoff meeting (60 min) ✓
5. Create project setup tasks (10 min) ✓

Parallel Tasks (Can run in parallel):
- Client documentation review (30 min) ─┐
- Team assignment email (10 min)     ├──► Merge after kickoff
- Setup project repository (15 min) ─┘

Total Duration: 3.5 hours (vs 5.5 hours sequential)

Conditional Logic:
- If client is enterprise → Add enterprise security checklist
- If client is startup → Add startup onboarding packet
- If no project manager assigned → Notify team lead

Execution Plan:
[✅] Step 1: Create client folder (0:05)
[✅] Step 2: Send welcome email (0:02)
[✅] Step 3: Schedule kickoff (0:05)
[⏳] Step 4: Parallel execution (0:30)
   - Client documentation review
   - Team assignment
   - Repository setup
[⏸] Step 5: Kickoff meeting (scheduled tomorrow 2pm)
[⏸] Step 6: Create setup tasks (conditional on kickoff)

Ready to execute Steps 1-4 now? [Yes/No]"
```

**Outputs:**
- Optimized workflow plans with parallel execution
- Workflow template library
- Execution logs with parallel task tracking
- Error recovery logs

---

### Level 3: Anticipatory

**Unlocks After:** 15+ successful workflows + positive feedback

**Behavior:**
- Anticipates workflow needs based on patterns
- Self-optimizing workflows that learn from executions
- Manages complex workflow dependencies and state
- Predictive workflow scheduling and resource planning

**Advanced Capabilities:**
1. **Predictive Workflow Planning:**
   - Suggests workflows proactively based on calendar/events
   - Identifies workflow opportunities from task patterns
   - Anticipates resource needs and bottlenecks
   - Recommends workflow optimizations

2. **Self-Optimizing Workflows:**
   - Learns optimal step sequences from past executions
   - A/B tests different workflow approaches
   - Identifies and removes redundant steps
   - Adapts workflows to changing team processes

3. **Complex State Management:**
   - Manages workflow state across multiple sessions
   - Handles long-running workflows with checkpoints
   - Resumes interrupted workflows
   - Tracks workflow history and evolution

4. **Resource-Aware Execution:**
   - Schedules workflows based on team capacity
   - Balances concurrent workflow load
   - Adjusts workflow timing based on priorities
   - Integrates with calendar and project management tools

5. **Workflow Analytics:**
   - Tracks workflow execution metrics (duration, success rate, bottlenecks)
   - Identifies workflow improvement opportunities
   - Generates workflow performance reports
   - Compares workflow variants and best practices

**Example:**
```
Workflow Orchestrator L3 (Autonomous):
"I've identified 3 workflow opportunities and optimized 2 existing workflows:

📊 Weekly Workflow Report:
- 8 workflows executed this week
- Total time saved: 12.5 hours (parallel execution: 4.5 hours)
- Success rate: 96.2%
- Average workflow duration: 2.3 hours (down 18% from last week)

🚀 New Workflow Suggestions:
1. Monthly Client Review Workflow (Saves 3 hours/month)
   - Triggers: 1st of each month
   - Steps: Pull client metrics → Generate review docs → Schedule reviews → Email clients
   - Parallel: Can generate all review docs concurrently
   - Estimated duration: 2 hours (vs 5 hours manual)
   - Auto-create? [Yes/No]

2. Sprint Retro Workflow (Saves 1.5 hours/sprint)
   - Triggers: Sprint end detected in project management
   - Steps: Pull sprint data → Generate retro agenda → Facilitate retro → Create action items
   - Conditional: If sprint failed → Add failure analysis step
   - Estimated duration: 1 hour (vs 2.5 hours manual)
   - Auto-create? [Yes/No]

✨ Workflow Optimizations Applied:
1. Release Workflow (Optimized 2026-03-27)
   - Before: 45 minutes sequential
   - After: 32 minutes (parallel: build + deploy)
   - Improvement: 29% faster
   - Success rate: 98.5% (up from 94%)

2. Client Onboarding Workflow (Optimized 2026-03-26)
   - Added: Conditional enterprise vs startup paths
   - Added: Parallel documentation review
   - Improvement: 25% faster
   - Success rate: 97.2% (up from 89.3%)

📈 Active Workflow Monitoring:
- Client Onboarding (ABC Corp): In progress - Step 4/6, 35 min elapsed
- Release v1.3.0: Queued - Waiting for test results
- Team Onboarding (New hire): Scheduled - Tomorrow 9am"
```

**Outputs:**
- Predictive workflow suggestions
- Self-optimized workflows
- Workflow performance analytics
- Complex workflow state management
- Resource-aware scheduling

---

## Integration with Other Skills

- **task-automation:** Provides individual task automations for workflow steps
- **project-status:** Tracks workflow-related project status
- **scheduled-jobs:** Triggers time-based workflow executions
- **notification-manager:** Alerts on workflow events and failures
- **code-review/standup-bot:** Integrates workflows with team processes

---

## Best Practices

### DO:
1. Start with simple linear workflows for L1
2. Always show workflow plan before first execution
3. Test workflows with dry-run mode when possible
4. Document workflow dependencies clearly
5. Monitor workflow performance and optimize iteratively
6. Save successful workflows as templates for reuse
7. Handle errors gracefully with recovery options
8. Communicate workflow status regularly to user

### DO NOT:
1. Create workflows with circular dependencies
2. Execute destructive steps without confirmation at L1-L2
3. Assume parallel tasks are truly independent
4. Create workflows that are harder to maintain than manual execution
5. Ignore workflow failures—fix or improve the workflow
6. Over-optimize workflows before proving value
7. Run workflows that require human judgment/decision without intervention

---

## Common Mistakes

1. **Unclear dependencies:** Not documenting which steps depend on others
   - *Fix:* Always create dependency graph, test with missing dependencies

2. **False parallelization:** Running steps in parallel that actually depend on each other
   - *Fix:* Verify true independence before parallelizing, test both ways

3. **No error handling:** Workflows fail and can't recover or continue
   - *Fix:* Add retry logic, fallback steps, and checkpoint recovery

4. **Hardcoded values:** Workflows break when paths, names, or contexts change
   - *Fix:* Use variables, parameters, and configuration files

5. **Workflow bloat:** Workflows that accumulate steps and become unmanageable
   - *Fix:* Regularly review and simplify, split into sub-workflows

---

## Example Use Cases

1. **DevOps:** CI/CD pipeline with parallel testing and conditional deployment
2. **Marketing:** Campaign workflow with A/B test branches and analytics integration
3. **HR:** Employee onboarding with parallel documentation and team coordination
4. **Product:** Feature release workflow with stakeholder approvals and rollback
5. **Operations:** Incident response workflow with parallel investigation and communication
6. **Sales:** Deal workflow with qualification stages and automated follow-ups

---

## Data Structure

`personal-os/memory/workflows.md`:
```markdown
# Workflows

## Active Workflows
- **client-onboarding:** Client onboarding [L3] (Last run: Today 10am, Success: 97.2%)
  - Duration: 3.5 hours (optimized from 5.5 hours)
  - Parallel tasks: 3
  - Templates: enterprise, startup, standard

- **release-pipeline:** Software release [L3] (Last run: Friday, Success: 98.5%)
  - Duration: 32 minutes (optimized from 45 minutes)
  - Parallel: build + deploy
  - Conditional: Rollback on test failure

## Workflow Templates
- **weekly-report:** Report generation [L2] (Used 12 times)
- **sprint-retro:** Sprint retrospective [L2] (Used 4 times)
- **incident-response:** Incident handling [L1] (Used 2 times)

## Workflow Metrics (Week of 2026-03-27)
- Total workflows: 8
- Total time saved: 12.5 hours
- Success rate: 96.2%
- Avg duration: 2.3 hours (down 18% from last week)
```

---

## Success Metrics

- **L1:** Create 3+ working workflows, 90%+ success rate, document all dependencies
- **L2:** Identify parallel opportunities, execute without prompts, 95%+ success rate, save 5+ hours/week
- **L3:** Self-optimize workflows, anticipate needs, 97%+ success rate, save 10+ hours/week
