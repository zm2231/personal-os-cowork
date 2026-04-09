---
name: debugging
description: "Systematic debugging methodology, log analysis, and error diagnosis for software development workflows."
---

# Debugging

Systematic debugging methodology for identifying, diagnosing, and resolving software issues efficiently.

## Tier 1: Guided Debugging

### What This Skill Does

Helps you debug software issues systematically using proven debugging methodologies and error analysis techniques.

### When to Use This Skill

- **Error Analysis**: Understanding error messages and stack traces
- **Log Investigation**: Analyzing application logs to identify issues
- **Reproduction**: Creating minimal reproducible examples
- **Hypothesis Testing**: Testing hypotheses about root causes
- **Isolation**: Isolating the problem scope (code, data, environment)

### Guided Debugging Workflow

#### Step 1: Define the Problem

**Questions to Answer:**
- What is the exact symptom or error?
- When does it occur (timing, frequency)?
- Under what conditions (environment, data, user action)?
- What is expected vs. actual behavior?

**Template:**
```
Problem Definition:
- Symptom: [what went wrong]
- Occurs when: [timing/conditions]
- Expected: [what should happen]
- Actual: [what actually happens]
- Impact: [how severe is this?]
```

#### Step 2: Gather Information

**Sources to Check:**
- Error messages and stack traces
- Application logs (debug, info, error levels)
- System logs (OS, network, database)
- User reports (screenshots, steps to reproduce)
- Recent changes (git log, deployments, config updates)

**Information Collection Checklist:**
```
✓ Error message text
✓ Stack trace (if available)
✓ Relevant log entries
✓ Reproduction steps
✓ Environment details (OS, versions, config)
✓ Recent changes
```

#### Step 3: Reproduce the Issue

**Reproduction Strategy:**
1. Start from a clean state (fresh environment)
2. Follow the exact steps to trigger the issue
3. Note any variables that affect reproduction
4. Try variations to understand the scope

**Minimal Reproduction:**
```
Minimal Example:
- Simplify inputs
- Reduce dependencies
- Remove unrelated code
- Isolate the failing component
```

#### Step 4: Formulate Hypotheses

**Hypothesis Generation:**
- What could cause this symptom?
- What changed recently?
- What environmental factors could be involved?
- What code paths are involved?

**Hypothesis Template:**
```
Hypothesis: [I believe X is causing Y]
Because: [evidence/reasoning]
Test: [how to verify]
Expected: [if hypothesis is true, what happens?]
```

#### Step 5: Test Hypotheses

**Testing Approach:**
1. Design a test to prove or disprove hypothesis
2. Execute test and observe results
3. Document findings
4. Formulate new hypotheses if needed

**Test Documentation:**
```
Test: [what you tested]
Result: [pass/fail with evidence]
Conclusion: [what this tells us]
Next: [next step based on result]
```

#### Step 6: Isolate the Root Cause

**Isolation Techniques:**
- Binary search (divide code in half)
- Comment out code blocks
- Add debug logging at key points
- Use breakpoints (if using debugger)
- Test in different environments

**Isolation Questions:**
- Is it a data issue?
- Is it a logic error?
- Is it a configuration issue?
- Is it a dependency issue?
- Is it a race condition?

#### Step 7: Implement Fix

**Fix Strategy:**
1. Make minimal changes
2. Test the fix thoroughly
3. Consider edge cases
4. Document the fix
5. Add regression tests

**Fix Checklist:**
```
✓ Addresses root cause (not just symptoms)
✓ Minimal code changes
✓ Tested with reproduction case
✓ Tested edge cases
✓ Doesn't break existing functionality
✓ Documented with comments
```

#### Step 8: Verify Resolution

**Verification Steps:**
1. Reproduce the original issue - should not occur
2. Run existing tests - all should pass
3. Add regression tests
4. Monitor for recurrence
5. Document for future reference

### Common Debugging Patterns

#### Pattern 1: Divide and Conquer
- Comment out half the code
- If issue disappears, problem is in commented code
- If issue persists, problem is in remaining code
- Repeat until isolated

#### Pattern 2: Rubber Duck Debugging
- Explain the problem line by line to someone (or a rubber duck)
- Often leads to realizing the solution
- Forces careful code analysis

#### Pattern 3: Log Injection
- Add debug logs at key points
- Trace execution flow
- Identify where behavior diverges
- Remove or upgrade logs after fixing

