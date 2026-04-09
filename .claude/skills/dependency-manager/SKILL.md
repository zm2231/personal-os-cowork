---
name: dependency-manager
description: "Dependency updates, vulnerability scanning, and version management for software projects."
---

# Dependency Manager

Systematic dependency management including updates, vulnerability scanning, and version control.

## Tier 1: Guided Dependency Management

### What This Skill Does

Guides you through managing dependencies systematically to ensure security, compatibility, and maintainability.

### When to Use This Skill

- **Dependency Updates**: Updating packages and libraries
- **Vulnerability Scanning**: Checking for security vulnerabilities
- **Version Conflicts**: Resolving dependency version issues
- **License Compliance**: Ensuring proper license usage
- **Dependency Cleanup**: Removing unused dependencies

### Guided Dependency Management Workflow

#### Step 1: Inventory Dependencies

**List All Dependencies:**
```bash
# Python (requirements.txt)
pip freeze

# Node.js (package.json)
npm list

# Ruby (Gemfile)
bundle show

# Java (pom.xml)
mvn dependency:tree
```

**Categorize Dependencies:**
- **Direct Dependencies**: Explicitly added by you
- **Transitive Dependencies**: Required by your dependencies
- **Development Dependencies**: Only needed for development
- **Production Dependencies**: Required in production

**Inventory Template:**
```
Direct Dependencies:
- numpy 1.21.0 (MIT)
- requests 2.26.0 (Apache 2.0)

Transitive Dependencies:
- urllib3 1.26.0 (MIT)
- chardet 4.0.0 (LGPL)

Development Dependencies:
- pytest 6.2.5 (MIT)
- black 21.7b0 (MIT)
```

#### Step 2: Check for Vulnerabilities

**Vulnerability Scanning:**
```bash
# Python
pip install safety
safety check

# Node.js
npm audit
npm audit fix

# Ruby
bundle audit
bundle audit check --update

# Java
mvn org.owasp:dependency-check-maven:check
```

**Vulnerability Report:**
```
Severity: High
Package: lodash
Vulnerable versions: <4.17.21
Fixed in: 4.17.21
CVE: CVE-2021-23337
Description: Prototype pollution vulnerability
Recommended Action: Update to latest version
```

#### Step 3: Update Dependencies

**Safe Update Strategy:**
1. Check what updates are available
2. Review changelogs for breaking changes
3. Test updates in development
4. Update in staging environment
5. Deploy to production after verification

**Update Commands:**
```bash
# Python - Check for updates
pip list --outdated

# Node.js - Check for updates
npm outdated

# Update to latest (careful with major version changes)
npm update
npm install package@latest

# Update with npm-check-updates (safer)
npm install -g npm-check-updates
ncu -u  # Updates package.json
npm install
```

#### Step 4: Resolve Conflicts

**Identify Conflicts:**
```bash
# Python
pip check

# Node.js
npm ls

# Check specific package
npm ls package-name
```

**Conflict Resolution Strategies:**
- Use version ranges compatible with all requirements
- Use npm/yarn workspaces or Python virtual environments
- Use dependency resolution tools (npm's npm, pip's resolver)
- Manually adjust version constraints

**Example Resolution:**
```json
// Before - Conflict
{
  "dependencies": {
    "package-a": "^1.0.0",
    "package-b": "^2.0.0"  // Requires package-a <1.5.0
  }
}

// After - Resolved
{
  "dependencies": {
    "package-a": "^1.4.0",  // Compatible with both
    "package-b": "^2.0.0"
  }
}
```

#### Step 5: Verify Functionality

**Testing After Updates:**
```bash
# Run all tests
npm test
pytest

# Run linter
npm run lint
flake8

# Build project
npm run build
python setup.py build

# Run integration tests
npm run test:integration
pytest tests/integration/
```

**Verification Checklist:**
```
✓ All tests pass
✓ No warnings or errors
✓ Build succeeds
✓ Application runs without issues
✓ Performance not degraded
✓ Security vulnerabilities resolved
```

