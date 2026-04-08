---
name: data-sync
description: "Synchronize data across systems, backup important files, and manage data consistency"
---

# Data Sync

Synchronize data across multiple systems, manage backups, and ensure data consistency. This skill handles file synchronization, cloud sync integration, and data integrity verification.

## Trigger When:
- "sync data", "backup files", "sync with cloud"
- "data backup", "file synchronization", "keep in sync"
- "sync", "backup", "data consistency"
- "update data", "refresh data", "data sync status"

## Progressive Disclosure

### Level 1: Guided (Default)

**Behavior:**
- Manual synchronization with explicit targets
- Simple one-way sync (source to destination)
- No conflict resolution strategy
- Requires user confirmation for sync operations

**Process:**
1. **Identify Sync Targets:**
   - Work with user to identify what data needs syncing
   - Clarify source and destination locations
   - Understand sync frequency requirements
   - Identify any files/folders to exclude

2. **Create Sync Configuration:**
   - Document source and destination paths
   - Set sync frequency (manual, daily, weekly)
   - Specify file inclusion/exclusion patterns
   - Document backup retention policy

3. **Execute Manual Sync:**
   - Show user what will be synced (preview)
   - Ask for confirmation before executing
   - Run sync operation
   - Report on files copied, updated, skipped

4. **Verify Sync Success:**
   - Check that all expected files synced
   - Verify file integrity (size, checksums if needed)
   - Alert user to any errors or conflicts
   - Document sync results

**Example:**
```
User: "Sync my project files to cloud backup"

Data Sync L1:
1. "Let's configure your project backup sync."
2. "Source: ~/Projects/ (What folders?)"
   [User: ~/Projects/client-abc, ~/Projects/personal-os]
3. "Destination: Cloud storage (Which provider?)"
   [User: Dropbox]
4. "Frequency: Daily backup at 6pm. OK?"
   [User: Yes]
5. "Excluding: node_modules/, .git/, *.tmp. OK?"
   [User: Yes]
6. "Preview: Will sync 234 files (45 MB). Confirm?"
   [User confirms]
7. "Sync complete: 234 files copied, 12 skipped (excluded), 0 errors."
```

**Outputs:**
- Sync configuration in `personal-os/memory/data-sync.md`
- Sync execution logs
- Backup inventory

---

### Level 2: Confident

**Unlocks After:** 5+ successful syncs + user approval

**Behavior:**
- Automated sync scheduling and execution
- Two-way sync with conflict detection
- Intelligent file change detection
- Version history and rollback capability

**Enhanced Capabilities:**
1. **Smart Change Detection:**
   - Use file modification times and checksums to detect changes
   - Identify new, modified, and deleted files
   - Calculate sync size before execution
   - Preview changes before committing

2. **Two-Way Synchronization:**
   - Sync in both directions (local ↔ cloud)
   - Detect and handle conflicts (same file changed in both locations)
   - Use timestamps or user choice to resolve conflicts
   - Preserve file metadata and permissions

3. **Conflict Resolution:**
   - Identify conflicts before sync
   - Present conflict options to user (keep local, keep remote, keep both)
   - Document conflict resolution decisions
   - Learn user preferences for conflict handling

4. **Version History:**
   - Keep previous versions of synced files
   - Retention policy configurable (e.g., keep last 5 versions)
   - Enable rollback to previous versions
   - Archive old versions to save space

5. **Automated Scheduling:**
   - Schedule syncs based on user patterns
   - Run syncs automatically at optimal times
   - Trigger syncs on file changes (if supported)
   - Send notifications on sync success/failure