#### Pattern 4: Environment Testing
- Test in development vs. production
- Test with different data sets
- Test with different configurations
- Identify environment-specific issues

### Integration with Other Skills

**Works With:**
- **code-review**: Debugging insights improve code reviews
- **code-refactoring**: Debugging reveals refactoring opportunities
- **quick-research**: Research error messages and patterns
- **knowledge-graph**: Link bugs to related issues and fixes

---

## Tier 2: Confident Debugging

### Advanced Debugging Techniques

#### 1. Systematic Root Cause Analysis

**5 Whys Technique:**
```
Problem: [issue]
Why 1: [first reason]
Why 2: [second reason]
Why 3: [third reason]
Why 4: [fourth reason]
Why 5: [root cause]
```

**Fishbone Diagram:**
- Identify main categories of causes (People, Process, Technology, Environment)
- Brainstorm potential causes within each category
- Test and eliminate causes systematically

**Example Categories:**
- **People**: Code changes, deployment, configuration
- **Process**: Testing, review, deployment
- **Technology**: Dependencies, frameworks, libraries
- **Environment**: OS, network, database, external services

#### 2. Advanced Log Analysis

**Log Query Patterns:**
```
# Find all errors in last hour
grep -i "error" application.log | tail -100

# Find errors by user
grep "user_123" application.log | grep -i "error"

# Correlate errors across services
grep -i "error" app1.log | awk '{print $3}' | xargs -I{} grep {} app2.log

# Time-based analysis
awk '/2026-03-27 14:00/,/2026-03-27 15:00/' application.log
```

**Log Aggregation Strategies:**
- Centralized logging (ELK stack, Splunk, Graylog)
- Structured logging (JSON, key-value pairs)
- Log correlation by request ID
- Real-time log monitoring

#### 3. Performance Debugging

**Profiling Approach:**
```
1. Identify performance bottleneck
2. Measure current performance (baseline)
3. Profile the code (CPU, memory, I/O)
4. Identify hot spots
5. Optimize targeted areas
6. Measure improvement
7. Repeat if needed
```

**Common Performance Issues:**
- N+1 query problems (databases)
- Inefficient algorithms (O(n²) instead of O(n log n))
- Memory leaks (unreleased resources)
- Excessive logging (I/O bottleneck)
- Blocking operations (synchronous I/O)

**Profiling Tools:**
- Python: cProfile, Py-Spy, memory_profiler
- JavaScript: Chrome DevTools, Node.js profiler
- Java: JProfiler, YourKit, VisualVM
- Go: pprof, go tool trace

#### 4. Concurrency Debugging

**Common Concurrency Issues:**
- Race conditions (timing-dependent bugs)
- Deadlocks (circular waits)
- Livelocks (resource contention)
- Memory consistency (visibility across threads)

**Debugging Strategies:**
```
1. Identify shared resources
2. Analyze access patterns
3. Check for proper synchronization
4. Look for non-atomic operations
5. Verify lock ordering (deadlock prevention)
6. Test with different thread counts
7. Use thread sanitizers (when available)
```

**Thread Sanitizer Examples:**
```bash
# GCC/Clang
gcc -fsanitize=thread -g program.c -o program
./program

# Go
go test -race ./...
```

#### 5. Memory Debugging

**Memory Leak Detection:**
```
1. Take memory snapshot (baseline)
2. Perform operations that might leak
3. Take another memory snapshot
4. Compare snapshots - look for growing objects
5. Trace references to find why objects aren't collected
```

**Common Memory Issues:**
- Unclosed resources (file handles, connections)
- Circular references
- Caches without limits
- Event listeners not removed
- Global collections growing unbounded

**Memory Profiling Tools:**
- Python: tracemalloc, objgraph, memray
- JavaScript: Chrome DevTools Memory Profiler
- Java: VisualVM, YourKit, JProfiler
- Node.js: heapdump, v8-profiler

#### 6. Distributed System Debugging