### Common Dependency Patterns

#### Pattern 1: Semantic Versioning

**Version Numbers:**
- **Major**: Incompatible API changes (1.0.0 → 2.0.0)
- **Minor**: Backward compatible features (1.0.0 → 1.1.0)
- **Patch**: Backward compatible bug fixes (1.0.0 → 1.0.1)

**Version Ranges:**
```json
{
  "dependencies": {
    // Exact version
    "package": "1.0.0",

    // Greater than
    "package": ">1.0.0",

    // Greater or equal
    "package": ">=1.0.0",

    // Less than
    "package": "<2.0.0",

    // Tilde (~) - Patch updates only (1.0.x)
    "package": "~1.0.0",

    // Caret (^) - Minor updates only (1.x.x)
    "package": "^1.0.0",

    // Latest (use with caution)
    "package": "latest"
  }
}
```

#### Pattern 2: Lock Files

**Lock Files:**
- **package-lock.json** (Node.js): Exact versions of all dependencies
- **requirements.txt** (Python): Exact versions
- **Gemfile.lock** (Ruby): Exact versions
- **yarn.lock** (Yarn): Exact versions

**Purpose:**
- Ensure reproducible builds
- Prevent breaking changes from transitive dependencies
- Team consistency

**Best Practices:**
- Commit lock files to version control
- Update lock files with package updates
- Review lock file changes before committing

### Integration with Other Skills

**Works With:**
- **debugging**: Debugging dependency issues
- **code-review**: Reviewing dependency changes
- **workflow-orchestrator**: Automating dependency updates
- **testing**: Testing after dependency updates

---

## Tier 2: Confident Dependency Management

### Advanced Dependency Techniques

#### 1. Automated Dependency Updates

**Automated Update Tools:**
```bash
# Dependabot (GitHub)
# Create .github/dependabot.yml

# Renovate (Self-hosted)
npm install -g renovate
renovate

# Greenkeeper (Node.js)
npm install -g greenkeeper
greenkeeper-initialize
```

**Dependabot Configuration:**
```yaml
# .github/dependabot.yml
version: 2
updates:
  # Enable version updates for npm
  - package-ecosystem: "npm"
    directory: "/"
    schedule:
      interval: "weekly"
      day: "monday"
    open-pull-requests-limit: 10

  # Enable security updates for npm
  - package-ecosystem: "npm"
    directory: "/"
    schedule:
      interval: "daily"
    commit-message:
      prefix: "deps"
      include: "scope"
```

#### 2. Vulnerability Management

**Continuous Scanning:**
```python
import requests
import json

def check_vulnerabilities(dependencies):
    """Check dependencies for known vulnerabilities"""
    vulnerable = []

    for dep in dependencies:
        # Check with vulnerability database
        response = requests.get(
            f"https://api.osv.dev/v1/query",
            json={"package": {"name": dep['name'], "ecosystem": "npm"}}
        )

        if response.json().get('vulns'):
            vulnerable.append({
                'package': dep['name'],
                'version': dep['version'],
                'vulnerabilities': response.json()['vulns']
            })

    return vulnerable
```

**Vulnerability Workflow:**
```
1. Scan dependencies for vulnerabilities
2. Assess severity (CVSS score)
3. Check if patches available
4. Test patch in development
5. Deploy patch to production
6. Verify vulnerability resolved
7. Document and report
```

#### 3. License Compliance

**License Scanning:**
```bash
# License checker
npm install -g license-checker
license-checker --production

# License compliance tool
pip install pip-licenses
pip-licenses --from=mixed
```

**License Categories:**
- **Permissive**: MIT, Apache 2.0, BSD - Safe to use
- **Copyleft**: GPL, AGPL - May require sharing source
- **Proprietary**: Commercial licenses - Restrictions apply

