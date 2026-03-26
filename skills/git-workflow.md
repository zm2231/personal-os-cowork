---
name: git-workflow
description: Git best practices, branch management, and commit discipline for effective version control.
version: 1.0.0
metadata:
  hermes:
    tags: [developer, git, version-control, software-engineering]
    related_skills: [code-review, debugging, workflow-orchestrator]
    category: Developer Pack
---

# Git Workflow

Git best practices, branch management strategies, and commit discipline for effective version control.

## Tier 1: Guided Git Workflow (Session 15+)

### What This Skill Does

Guides you through Git best practices including branch management, commit discipline, and collaboration workflows.

### When to Use This Skill

- **Branch Management**: Creating and managing feature branches
- **Commit Discipline**: Writing clear, meaningful commits
- **Collaboration**: Merging, rebasing, and resolving conflicts
- **Release Management**: Tagging releases and versioning
- **Code Review**: Pull request workflows

### Guided Git Workflow

#### Step 1: Branch Strategy

**Git Flow (Classic):**
```
main (production)
  ↑
develop (development)
  ↑
feature/* (features)
  ↑
hotfix/* (emergency fixes)
release/* (release preparation)
```

**GitHub Flow (Simple):**
```
main (production)
  ↑
feature/* (features)
```

**Trunk-Based Development:**
```
main (everything)
  ↑
Short-lived feature branches (merge quickly)
```

#### Step 2: Feature Branch Workflow

**Create Feature Branch:**
```bash
# Start from develop or main
git checkout develop
git pull

# Create feature branch
git checkout -b feature/user-authentication

# Work on feature
# Make commits...

# Push to remote
git push -u origin feature/user-authentication
```

**Commit Discipline:**
```bash
# Stage changes
git add path/to/file.py

# Commit with clear message
git commit -m "feat: add user authentication endpoint"

# Multiple files
git add src/auth/
git commit -m "feat: implement OAuth2 flow"

# Amend commit (before pushing)
git commit --amend -m "feat: add user authentication with OAuth2"
```

#### Step 3: Pull Request Workflow

**Create Pull Request:**
1. Push feature branch to remote
2. Create PR in GitHub/GitLab/Bitbucket
3. Request review from team
4. Address review feedback
5. Merge after approval

**PR Description Template:**
```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change
- [ ] Documentation update

## Testing
- [ ] Unit tests pass
- [ ] Integration tests pass
- [ ] Manual testing completed

## Checklist
- [ ] Code follows style guidelines
- [ ] Self-review completed
- [ ] Comments added for complex code
- [ ] Documentation updated
- [ ] No new warnings
```

#### Step 4: Merging and Conflict Resolution

**Merge vs Rebase:**
```bash
# Merge (preserves history)
git checkout main
git merge feature/user-authentication

# Rebase (linear history)
git checkout feature/user-authentication
git rebase main

# Interactive rebase (clean up commits)
git rebase -i HEAD~3
```

**Resolve Conflicts:**
```bash
# During merge/rebase, conflicts occur
# Git marks conflicts with <<<<<<<, =======, >>>>>>>

# Open file and resolve conflicts
vim src/auth.py

# Mark as resolved
git add src/auth.py

# Continue merge/rebase
git merge --continue
# or
git rebase --continue
```

### Common Git Patterns

#### Pattern 1: Conventional Commits

**Commit Message Format:**
```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation
- `style`: Code style (formatting)
- `refactor`: Code refactoring
- `test`: Tests
- `chore`: Maintenance
- `perf`: Performance improvement
- `ci`: CI/CD changes

**Examples:**
```
feat(auth): add OAuth2 authentication flow

Implement OAuth2 with support for Google and GitHub providers.

Closes #123

fix(auth): resolve token refresh issue

Token refresh was failing due to incorrect timestamp comparison.

Fixes #456
```

#### Pattern 2: Semantic Versioning with Git Tags

**Tagging:**
```bash
# Tag release
git tag -a v1.0.0 -m "Release v1.0.0"

# Push tags
git push origin v1.0.0
git push origin --tags

# List tags
git tag

# Show tag details
git show v1.0.0
```

---

## Tier 2: Confident Git Workflow (Session 16+)

### Advanced Git Techniques

#### 1: Interactive Rebase

**Clean Up History:**
```bash
# Interactive rebase last 5 commits
git rebase -i HEAD~5

# Commands:
# pick = use commit
# reword = edit commit message
# edit = pause for changes
# squash = merge into previous commit
# fixup = merge into previous (no message)
# drop = remove commit
```

#### 2: Git Hooks

**Pre-Commit Hook:**
```bash
#!/bin/bash
# .git/hooks/pre-commit

# Run linter
npm run lint
if [ $? -ne 0 ]; then
    echo "Linting failed"
    exit 1
fi

# Run tests
npm test
if [ $? -ne 0 ]; then
    echo "Tests failed"
    exit 1
fi
```

**Commit Message Hook:**
```bash
#!/bin/bash
# .git/hooks/commit-msg

# Validate commit message format
if ! grep -qE '^(feat|fix|docs|style|refactor|test|chore|perf|ci)(\(.+\))?: .+' "$1"; then
    echo "Invalid commit message format"
    echo "Use: type(scope): subject"
    exit 1
fi
```

#### 3: Git Aliases

**Useful Aliases:**
```bash
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.lg "log --graph --oneline --all"
git config --global alias.last "log -1 HEAD"
git config --global alias.unstage "reset HEAD --"
git config --global alias Amend "commit --amend --no-edit"
```

#### 4: Git Bisect for Debugging

**Binary Search History:**
```bash
# Start bisect
git bisect start

# Mark current commit as bad
git bisect bad

# Mark known good commit
git bisect good v1.0.0

# Git will checkout middle commit
# Test and mark good or bad
git bisect good
# or
git bisect bad

# Continue until bug is found
# Reset to original state
git bisect reset
```

---

## Tier 3: Anticipatory Git Workflow (Session 17+)

### Proactive Git Strategies

#### 1: Automated Code Quality Gates

**Pre-Merge Checks:**
```yaml
# .github/workflows/quality-gate.yml
name: Quality Gate

on: [pull_request]

jobs:
  quality:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Lint
        run: npm run lint
      - name: Test
        run: npm test
      - name: Security Scan
        run: npm audit
      - name: Build
        run: npm run build
```

#### 2: Git Analytics and Insights

**Track Repository Health:**
```python
def analyze_repository_health(repo_path):
    """Analyze git repository health metrics"""
    metrics = {
        'commit_frequency': calculate_commit_frequency(repo_path),
        'branch_divergence': calculate_branch_divergence(repo_path),
        'merge_conflicts': count_merge_conflicts(repo_path),
        'code_review_time': calculate_review_time(repo_path),
        'deployment_frequency': calculate_deployment_frequency(repo_path)
    }
    return metrics
```

### Best Practices

**Do:**
- Use conventional commits
- Keep branches short-lived
- Write clear PR descriptions
- Test before merging
- Resolve conflicts promptly
- Use meaningful branch names
- Tag releases
- Protect main branch

**Don't:**
- Commit directly to main
- Ignore merge conflicts
- Make large, unrelated commits
- Skip code review
- Use vague commit messages
- Leave branches open indefinitely
- Ignore security alerts

---

## Related Skills

- **code-review**: Reviewing code in PRs
- **debugging**: Using git bisect
- **workflow-orchestrator**: Automating Git workflows
