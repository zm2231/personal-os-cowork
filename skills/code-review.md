---
name: code-review
description: Comprehensive code review with quality checks, best practices, and actionable feedback
version: 1.0.0
metadata:
  hermes:
    tags: [collaboration, code-review, quality]
    related_skills: [message-review, style-transfer, project-status]
---

# Code Review

Perform comprehensive code reviews with quality checks, best practices validation, and actionable improvement suggestions.

## When to Use This Skill

**Trigger when user says:**
- "review this code"
- "code review"
- "check this PR"
- "what do you think of this code"
- "review my implementation"
- "is this good code"

**Best for:**
- Pull request reviews
- Code quality checks
- Best practices validation
- Security reviews
- Performance optimization suggestions
- Refactoring recommendations

---

## Tier 1: Guided Review (Beginner)

**Session Unlock:** Session 14+

### Review Checklist

Follow this structured review process:

#### 1. Code Structure & Organization
- [ ] File organization logical and consistent
- [ ] Functions and classes have clear, single responsibilities
- [ ] Code follows project conventions and style guide
- [ ] Proper use of directories and modules
- [ ] Imports organized and necessary

#### 2. Readability & Maintainability
- [ ] Variable and function names are descriptive
- [ ] Code is self-documenting (clear intent)
- [ ] Comments explain WHY, not WHAT
- [ ] No magic numbers or hardcoded values
- [ ] Appropriate use of whitespace

#### 3. Correctness & Logic
- [ ] Logic handles edge cases
- [ ] No obvious bugs or errors
- [ ] Input validation present
- [ ] Error handling appropriate
- [ ] Tests cover critical paths

#### 4. Performance Considerations
- [ ] No unnecessary computations
- [ ] Appropriate data structures used
- [ ] No memory leaks or resource issues
- [ ] Database queries optimized
- [ ] Caching considered where applicable

#### 5. Security & Safety
- [ ] No SQL injection vulnerabilities
- [ ] No XSS vulnerabilities
- [ ] Authentication/authorization checked
- [ ] Sensitive data handled properly
- [ ] Dependencies up to date

### Output Format

```
## Code Review Summary

**Overall Assessment:** ✅ Good / ⚠️ Needs Improvement / ❌ Critical Issues

### Strengths
• Clear separation of concerns
• Comprehensive error handling
• Well-structured code

### Critical Issues (Must Fix)
1. SQL injection vulnerability in user_query()
2. Missing input validation on email field
3. No authentication check on /api/admin endpoint

### Improvements (Should Fix)
1. Variable names could be more descriptive
2. Add unit tests for edge cases
3. Consider extracting complex logic into helper functions

### Suggestions (Nice to Have)
1. Add docstrings to public functions
2. Consider using type hints
3. Add inline comments for complex algorithms
```

---

## Tier 2: Confident Review (Intermediate)

**Session Unlock:** Session 16+

### Advanced Review Techniques

#### Deep Analysis Patterns

**1. Design Pattern Evaluation**
- Identify design patterns used
- Assess if pattern fits the use case
- Suggest alternatives if pattern is misapplied
- Check for anti-patterns

**2. Architectural Impact**
- How changes affect system architecture
- Coupling and cohesion analysis
- Scalability implications
- Maintainability concerns

**3. Testing Coverage**
- Test suite completeness
- Edge case coverage
- Integration test presence
- Mock usage appropriateness

**4. Documentation Quality**
- README completeness
- API documentation
- Inline comments effectiveness
- Examples provided

**5. Refactoring Opportunities**
- Code duplication detection
- Dead code identification
- Complexity reduction
- Abstraction improvement

### Automated Quality Checks

```python
# Check code quality metrics
def analyze_code_metrics(file_path):
    return {
        "cyclomatic_complexity": calculate_complexity(file_path),
        "maintainability_index": calculate_mi(file_path),
        "code_duplication": find_duplicates(file_path),
        "test_coverage": get_coverage(file_path),
        "technical_debt": estimate_debt(file_path)
    }
```

### Integration with Other Skills

- **style-transfer**: Suggest code style improvements
- **message-review**: Review PR description and comments
- **project-status**: Update project metrics after review

---

## Tier 3: Anticipatory Review (Advanced)

**Session Unlock:** Session 20+

### Proactive Review Patterns

**1. Automated Review Setup**
```yaml
# .github/CODE_REVIEW_BOT.md
review_rules:
  - check_security_vulnerabilities
  - validate_tests_pass
  - enforce_style_guide
  - check_code_coverage_threshold
  - detect_code_duplication
  - suggest_refactoring

auto_comment_on:
  - critical_security_issues
  - test_failures
  - style_violations
  - missing_documentation
```