**Challenges:**
- Partial failures (some services fail)
- Network partitions (services can't communicate)
- Timing issues (clock skew, latency)
- Complexity (many moving parts)

**Distributed Tracing:**
```
1. Add trace IDs to requests
2. Propagate trace IDs across services
3. Log trace IDs in all services
4. Use tracing tools (Jaeger, Zipkin, Datadog APM)
5. Analyze request flows and latency
```

**Debugging Checklist:**
```
✓ Trace the request through all services
✓ Check for timeouts and retries
✓ Verify data consistency
✓ Check network connectivity
✓ Review recent deployments
✓ Check configuration changes
✓ Look for resource exhaustion
```

### Debugging Best Practices

#### 1. Log Effectively

**Log Levels:**
- **DEBUG**: Detailed information for debugging
- **INFO**: General information about program execution
- **WARNING**: Unexpected but recoverable issues
- **ERROR**: Errors that don't prevent program execution
- **CRITICAL**: Serious errors that prevent program execution

**Structured Logging:**
```json
{
  "timestamp": "2026-03-27T14:30:00Z",
  "level": "ERROR",
  "service": "payment-service",
  "request_id": "abc-123",
  "user_id": "user-456",
  "message": "Payment failed",
  "error_code": "PAYMENT_DECLINED",
  "amount": 99.99,
  "currency": "USD"
}
```

#### 2. Write Testable Code

**Testing Debugging Hypotheses:**
```python
# Create a minimal test case
def test_bug_reproduction():
    # Arrange
    data = {"value": 42}

    # Act
    result = buggy_function(data)

    # Assert
    assert result == expected_value  # This will fail
```

#### 3. Use Debuggers Effectively

**Common Debugger Features:**
- Breakpoints (pause execution at specific line)
- Watchpoints (pause when variable changes)
- Step through code (line-by-line execution)
- Inspect variables (view current values)
- Evaluate expressions (run code in context)
- Call stack navigation (see how you got here)

#### 4. Document Bugs

**Bug Report Template:**
```
Title: [Concise description]

Description:
[Detailed explanation of the issue]

Steps to Reproduce:
1. [Step 1]
2. [Step 2]
3. [Step 3]

Expected Behavior:
[What should happen]

Actual Behavior:
[What actually happens]

Environment:
- OS: [operating system]
- Version: [software version]
- Configuration: [relevant settings]

Attachments:
- Screenshots
- Logs
- Code snippets
```

### Advanced Integration Patterns

**Multi-Skill Workflows:**
```
1. Use quick-research to understand error messages
2. Use knowledge-graph to find similar past issues
3. Use code-review to find related code patterns
4. Use debugging skill to isolate and fix issue
5. Use code-refactoring to prevent recurrence
6. Use workflow-orchestrator to automate debugging tasks
```

---

## Tier 3: Anticipatory Debugging

### Proactive Debugging Strategies

#### 1. Predictive Error Detection

**Pattern Recognition:**
- Learn from past bugs and their symptoms
- Identify code patterns that lead to bugs
- Predict likely failure points
- Suggest preemptive fixes

**Implementation:**
```
1. Track bug history (types, causes, locations)
2. Identify high-risk code areas
3. Code smells analysis (complexity, coupling, coverage)
4. Suggest refactoring or testing
```

**Risk Indicators:**
- High code complexity (cyclomatic complexity)
- Low test coverage
- Frequent recent changes
- Known error-prone patterns
- Dependencies with known issues

#### 2. Automated Debugging

**Self-Diagnosing Systems:**
```
1. System monitors its own health
2. Detects anomalies (metrics, logs, errors)
3. Automatically collects debugging information
4. Attempts self-recovery (restart, rollback)
5. Escalates to human if needed
```

**Health Checks:**
```python
def health_check():
    checks = {
        "database": check_database(),
        "cache": check_cache(),
        "api": check_external_api(),
        "disk_space": check_disk_space(),
    }
    return all(checks.values()), checks
```

#### 3. Debugging Infrastructure

**Debugging Tools Integration:**
- Error tracking (Sentry, Rollbar, Bugsnag)
- Performance monitoring (Datadog, New Relic, AppDynamics)
- Log aggregation (ELK, Splunk, Graylog)
- Distributed tracing (Jaeger, Zipkin, Datadog APM)

**Automated Alerting:**
```
1. Define alert conditions (error rate, latency, anomalies)
2. Set up monitoring dashboards
3. Configure alert notifications (email, Slack, PagerDuty)
4. Create runbooks for common issues
5. Automate initial diagnosis steps
```

#### 4. Debugging Knowledge Base

**Building a Debugging Knowledge Graph:**
```
1. Document all bugs and their fixes
2. Link bugs to symptoms, causes, and solutions
3. Tag by component, severity, frequency
4. Enable semantic search for bug patterns
5. Learn from debugging history
```

**Knowledge Base Schema:**
```json
{
  "bug_id": "BUG-123",
  "symptoms": ["error message", "stack trace"],
  "root_cause": "null pointer dereference",
  "fix": "add null check",
  "prevention": "add defensive coding",
  "related_bugs": ["BUG-100", "BUG-200"],
  "component": "payment-service",
  "frequency": 5,
  "severity": "high"
}
```

### Expert Debugging Techniques

#### 1. Binary Debugging

**When Needed:**
- Core dumps and segmentation faults
- Memory corruption
- Assembly-level debugging
- Performance optimization

**Tools:**
- GDB (GNU Debugger)
- LLDB (LLVM Debugger)
- WinDbg (Windows)
- Binary analysis tools (IDA Pro, Ghidra)

#### 2. Kernel Debugging

**Challenges:**
- No user-space debugging
- System crashes
- Hardware interactions
- Concurrency issues

**Tools:**
- `kdump` and `crash` (Linux)
- `dtrace` and `perf` (Linux)
- `eBPF` (Linux)
- `systemtap` (Linux)
- Windows Performance Toolkit

#### 3. Network Debugging

**Common Issues:**
- Connection timeouts
- Packet loss
- MTU problems
- DNS resolution
- SSL/TLS errors

**Tools:**
- `tcpdump` and `wireshark` (packet capture)
- `netstat` and `ss` (network connections)
- `traceroute` and `ping` (routing)
- `dig` and `nslookup` (DNS)
- `openssl s_client` (SSL/TLS)

#### 4. Database Debugging

**Common Issues:**
- Slow queries
- Lock contention
- Deadlocks
- Data corruption
- Replication lag

**Tools:**
- Query analysis (`EXPLAIN`, `EXPLAIN ANALYZE`)
- Slow query logs
- Profiling tools (`pg_stat_statements`, Performance Schema)
- Deadlock logs
- Replication monitoring

### Debugging Culture

#### 1. Blameless Post-Mortems

**Post-Mortem Format:**
```
1. Executive Summary
   - What happened
   - Impact
   - Timeline

2. Root Cause Analysis
   - How did it happen
   - Contributing factors
   - Systemic issues

3. Resolution
   - What we did to fix it
   - Timeline of fixes

4. Lessons Learned
   - What went well
   - What didn't
   - What to improve

5. Action Items
   - Prevent recurrence
   - Improve detection
   - Better documentation
```

**Blameless Principles:**
- Focus on process, not people
- Assume good intent
- Understand systemic factors
- Learn from mistakes
- Improve, don't punish

#### 2. Debugging as Learning

**Continuous Improvement:**
- Track debugging patterns
- Learn from past bugs
- Improve code to prevent recurrence
- Share knowledge with team
- Build debugging playbooks

**Metrics:**
- Mean time to detect (MTTD)
- Mean time to resolve (MTTR)
- Bug recurrence rate
- Code quality trends

### Best Practices Summary

**Do:**
- Debug systematically, not randomly
- Use logs and metrics effectively
- Document findings and fixes
- Learn from bugs and prevent recurrence
- Share debugging knowledge
- Use tools and automation
- Write reproducible tests
- Monitor system health

**Don't:**
- Debug without understanding the problem
- Ignore logs and error messages
- Make assumptions without testing
- Fix symptoms without addressing root cause
- Work in isolation without documentation
- Rely on print statements alone
- Skip testing fixes
- Ignore monitoring and alerting

---

## Examples and Use Cases

### Example 1: Debugging a Database Timeout

**Problem:**
```
Database connection timeout after 30 seconds
```

**Tier 1 Approach:**
1. Check error logs
2. Test database connectivity
3. Check query performance
4. Identify slow query
5. Add index to optimize query

**Tier 2 Approach:**
1. Enable query logging
2. Analyze slow query log
3. Use EXPLAIN to understand query plan
4. Add appropriate indexes
5. Optimize query structure
6. Add monitoring for slow queries

**Tier 3 Approach:**
1. Set up database monitoring
2. Configure alerts for slow queries
3. Add query performance dashboard
4. Implement automated query analysis
5. Build knowledge base of query patterns
6. Create playbooks for common database issues

### Example 2: Debugging a Memory Leak

**Problem:**
```
Application runs out of memory after 24 hours
```

**Tier 1 Approach:**
1. Monitor memory usage
2. Take memory snapshots
3. Identify growing objects
4. Find code that creates objects
5. Fix by removing reference or limiting cache

**Tier 2 Approach:**
1. Use memory profiler
2. Analyze object allocation patterns
3. Identify cache growing unbounded
4. Implement cache eviction policy
5. Add memory usage monitoring
6. Add automated memory tests

**Tier 3 Approach:**
1. Set up continuous memory profiling
2. Configure memory usage alerts
3. Implement automatic cache sizing
4. Build memory usage dashboard
5. Create automated leak detection
6. Document memory patterns in knowledge base

### Example 3: Debugging a Race Condition

**Problem:**
```
Intermittent data corruption under load
```

**Tier 1 Approach:**
1. Reproduce with high load
2. Add logging to track access
3. Identify concurrent access to shared resource
4. Add proper locking
5. Test with thread sanitizer

**Tier 2 Approach:**
1. Use thread sanitizer to detect race conditions
2. Analyze all shared resource access
3. Implement proper synchronization
4. Test under various loads
5. Add stress testing to CI/CD
6. Document concurrency patterns

**Tier 3 Approach:**
1. Set up continuous integration with race detection
2. Build concurrency testing framework
3. Implement automated stress testing
4. Create playbooks for concurrency issues
5. Train team on best practices
6. Build knowledge base of concurrency patterns

---

## Common Mistakes

### Mistake 1: Debugging Without Understanding the Problem
**Problem:** Jumping into code without understanding the issue
**Fix:** Start with problem definition and gather information first

### Mistake 2: Fixing Symptoms Instead of Root Cause
**Problem:** Adding error handling instead of fixing underlying bug
**Fix:** Use root cause analysis (5 Whys, fishbone diagram)

### Mistake 3: Not Reproducing the Issue
**Problem:** Making fixes without confirming they work
**Fix:** Always create a reproducible test case

### Mistake 4: Making Too Many Changes at Once
**Problem:** Changing multiple things, don't know which fixed it
**Fix:** Make minimal changes, test each change

### Mistake 5: Not Testing Edge Cases
**Problem:** Fix works for main case but fails edge cases
**Fix:** Test with various inputs and conditions

### Mistake 6: Not Documenting Findings
**Problem:** Forgetting what was learned, repeating same mistakes
**Fix:** Document bugs, fixes, and lessons learned

### Mistake 7: Relying Only on Print Statements
**Problem:** Print statements are inefficient and hard to manage
**Fix:** Use proper logging and debugging tools

### Mistake 8: Not Monitoring After Fixes
**Problem:** Issue recurs later, no way to detect
**Fix:** Add monitoring and alerting for recurrence

---

## Troubleshooting

### Q: I can't reproduce the issue. What should I do?
A: Collect as much information as possible from the original occurrence (logs, screenshots, environment details). Try to understand the conditions that led to the issue. Create tests based on your understanding, even if they don't fail.

### Q: The bug appears randomly and intermittently. How do I debug it?
A: Intermittent bugs are often timing-related (race conditions) or data-dependent. Focus on concurrency, timing, and data variations. Use stress testing to increase frequency of occurrence. Add detailed logging to capture state when the bug occurs.

### Q: The code is complex and hard to understand. Where do I start?
A: Start with understanding the inputs and outputs. Trace the execution path. Simplify by removing unrelated code. Use a debugger to step through code. Ask for help from someone familiar with the code.

### Q: How do I know when I've found the root cause?
A: The root cause is the deepest level cause that, if addressed, prevents the issue from recurring. Use the "5 Whys" technique or fishbone diagram to ensure you've reached the root cause, not just a symptom.

### Q: Should I add defensive coding or fix the actual bug?
A: Always fix the actual bug first. Defensive coding is appropriate as a safety net, but not as a substitute for fixing the root cause.

---

## Related Skills

- **code-review**: Debugging insights improve code reviews
- **code-refactoring**: Debugging reveals refactoring opportunities
- **quick-research**: Research error messages and patterns
- **knowledge-graph**: Link bugs to related issues and fixes
- **workflow-orchestrator**: Automate debugging workflows