**License Compliance Check:**
```python
def check_license_compliance(dependencies, allowed_licenses):
    """Check if dependencies comply with allowed licenses"""
    non_compliant = []

    for dep in dependencies:
        if dep['license'] not in allowed_licenses:
            non_compliant.append({
                'package': dep['name'],
                'license': dep['license'],
                'reason': f"Not in allowed licenses: {', '.join(allowed_licenses)}"
            })

    return non_compliant
```

#### 4. Dependency Visualization

**Visualize Dependency Tree:**
```bash
# npm dependency tree
npm ls --graph

# Python dependency tree
pip install pipdeptree
pipdeptree

# Generate visual graph
pip install pipgraphviz
pipgraphviz dependencies.txt
dot -Tpng dependencies.txt -o dependencies.png
```

**Dependency Analysis:**
```python
def analyze_dependency_health(dependencies):
    """Analyze dependency health metrics"""
    metrics = {
        'total': len(dependencies),
        'outdated': count_outdated(dependencies),
        'vulnerable': count_vulnerable(dependencies),
        'transitive': count_transitive(dependencies),
        'duplicate': count_duplicates(dependencies),
        'unused': count_unused(dependencies)
    }

    return metrics
```

#### 5. Supply Chain Security

**Package Verification:**
```bash
# npm package signatures
npm config set registry=https://registry.npmjs.org/
npm audit signatures

# Python package signatures
pip install keyring
pip install <package> --verify-signature

# Supply chain security tools
npm install -g snyk
snyk test
```

**Supply Chain Best Practices:**
- Verify package integrity (checksums, signatures)
- Use trusted package registries
- Lock dependency sources
- Monitor for malicious packages
- Use private registries for internal packages

### Advanced Patterns

#### Pattern 1: Dependency Groups

**Organize Dependencies:**
```json
{
  "dependencies": {
    // Core runtime dependencies
    "react": "^18.0.0",
    "express": "^4.18.0"
  },
  "devDependencies": {
    // Development only
    "jest": "^27.0.0",
    "eslint": "^8.0.0"
  },
  "peerDependencies": {
    // Required but not bundled
    "react": ">=16.0.0"
  },
  "optionalDependencies": {
    // Optional features
    "fsevents": "^2.3.0"
  }
}
```

#### Pattern 2: Multi-Environment Dependencies

**Environment-Specific:**
```bash
# Python - requirements.txt vs requirements-dev.txt
pip install -r requirements.txt          # Production
pip install -r requirements-dev.txt     # Development

# Node.js - npm scripts
npm run install:prod    # Production dependencies
npm run install:dev     # All dependencies

# Use .npmrc for environment config
npm config set production true
```

#### Pattern 3: Dependency Banning

**Block Problematic Packages:**
```javascript
// .npmrc
# Block specific packages
package-lock=false
strict-peer-dependencies=false

# Use npm-force-resolutions for problematic deps
"resolutions": {
  "package-with-issue": "version-with-fix"
}
```

---

## Tier 3: Anticipatory Dependency Management

### Proactive Dependency Strategies

#### 1. Predictive Dependency Analysis

**Predict Updates Needed:**
```python
def predict_dependency_needs(project):
    """Predict when dependencies will need updates"""
    predictions = []

    for dep in project.dependencies:
        # Check update frequency
        update_frequency = analyze_update_frequency(dep)

        # Check for known issues
        known_issues = check_known_issues(dep)

        # Check for deprecations
        deprecation_status = check_deprecation(dep)

        if needs_attention(deprecated_status, known_issues):
            predictions.append({
                'package': dep['name'],
                'priority': calculate_priority(dep),
                'recommended_action': determine_action(dep),
                'estimated_impact': estimate_impact(dep)
            })

    return predictions
```

#### 2. AI-Powered Dependency Insights