**Example:**
```
User: "Sync status?"

Data Sync L2:
"Data Sync Report:

🔄 Active Sync Jobs:
- client-abc: Last synced 2 hours ago (3 files changed, 0 conflicts)
- personal-os: Last synced 4 hours ago (12 files changed, 0 conflicts)
- research-notes: Sync in progress (45% complete)

⚠️ Conflicts Detected:
- ~/Projects/client-abc/requirements.txt
  - Local: Modified 1 hour ago (added new dependency)
  - Remote: Modified 3 hours ago (added different dependency)
  - Options:
    [1] Keep local version (most recent)
    [2] Keep remote version
    [3] Keep both (rename to requirements-local.txt)
    [4] Manual merge
  - Resolve? [1/2/3/4]

📊 Sync Statistics (Last 7 days):
- Total files synced: 1,234
- Data transferred: 2.3 GB
- Conflicts: 3 (2 auto-resolved, 1 pending)
- Success rate: 99.7%
- Average sync duration: 3.2 minutes

💾 Backup Inventory:
- Cloud storage: Dropbox (45.2 GB used, 15 GB free)
- Local backups: 3 snapshots (retention: last 7 days)
- Version history: 234 files with multiple versions

🔔 Recent Issues:
- None

Would you like to resolve the pending conflict? [Yes/No]"
```

**Outputs:**
- Automated sync schedules
- Conflict detection and resolution
- Version history with rollback
- Sync statistics and reports

---

### Level 3: Anticipatory

**Unlocks After:** 15+ successful syncs + positive feedback

**Behavior:**
- Predictive sync scheduling based on usage patterns
- Self-healing sync operations
- Intelligent data deduplication
- Proactive data integrity monitoring

**Advanced Capabilities:**
1. **Predictive Sync Scheduling:**
   - Learn when user actively works on which projects
   - Schedule syncs when data is most likely to have changed
   - Avoid syncing during low-activity periods
   - Trigger emergency syncs on critical file changes

2. **Self-Healing Operations:**
   - Automatically retry failed syncs with exponential backoff
   - Detect and fix corrupted syncs using checksums
   - Repair broken sync relationships
   - Recover from partial sync failures

3. **Intelligent Deduplication:**
   - Identify duplicate files across sync targets
   - Use hard links or symlinks to reduce storage
   - Detect similar files (images, documents) and offer deduplication
   - Monitor for orphaned duplicate copies

4. **Data Integrity Monitoring:**
   - Periodic integrity checks using checksums
   - Detect silent data corruption
   - Verify cloud storage matches local files
   - Alert on integrity issues before they cause problems

5. **Proactive Data Management:**
   - Suggest archiving old data to save space
   - Identify unused sync targets to remove
   - Recommend sync frequency adjustments based on activity
   - Predict storage needs and alert before limits

**Example:**
```
Data Sync L3 (Autonomous):
"I've optimized your data sync and detected no issues:

📈 Sync Health Report (Week of 2026-03-27):
- Total sync operations: 42
- Success rate: 99.8% (1 failed, auto-retried and succeeded)
- Data transferred: 3.2 GB
- Storage saved via deduplication: 1.2 GB (38% reduction)
- Conflicts: 7 (all auto-resolved using timestamp heuristic)

✨ Optimizations Applied:
1. Predictive scheduling for client-abc sync
   - Before: Daily at 6pm
   - After: Dynamic - syncs when file activity detected (usually 10am-4pm)
   - Result: 2.3x faster data availability, 67% fewer empty syncs

2. Enabled smart deduplication for images
   - Found: 234 duplicate images across projects
   - Saved: 890 MB storage
   - Method: Content-addressable storage (same content = same file)

3. Added integrity monitoring
   - Frequency: Weekly checksum verification
   - Status: 100% integrity (all files verified)
   - Time to verify: 12 minutes (runs Sundays 2am)

🔔 Recommendations:
1. Archive old client project data (Save 2.1 GB)
   - Identify: client-xyz (inactive for 6+ months)
   - Action: Move to cold storage, keep metadata
   - Apply? [Yes/No]

2. Remove unused sync target (Save sync time)
   - Identify: old-prototype (no activity in 30 days)
   - Action: Remove from sync schedule
   - Apply? [Yes/No]

3. Increase research-notes sync frequency
   - Current: Daily
   - Reason: High activity (45 file changes/day, avg)
   - Suggested: Every 4 hours
   - Apply? [Yes/No]

💾 Storage Forecast:
- Dropbox: 45.2 GB used (75%) - 11.8 GB free
- Projected usage in 30 days: 48.5 GB (81%)
- Recommendation: No action needed (sufficient space)
- Alert threshold: 90% (will notify)

🛡️ Data Integrity:
- Last verification: Sunday 2am
- Files checked: 5,678
- Integrity issues: 0
- Checksums: All valid

All systems healthy. Data is secure and consistent."
```

