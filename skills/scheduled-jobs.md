---
name: scheduled-jobs
description: Schedule and manage recurring tasks, periodic maintenance, and time-based automations
version: 1.0.0
---

# Scheduled Jobs

Schedule and manage recurring tasks, periodic maintenance, and time-based automations. This skill handles cron-like scheduling, job execution, and job lifecycle management.

## Trigger When:
- "schedule a task", "recurring task", "daily job"
- "schedule this", "run this daily", "periodic task"
- "scheduled job", "cron job", "maintenance task"
- "job schedule", "task schedule", "run at time"

## Progressive Disclosure

### Level 1: Guided (Default)

**Behavior:**
- Manual job creation with explicit schedules
- Simple time-based triggers (daily, weekly, monthly)
- No job dependencies or chaining
- Requires user confirmation for job creation/execution

**Process:**
1. **Define Job Requirements:**
   - Understand what task needs scheduling
   - Determine frequency and timing
   - Identify any inputs or parameters
   - Clarify what output should be produced

2. **Create Job Configuration:**
   - Set job name and description
   - Configure schedule (cron expression or simple frequency)
   - Define job command or task
   - Specify output location and format

3. **Test Job Execution:**
   - Run job manually to verify it works
   - Check output is correct
   - Confirm job timing is appropriate
   - Document any issues or adjustments needed

4. **Schedule and Monitor:**
   - Enable job on schedule
   - Monitor first scheduled execution
   - Report job success or failure
   - Document job configuration

**Example:**
```
User: "Schedule a daily report generation"

Scheduled Jobs L1:
1. "Let's set up your daily report job."
2. "Job name: Daily Report Generation"
3. "Frequency: Daily. What time?"
   [User: 5pm]
4. "Task: What report should I generate?"
   [User: Pull metrics from project-status and email summary]
5. "Output: Email to whom?"
   [User: me@example.com]
6. "Schedule: Daily at 5pm. Preview command:
   Run: project-status skill → Generate summary → Email to me@example.com"
7. "Test run now to verify?"
   [User: Yes]
8. "Test successful. Report sent. Schedule job to run daily at 5pm?"
   [User: Yes]
9. "Job scheduled. First run: Today 5pm."
```

**Outputs:**
- Job configuration in `personal-os/memory/scheduled-jobs.md`
- Job execution logs
- Job output files

---

### Level 2: Confident

**Unlocks After:** 5+ successful jobs + user approval

**Behavior:**
- Smart job scheduling based on patterns
- Job dependencies and chaining
- Conditional job execution
- Automated job monitoring and alerts

**Enhanced Capabilities:**
1. **Smart Scheduling:**
   - Suggest optimal job timing based on usage patterns
   - Avoid scheduling during peak usage times
   - Spread jobs throughout the day/week
   - Account for job execution duration

2. **Job Dependencies:**
   - Define jobs that depend on other jobs
   - Ensure dependent jobs wait for prerequisite jobs
   - Chain jobs together in sequences
   - Handle job failure in dependency chains

3. **Conditional Execution:**
   - Run jobs based on conditions (file exists, data changed, etc.)
   - Skip jobs if conditions not met
   - Use conditional logic in job commands
   - Implement if/then/else job flows

4. **Job Monitoring:**
   - Track job success and failure rates
   - Alert on job failures
   - Monitor job execution duration
   - Identify performance degradation

5. **Job History and Logs:**
   - Keep detailed execution history for each job
   - Store job outputs for analysis
   - Track job resource usage
   - Generate job performance reports

**Example:**
```
User: "Schedule a weekly maintenance job"

Scheduled Jobs L2:
"Planning your weekly maintenance job:

📅 Job Configuration:
- Name: Weekly System Maintenance
- Frequency: Weekly
- Suggested timing: Sunday 3am (low activity period)
- Reason: Your usage data shows minimal activity on Sundays

🔗 Job Chain:
1. Data Backup (30 min)
   ↓
2. Integrity Check (10 min)
   ↓
3. Log Cleanup (5 min)
   ↓
4. System Report (5 min)
   ↓
5. Email Summary (2 min)
Total duration: ~52 minutes

⚙️ Conditional Logic:
- Skip integrity check if backup failed
- Only email summary if any issues found
- Run report even if cleanup fails (non-critical)

📊 Job Dependencies:
- Depends on: No other jobs
- Prerequisite for: None
- Can run in parallel with: No jobs (maintenance should be exclusive)

⏱️ Execution Estimate:
- Average duration: 52 minutes
- Expected completion: Sunday 3:52am
- Notification: Email on completion or failure

Schedule this job? [Yes/No] [Customize]"
```