**AI Analysis:**
```python
import openai

def get_dependency_recommendations(dependency):
    """Get AI recommendations for dependency management"""
    prompt = f"""Analyze this dependency:

Name: {dependency['name']}
Version: {dependency['version']}
License: {dependency['license']}
Vulnerabilities: {dependency['vulnerabilities']}
Usage: {dependency['usage']}

Provide:
1. Security assessment
2. Alternatives if problematic
3. Update recommendations
4. Migration considerations
5. Long-term viability
"""

    response = openai.ChatCompletion.create(
        model="gpt-4",
        messages=[{"role": "user", "content": prompt}]
    )

    return response.choices[0].message.content
```

#### 3. Dependency Knowledge Base

**Build Knowledge Graph:**
```python
def build_dependency_knowledge_graph(projects):
    """Build knowledge graph of dependencies across projects"""
    graph = {
        'nodes': [],
        'edges': []
    }

    # Add dependencies as nodes
    for project in projects:
        for dep in project.dependencies:
            graph['nodes'].append({
                'id': dep['name'],
                'version': dep['version'],
                'license': dep['license'],
                'vulnerabilities': dep['vulnerabilities']
            })

    # Link dependencies to projects and each other
    for project in projects:
        for dep in project.dependencies:
            graph['edges'].append({
                'from': project['name'],
                'to': dep['name'],
                'type': 'depends_on'
            })

            # Link transitive dependencies
            for trans_dep in dep['transitive']:
                graph['edges'].append({
                    'from': dep['name'],
                    'to': trans_dep['name'],
                    'type': 'requires'
                })

    return graph
```

### Expert Techniques

#### 1: Zero-Downtime Dependency Updates

**Blue-Green Deployment:**
```
1. Deploy version A (current) with old dependencies
2. Deploy version B (new) with updated dependencies
3. Test version B thoroughly
4. Switch traffic to version B
5. Monitor version B for issues
6. Keep version A ready for rollback
7. Decommission version A after verification period
```

#### 2: Dependency Sandboxing

**Sandbox Testing:**
```bash
# Create isolated environment for testing
docker run -it python:3.9 bash
pip install <dependencies>
# Test functionality
exit

# npm sandboxes
npm test
# Runs in isolated mode

# Python venv for testing
python -m venv test_env
source test_env/bin/activate
pip install -r requirements.txt
# Test
deactivate
```

#### 3: Dependency Dependency Hell Prevention

**Strategies:**
- Use monorepo for shared dependencies
- Use semantic versioning consistently
- Test with exact versions (lock files)
- Update dependencies regularly
- Avoid peer conflicts
- Use dependency resolution tools
- Document dependency requirements

### Best Practices Summary

**Do:**
- Update dependencies regularly
- Scan for vulnerabilities continuously
- Use lock files for consistency
- Test updates thoroughly
- Monitor dependency health
- Use automated update tools
- Check license compliance
- Document dependency requirements

**Don't:**
- Ignore security vulnerabilities
- Update all dependencies at once
- Skip testing after updates
- Ignore version conflicts
- Use outdated packages
- Skip lock files
- Ignore license terms
- Update production without testing

---

## Examples and Use Cases

### Example 1: Automated Dependency Update Workflow

```bash
#!/bin/bash
# automated-dependency-update.sh

echo "Checking for dependency updates..."

# Check for outdated packages
npm outdated > outdated.txt

if [ -s outdated.txt ]; then
    echo "Found outdated dependencies"

    # Update packages
    npm update

    # Run tests
    npm test

    if [ $? -eq 0 ]; then
        echo "Tests passed, committing updates"
        git add package.json package-lock.json
        git commit -m "chore: update dependencies"
        git push
    else
        echo "Tests failed, reverting"
        git checkout package.json package-lock.json
    fi
else
    echo "No updates needed"
fi
```

### Example 2: Vulnerability Scanning and Reporting