**Outputs:**
- Predictive sync schedules
- Self-healing operations logs
- Deduplication reports
- Data integrity reports
- Storage forecasts and recommendations

---

## Integration with Other Skills

- **task-automation/workflow-orchestrator:** Sync project data before/after automations/workflows
- **computer-use:** Integrate with file management workflows
- **notification-manager:** Alert on sync failures or integrity issues
- **project-status:** Sync status reporting
- **telegram:** Send sync status updates and alerts

---

## Best Practices

### DO:
1. Always preview sync operations before first execution
2. Test sync with small data sets first
3. Keep sync configurations simple and well-documented
4. Monitor sync performance and user satisfaction
5. Implement proper exclusion patterns (node_modules, .git, etc.)
6. Regular integrity checks for critical data
7. Keep reasonable retention policies for version history
8. Alert on sync failures immediately

### DO NOT:
1. Sync without user confirmation for destructive operations
2. Auto-resolve conflicts without user input at L1-L2
3. Sync large binary files without user approval
4. Ignore sync failures—fix or retry immediately
5. Overwrite data without conflict detection
6. Sync sensitive data to untrusted locations
7. Create circular sync relationships (A→B→A)

---

## Common Mistakes

1. **Over-syncing:** Syncing too frequently or syncing unnecessary data
   - *Fix:* Use smart scheduling and exclusion patterns

2. **No conflict handling:** Last-writer-wins can lose data
   - *Fix:* Implement proper conflict detection and resolution

3. **Syncing junk:** Syncing .git/, node_modules/, temporary files
   - *Fix:* Use robust exclusion patterns

4. **No integrity checks:** Silent data corruption goes undetected
   - *Fix:* Regular checksum verification, especially for critical data

5. **Storage bloat:** Version history and deduplication not managed
   - *Fix:* Implement retention policies and intelligent deduplication

---

## Example Use Cases

1. **Developer:** Sync code to GitHub, backup project files to cloud, sync configs across machines
2. **Designer:** Sync design assets to cloud backup, sync projects with team, version history for iterations
3. **Manager:** Sync documents across devices, backup critical files, sync calendar and contacts
4. **Researcher:** Sync research data to cloud, backup papers and citations, sync notes across devices
5. **Writer:** Sync manuscripts to cloud backup, sync work between home/office, version history for drafts
6. **Operations:** Sync configs to servers, backup logs, sync monitoring data to cloud

---

## Data Structure

`personal-os/memory/data-sync.md`:
```markdown
# Data Sync Configuration

## Sync Jobs
- **client-abc:** ~/Projects/client-abc ↔ Dropbox/client-abc [L3]
  - Frequency: Predictive (syncs on file activity, 10am-4pm)
  - Direction: Two-way
  - Excludes: node_modules/, .git/, *.tmp
  - Retention: Keep last 7 versions
  - Last sync: 2 hours ago, Success

- **personal-os:** ~/Projects/personal-os ↔ Dropbox/personal-os [L2]
  - Frequency: Daily at 10pm
  - Direction: Two-way
  - Excludes: .git/, __pycache__/
  - Retention: Keep last 5 versions
  - Last sync: 4 hours ago, Success

## Conflict Resolution Strategy
- Default: Timestamp-based (keep most recent)
- Manual user choice for critical files: requirements.txt, config files
- Learn from user choices

## Integrity Monitoring
- Frequency: Weekly (Sundays 2am)
- Method: SHA-256 checksums
- Status: 100% integrity (verified Sunday)
- Alert on: Any integrity issue detected

## Storage
- Dropbox: 45.2 GB used (75%), 11.8 GB free
- Projected 30-day usage: 48.5 GB (81%)
- Alert threshold: 90%

## Deduplication
- Enabled: Yes
- Files deduplicated: 234
- Space saved: 1.2 GB (38% reduction)
```

---

## Success Metrics

- **L1:** Configure 2+ sync jobs, 100% success rate, user confirms data integrity
- **L2:** Implement conflict detection, 99%+ success rate, auto-retry failures
- **L3:** Predictive scheduling, self-healing, 99.5%+ success rate, 30%+ storage optimization