**2. Learning from Previous Reviews**
- Track common patterns in your reviews
- Build personal review checklist
- Learn team-specific conventions
- Adapt to project context

**3. Review Templates**
- Standard review responses for common issues
- Quick phrases for different severity levels
- Template for different review types (security, performance, style)

**4. Batch Review Mode**
```
"I'll review all files in this PR systematically:

File 1: auth.py
- ✅ Security: Proper JWT validation
- ⚠️ Style: Missing type hints
- 💡 Suggestion: Extract token parsing logic

File 2: routes.py
- ✅ Structure: Clean REST endpoints
- ❌ Critical: No rate limiting
- 💡 Suggestion: Add request throttling

[Continue for all files...]

Overall: 2 critical, 3 improvements, 5 suggestions"
```

### Continuous Improvement

**Track Your Review Quality:**
- Response time metrics
- Reviewer acceptance rate
- Bug catch rate
- Reviewer feedback scores

**Learn from Code You Reviewed:**
- Note successful refactoring techniques
- Track anti-patterns to avoid
- Build library of good code examples
- Study team coding conventions

---

## Examples

### Example 1: Security Review

**User:** "Review this authentication code"

```python
def authenticate(username, password):
    query = f"SELECT * FROM users WHERE username = '{username}' AND password = '{password}'"
    return db.execute(query)
```

**Tier 1 Response:**
```
## Code Review Summary

**Overall Assessment:** ❌ Critical Issues

### Critical Issues (Must Fix)
1. SQL injection vulnerability: User input directly interpolated into query
2. Plain text passwords: Should use password hashing (bcrypt, argon2)
3. No error handling: Database errors not caught

### Improvements (Should Fix)
1. Use parameterized queries or ORM
2. Add password hashing verification
3. Add try-catch for database errors
4. Add rate limiting for auth attempts

### Suggested Fix:
```python
import bcrypt

def authenticate(username, password):
    try:
        user = db.execute("SELECT * FROM users WHERE username = ?", [username])
        if user and bcrypt.checkpw(password.encode(), user['password_hash']):
            return user
        return None
    except Exception as e:
        log.error(f"Auth failed: {e}")
        return None
```
```

### Example 2: Performance Review

**User:** "Review this data processing function"

```python
def process_large_dataset(data):
    results = []
    for item in data:
        for category in categories:
            if item['type'] == category:
                results.append(transform(item))
    return results
```

**Tier 2 Response:**
```
## Code Review Summary

**Overall Assessment:** ⚠️ Needs Improvement

### Improvements (Should Fix)
1. O(n*m) complexity: Nested loop could be O(n) with dictionary lookup
2. Repeated transform() calls: Cache results if called with same data
3. No type hints: Hard to understand data structures

### Optimized Version:
```python
from typing import List, Dict
from functools import lru_cache

def process_large_dataset(data: List[Dict]) -> List[Dict]:
    # Build lookup dict for O(1) category checks
    category_map = {cat: True for cat in categories}
    
    return [
        transform(item)
        for item in data
        if item['type'] in category_map
    ]
```

### Performance Impact:
- Original: O(n*m) where n=data length, m=categories length
- Optimized: O(n) where n=data length
- For 100k items and 10 categories: 100k vs 1M operations

### Additional Considerations:
- Use `pandas` for very large datasets
- Consider parallel processing with `multiprocessing`
- Add memory profiling for datasets >1GB
```

### Example 3: Architecture Review

**User:** "Review this service design"

```python
class UserService:
    def __init__(self):
        self.db = Database()
        self.email_service = EmailService()
        self.notification_service = NotificationService()
    
    def create_user(self, data):
        user = self.db.insert('users', data)
        self.email_service.send_welcome(user.email)
        self.notification_service.notify_admin(user.id)
        return user
```

**Tier 3 Response:**
```
## Code Review Summary

**Overall Assessment:** ⚠️ Good Design, Needs Refactoring

### Architectural Concerns

**1. Tight Coupling:**
``UserService`` directly depends on three services
- Changes to any service require modifying UserService
- Hard to test in isolation
- Difficult to swap implementations

**Suggestion:** Use dependency injection
```python
class UserService:
    def __init__(self, db: Database, email: EmailService, notify: NotificationService):
        self.db = db
        self.email = email
        self.notify = notify