**Outputs:**
- Complex job schedules with dependencies
- Job chain configurations
- Conditional execution logic
- Job performance reports and logs

---

### Level 3: Anticipatory

**Unlocks After:** 15+ successful jobs + positive feedback

**Behavior:**
- Predictive job scheduling and optimization
- Self-tuning job performance
- Job resource management and load balancing
- Proactive job failure prevention

**Advanced Capabilities:**
1. **Predictive Scheduling:**
   - Learn optimal execution times from job history
   - Predict job duration and adjust schedules accordingly
   - Avoid scheduling conflicts with other jobs
   - Adapt schedules to changing usage patterns

2. **Self-Tuning Performance:**
   - Identify slow jobs and optimize them
   - Adjust job timing based on execution trends
   - Automatically retry failed jobs with exponential backoff
   - Deprecate jobs that are no longer useful

3. **Resource Management:**
   - Monitor system resources during job execution
   - Throttle jobs if system is under load
   - Balance job load across available resources
   - Predict resource needs and schedule accordingly

4. **Proactive Failure Prevention:**
   - Identify patterns that lead to job failures
   - Pre-check conditions before job execution
   - Implement fallback strategies for high-risk jobs
   - Alert on jobs likely to fail before execution

5. **Job Analytics and Optimization:**
   - Track job performance metrics over time
   - Identify optimization opportunities
   - Suggest job improvements based on data
   - Generate job health reports

**Example:**
```
Scheduled Jobs L3 (Autonomous):
"I've optimized your scheduled jobs and all systems are healthy:

📊 Job Health Report (Week of 2026-03-27):
- Total jobs: 12
- Jobs executed: 84 (12 jobs × 7 days)
- Success rate: 99.4% (52 successful, 1 failed and retried, 1 skipped)
- Average execution time: 3.2 minutes/job
- Resource usage: CPU 23%, Memory 18%, Disk I/O 12%

✨ Optimizations Applied:
1. Weekly Maintenance rescheduled
   - From: Sunday 3am
   - To: Sunday 2:15am
   - Reason: System load analysis shows optimal window at 2:15am
   - Result: 15% faster execution (42 min → 36 min)

2. Daily Report job optimized
   - Added conditional skip on weekends
   - Reason: Weekend reports rarely viewed (8% open rate vs 67% weekday)
   - Result: 28 fewer unnecessary executions/month

3. Log Cleanup job enhanced
   - Added smart retention (keep longer for critical logs)
   - Reason: Critical logs needed for incident investigation
   - Result: Better coverage, same storage (intelligent compression)

🔧 Active Jobs:
- daily-report: Daily at 5pm [L3] (Success: 100%, Duration: 3.1 min)
- weekly-backup: Weekly Sunday 2am [L3] (Success: 100%, Duration: 28 min)
- weekly-maintenance: Weekly Sunday 2:15am [L3] (Success: 100%, Duration: 36 min)
- log-cleanup: Daily at 11pm [L2] (Success: 100%, Duration: 2.3 min)
- integrity-check: Daily at 2am [L2] (Success: 100%, Duration: 5.1 min)
- system-report: Weekly Sunday 3am [L2] (Success: 100%, Duration: 4.2 min)
- + 6 more jobs...

🔔 Recent Issues:
- daily-job-3 failed on Wednesday
  - Cause: External API timeout
  - Action: Auto-retried with 2x backoff, succeeded on retry
  - Prevention: Added pre-check API health before execution

📈 Optimization Suggestions:
1. Merge daily-job-2 and daily-job-5 (Save 4 minutes/day)
   - Reason: Both jobs run sequentially at 11:30pm, same data source
   - Suggestion: Chain into single job, split outputs
   - Potential savings: 28 minutes/week
   - Apply? [Yes/No]

2. Add resource monitor job (Proactive)
   - Purpose: Track system resources, alert before issues
   - Frequency: Hourly
   - Benefit: Prevent resource exhaustion, catch issues early
   - Enable? [Yes/No]

3. Retire monthly-archive-job (Low value)
   - Reason: Not accessed in 6 months, redundant with new system
   - Action: Disable and archive job config
   - Apply? [Yes/No]

⏱️ Upcoming Jobs (Next 24 hours):
- Today 5pm: daily-report
- Tonight 11pm: log-cleanup
- Tomorrow 2am: integrity-check
- Tomorrow 5pm: daily-report

All systems operational. Jobs running optimally."
```