```python
import requests
import json

def scan_and_report_vulnerabilities(dependencies):
    """Scan dependencies and generate report"""
    print("Scanning for vulnerabilities...")

    vulnerabilities = []

    for dep in dependencies:
        response = requests.get(
            f"https://api.osv.dev/v1/query",
            json={"package": {"name": dep['name'], "ecosystem": dep['ecosystem']}}
        )

        if response.json().get('vulns'):
            vulns = response.json()['vulns']
            vulnerabilities.extend(vulns)

    # Generate report
    report = {
        'timestamp': datetime.now().isoformat(),
        'total_vulnerabilities': len(vulnerabilities),
        'critical': [v for v in vulnerabilities if v['severity'] == 'CRITICAL'],
        'high': [v for v in vulnerabilities if v['severity'] == 'HIGH'],
        'medium': [v for v in vulnerabilities if v['severity'] == 'MEDIUM'],
        'low': [v for v in vulnerabilities if v['severity'] == 'LOW']
    }

    # Save report
    with open('vulnerability-report.json', 'w') as f:
        json.dump(report, f, indent=2)

    print(f"Found {len(vulnerabilities)} vulnerabilities")
    print(f"Critical: {len(report['critical'])}")
    print(f"High: {len(report['high'])}")

    return report
```

### Example 3: Dependency Health Dashboard

```python
def generate_dependency_dashboard(dependencies):
    """Generate dependency health metrics"""
    metrics = {
        'total_dependencies': len(dependencies),
        'outdated': count_outdated(dependencies),
        'vulnerable': count_vulnerable(dependencies),
        'transitive': count_transitive(dependencies),
        'duplicate': count_duplicates(dependencies),
        'unused': count_unused(dependencies),
        'license_issues': count_license_issues(dependencies)
    }

    # Calculate health score
    health_score = calculate_health_score(metrics)

    dashboard = f"""
# Dependency Health Dashboard

**Health Score**: {health_score}/100

## Metrics
- Total Dependencies: {metrics['total_dependencies']}
- Outdated: {metrics['outdated']}
- Vulnerabilities: {metrics['vulnerable']}
- Transitive Dependencies: {metrics['transitive']}
- Duplicate Dependencies: {metrics['duplicate']}
- Unused Dependencies: {metrics['unused']}
- License Issues: {metrics['license_issues']}

## Recommendations
{generate_recommendations(metrics)}
"""

    return dashboard
```

---

## Common Mistakes

### Mistake 1: Updating All Dependencies at Once
**Problem:** Hard to debug issues, multiple breaking changes
**Fix:** Update incrementally, test each update

### Mistake 2: Ignoring Security Vulnerabilities
**Problem:** Security risks, potential exploits
**Fix:** Scan regularly, patch immediately for high-severity issues

### Mistake 3: Not Testing Updates
**Problem:** Breaking changes in production
**Fix:** Test in development and staging before production

### Mistake 4: Using Latest Version Unconditionally
**Problem:** Breaking changes, compatibility issues
**Fix:** Use semantic versioning ranges (^, ~), review changelogs

### Mistake 5: Ignoring License Compliance
**Problem:** Legal issues, license violations
**Fix:** Check licenses, ensure compliance, document usage

---

## Troubleshooting

### Q: I have a dependency version conflict. How do I resolve it?
A: Use npm/yarn's resolution features, adjust version ranges, use peerDependencies, or refactor to avoid conflicting dependencies.

### Q: How often should I update dependencies?
A: Scan for security updates weekly, apply immediately for critical/high severity. Review and apply non-critical updates monthly.

### Q: Should I commit lock files to version control?
A: Yes, lock files ensure reproducible builds and team consistency. Always commit them.

### Q: How do I handle deprecated dependencies?
A: Find replacements, update to alternatives, or maintain if no replacement exists. Document deprecation.

### Q: What if a dependency has no updates or is abandoned?
A: Fork and maintain internally, find alternative, or accept risk and monitor closely. Document abandoned status.

---

## Related Skills

- **debugging**: Debugging dependency issues
- **code-review**: Reviewing dependency changes
- **workflow-orchestrator**: Automating dependency updates
- **testing**: Testing after dependency updates