```

**2. Transaction Management:**
No transaction wrapping multi-step operations
- If email fails, user still created in DB
- No rollback mechanism
- Data inconsistency risk

**Suggestion:** Use context manager for transactions
```python
def create_user(self, data):
    with self.db.transaction():
        user = self.db.insert('users', data)
        self.email_service.send_welcome(user.email)
        self.notification_service.notify_admin(user.id)
        return user
```

**3. Separation of Concerns:**
Business logic mixed with infrastructure concerns
- Email sending in domain service
- Notification logic coupled with user creation

**Suggestion:** Consider event-driven architecture
```python
class UserService:
    def create_user(self, data):
        user = self.db.insert('users', data)
        event_bus.emit(UserCreated(user.id, user.email))
        return user

# Event handlers run independently
@event_handler(UserCreated)
def send_welcome_email(event: UserCreated):
    email_service.send_welcome(event.email)

@event_handler(UserCreated)
def notify_admin(event: UserCreated):
    notification_service.notify_admin(event.user_id)
```

### Design Patterns to Consider:
- Repository Pattern for data access
- Factory Pattern for service creation
- Observer Pattern for events
- Strategy Pattern for different auth methods

### Scalability Implications:
- Current design scales to ~1000 concurrent users
- Async event handling could improve throughput
- Consider message queue for notifications
- Add caching for frequently accessed users
```

---

## Best Practices

### For Reviewer

1. **Be Constructive**
   - Focus on code, not person
   - Provide specific, actionable feedback
   - Suggest improvements, don't just point out problems

2. **Prioritize Issues**
   - Separate critical, improvement, and suggestions
   - Explain why something matters
   - Offer code examples for complex fixes

3. **Know Your Context**
   - Project-specific conventions
   - Team coding style
   - Business requirements
   - Technical constraints

4. **Be Efficient**
   - Use automated tools where possible
   - Focus on high-impact changes
   - Learn from previous reviews
   - Build review templates

### For Submitting Code

1. **Self-Review First**
   - Run your own checklist
   - Write a clear PR description
   - Add tests for your changes
   - Update documentation

2. **Make Review Easy**
   - Small, focused PRs
   - Clear commit messages
   - Link to relevant issues
   - Add screenshots for UI changes

3. **Respond Promptly**
   - Address feedback quickly
   - Ask clarifying questions
   - Discuss disagreements
   - Learn from reviews

---

## Common Mistakes

### Reviewer Mistakes

❌ **Too Critical**: Every comment is negative
✅ **Balanced**: Acknowledge good work, suggest improvements

❌ **Vague Feedback**: "This is bad code"
✅ **Specific Feedback**: "This function has high complexity, consider extracting sub-functions"

❌ **Not Reading Context**: Missing related files or requirements
✅ **Full Picture**: Understand problem space before reviewing

❌ **Nitpicking**: Focusing on minor style issues
✅ **Prioritized**: Focus on correctness, then style

### Code Submitter Mistakes

❌ **Large PRs**: 500+ lines in one change
✅ **Small PRs**: Break into logical chunks

❌ **No Tests**: Code without verification
✅ **Comprehensive Tests**: Unit + integration tests

❌ **No Description**: "Fixed bug" only
✅ **Full Context**: Explain what, why, and how

❌ **Ignoring Feedback**: Dismiss all reviewer comments
✅ **Engage**: Discuss, explain, or incorporate feedback

---

## Integration with Other Skills

### Related Skills

- **message-review**: Review PR comments and descriptions
- **style-transfer**: Improve code documentation readability
- **project-status**: Update code quality metrics

### Workflow Integration

1. **Code Review → Message Review**
   ```
   Review code → Generate PR comment → Check tone/clarity
   ```

2. **Code Review → Project Status**
   ```
   Review code → Log quality metrics → Update project dashboard
   ```

3. **Style Transfer → Code Review**
   ```
   Check style conventions → Apply to code → Verify improvements
   ```

---

## Progressive Disclosure

**Level 1 (Guided):**
- Follow checklist approach
- Manual review process
- Focus on correctness and security

**Level 2 (Confident):**
- Automated quality checks
- Deep analysis patterns
- Architectural impact assessment

**Level 3 (Anticipatory):**
- Proactive review setup
- Learning and adaptation
- Continuous improvement tracking

---

## Session Tracking

After using this skill, update `personal-os/adaptation/skill-levels.md`:
```
code-review:
  level: 1
  sessions_used: 1
  last_used: [current_date]
  progression_notes: "Completed first code review, focused on security checks"
```