**Outputs:**
- Predictively optimized job schedules
- Self-tuned job configurations
- Job performance analytics
- Proactive failure prevention
- Job health reports

---

## Integration with Other Skills

- **task-automation:** Automations can be scheduled as jobs
- **workflow-orchestrator:** Workflows can be triggered by scheduled jobs
- **data-sync:** Sync operations can be scheduled
- **notification-manager:** Alert on job events and failures
- **project-status:** Generate status reports on schedule

---

## Best Practices

### DO:
1. Test jobs manually before scheduling
2. Start with simple schedules, add complexity over time
3. Monitor job performance and adjust as needed
4. Set up failure notifications for all jobs
5. Keep job logs for debugging and analysis
6. Document job dependencies clearly
7. Use meaningful job names and descriptions
8. Regularly review and deprecate unused jobs

### DO NOT:
1. Schedule jobs without testing them first
2. Create circular job dependencies (A→B→C→A)
3. Schedule too many jobs at the same time (overload system)
4. Ignore job failures—fix or retry immediately
5. Schedule critical jobs without fallback strategies
6. Create jobs that take longer than their interval
7. Schedule resource-intensive jobs during peak usage

---

## Common Mistakes

1. **Over-scheduling:** Too many jobs, system constantly busy
   - *Fix:* Consolidate related jobs, optimize execution frequency

2. **Poor timing:** Jobs run during peak usage or conflict with each other
   - *Fix:* Analyze usage patterns, schedule during low-activity periods

3. **No failure handling:** Jobs fail silently or never retry
   - *Fix:* Implement retry logic, failure notifications, fallback strategies

4. **Resource conflicts:** Multiple jobs compete for same resources
   - *Fix:* Use job locking, stagger schedules, monitor resource usage

5. **Zombie jobs:** Old jobs that still run but are no longer useful
   - *Fix:* Regularly review job usage, retire inactive jobs

---

## Example Use Cases

1. **Developer:** Daily build/test jobs, weekly dependency updates, monthly cleanup
2. **Manager:** Daily status reports, weekly team summaries, monthly reviews
3. **Operations:** Daily log rotation, weekly backups, monthly maintenance
4. **Research:** Daily literature checks, weekly data processing, monthly archiving
5. **Sales:** Daily lead checks, weekly pipeline reviews, monthly quota tracking
6. **Writer:** Daily word count tracking, weekly backups, monthly publishing schedule

---

## Data Structure

`personal-os/memory/scheduled-jobs.md`:
```markdown
# Scheduled Jobs Configuration

## Active Jobs
- **daily-report:** Daily at 5pm [L3]
  - Command: project-status → Generate summary → Email
  - Output: Email to me@example.com
  - Success rate: 100%, Duration: 3.1 min
  - Last run: Today 5pm, Success

- **weekly-backup:** Weekly Sunday 2am [L3]
  - Command: data-sync backup-all
  - Output: Log file ~/logs/backup-{date}.log
  - Success rate: 100%, Duration: 28 min
  - Last run: Sunday 2am, Success

- **weekly-maintenance:** Weekly Sunday 2:15am [L3]
  - Chain: backup → integrity-check → log-cleanup → system-report → email
  - Duration: 36 min, Success rate: 100%
  - Last run: Sunday 2:15am, Success

## Job Dependencies
- weekly-maintenance:
  - Depends on: None
  - Dependent on: None
  - Exclusive: Yes (blocks other jobs during execution)

## Performance Metrics (Week of 2026-03-27)
- Total executions: 84
- Success rate: 99.4%
- Avg duration: 3.2 min/job
- Failures: 1 (retried successfully)
```

---

## Success Metrics

- **L1:** Create 3+ working jobs, 95%+ success rate, user confirms timing is appropriate
- **L2:** Implement job dependencies, 97%+ success rate, alert on failures
- **L3:** Self-optimize jobs, 99%+ success rate, proactive failure prevention
