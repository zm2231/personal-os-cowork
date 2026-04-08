---
name: documentation-generator
description: "Auto-generate technical documentation, README files, and API documentation for software projects."
---

# Documentation Generator

Automated generation of technical documentation, README files, API documentation, and code comments.

## Tier 1: Guided Documentation (Session 15+)

### What This Skill Does

Guides you through generating high-quality documentation automatically from code, tests, and specifications.

### When to Use This Skill

- **API Documentation**: Generate from OpenAPI/Swagger specs
- **README Files**: Auto-generate project READMEs
- **Code Comments**: Add docstrings and comments
- **User Guides**: Generate from specifications
- **Technical Specs**: Document architecture and design

### Guided Documentation Workflow

#### Step 1: Identify Documentation Needs

**Documentation Types:**
- **User Documentation**: Installation, usage, examples
- **API Documentation**: Endpoints, parameters, responses
- **Developer Documentation**: Architecture, design decisions
- **Code Documentation**: Docstrings, comments, inline docs
- **Testing Documentation**: Test coverage, test examples

**Assessment Checklist:**
```
✓ What needs documentation? (API, code, setup)
✓ Who is the audience? (Users, developers, contributors)
✓ What are the key features to document?
✓ What examples should be included?
✓ What installation/setup steps are needed?
```

#### Step 2: Extract Information

**Sources for Documentation:**
- Code structure and organization
- Test files (examples of usage)
- API specifications (OpenAPI, GraphQL schema)
- Configuration files
- Commit messages and PR descriptions
- Comments and docstrings

**Extraction Techniques:**
```python
# Extract from code
import ast
import inspect

def extract_docstrings(module):
    """Extract all docstrings from a module"""
    tree = ast.parse(inspect.getsource(module))
    docstrings = []

    for node in ast.walk(tree):
        if isinstance(node, (ast.FunctionDef, ast.ClassDef)):
            docstrings.append({
                'name': node.name,
                'docstring': ast.get_docstring(node)
            })

    return docstrings

# Extract from tests
def extract_test_examples(test_file):
    """Extract usage examples from tests"""
    examples = []
    # Parse test file for usage patterns
    # Extract assertions as expected behavior
    return examples
```

#### Step 3: Generate Documentation

**README Generator:**
```python
def generate_readme(project_info):
    """Generate README from project metadata"""
    readme = f"""# {project_info['name']}

{project_info['description']}

## Installation

{project_info['installation']}

## Usage

{project_info['usage']}

## API

{project_info['api_docs']}

## Examples

{project_info['examples']}

## License

{project_info['license']}
"""
    return readme
```

**API Documentation Generator:**
```python
def generate_api_docs(openapi_spec):
    """Generate API documentation from OpenAPI spec"""
    docs = "# API Documentation\n\n"

    for path, methods in openapi_spec['paths'].items():
        docs += f"## {path}\n\n"

        for method, details in methods.items():
            docs += f"### {method.upper()}\n\n"
            docs += f"{details.get('summary', '')}\n\n"

            docs += "**Parameters:**\n"
            for param in details.get('parameters', []):
                docs += f"- `{param['name']}`: {param.get('description', '')}\n"

            docs += "\n**Response:**\n"
            for status, response in details.get('responses', {}).items():
                docs += f"- {status}: {response.get('description', '')}\n"

    return docs
```

#### Step 4: Validate and Review

**Documentation Review Checklist:**
```
✓ All documented features are accurate
✓ Examples work correctly
✓ Installation steps are complete
✓ API documentation matches actual API
✓ Code comments are up to date
✓ Spelling and grammar checked
✓ Formatting is consistent
✓ Links and references work
```

#### Step 5: Maintain and Update

**Maintenance Strategy:**
- Auto-regenerate on code changes
- Version documentation with code
- Use automated checks for documentation
- Track documentation coverage
- Schedule regular reviews

### Common Documentation Patterns

#### Pattern 1: Drift Detection

**Check if documentation matches code:**
```python
def check_documentation_drift():
    """Check if documentation matches current code"""
    doc_strings = extract_docstrings(module)
    actual_functions = extract_function_signatures(module)

    missing_docs = set(actual_functions.keys()) - set(doc_strings.keys())

    if missing_docs:
        print(f"Missing documentation for: {missing_docs}")
        return False

    return True
```

#### Pattern 2: Automated Documentation Generation

**CI/CD Integration:**
```yaml
# GitHub Actions
name: Generate Documentation

on: [push]

jobs:
  docs:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Generate docs
        run: |
          python generate_docs.py
      - name: Deploy docs
        run: |
          git push origin gh-pages
```

### Integration with Other Skills

**Works With:**
- **code-review**: Reviewing documentation quality
- **quick-research**: Researching documentation best practices
- **workflow-orchestrator**: Automating documentation generation
- **testing**: Extracting examples from tests

---

## Tier 2: Confident Documentation (Session 16+)

### Advanced Documentation Techniques

#### 1. Interactive Documentation

**Jupyter Notebooks for Examples:**
```python
# Convert Jupyter notebook to Markdown
import nbformat
from nbconvert import MarkdownExporter

def notebook_to_markdown(notebook_path):
    """Convert Jupyter notebook to Markdown"""
    with open(notebook_path) as f:
        notebook = nbformat.read(f, as_version=4)

    exporter = MarkdownExporter()
    body, resources = exporter.from_notebook_node(notebook)

    return body
```

**Live API Documentation:**
```python
# Using Swagger UI with FastAPI
from fastapi import FastAPI
from fastapi.openapi.utils import get_openapi

app = FastAPI()

@app.get("/users/{user_id}")
async def get_user(user_id: int):
    return {"user_id": user_id, "name": "Test User"}

# Auto-generate interactive API docs at /docs
# http://localhost:8000/docs
```

#### 2. Architecture Documentation

**Generate Architecture Diagrams:**
```python
# Generate architecture diagrams from code structure
def generate_architecture_diagram(project_structure):
    """Generate Mermaid diagram from project structure"""
    diagram = "graph TD\n"

    for module, dependencies in project_structure.items():
        for dep in dependencies:
            diagram += f"    {module} --> {dep}\n"

    return diagram

# Convert Mermaid to PNG/Diagram
# Use tools like Mermaid CLI or GitHub's native Mermaid support
```

**Generate Design Documents:**
```python
def generate_design_doc(component_info):
    """Generate design document from component"""
    doc = f"""# Design Document: {component_info['name']}

## Overview

{component_info['overview']}

## Architecture

```mermaid
{component_info['architecture_diagram']}
```

## Components

{component_info['components']}

## Data Flow

{component_info['data_flow']}

## API

{component_info['api']}

## Dependencies

{component_info['dependencies']}

## Testing

{component_info['testing']}

## Future Improvements

{component_info['improvements']}
"""
    return doc
```

#### 3. Version-Specific Documentation

**Multi-Version Documentation:**
```python
def generate_versioned_docs(version):
    """Generate documentation for specific version"""
    docs = {
        'version': version,
        'readme': generate_readme_for_version(version),
        'api': generate_api_docs_for_version(version),
        'changelog': generate_changelog_for_version(version)
    }
    return docs

# Generate for multiple versions
versions = ['v1.0.0', 'v1.1.0', 'v2.0.0']
for version in versions:
    docs = generate_versioned_docs(version)
    save_docs(docs, f"docs/{version}")
```

#### 4. Documentation Quality Metrics

**Quality Metrics:**
- Coverage (what percentage of code is documented)
- Accuracy (documentation matches code)
- Completeness (all features documented)
- Readability (how easy to understand)
- Maintenance (how up to date)

**Calculate Metrics:**
```python
def calculate_documentation_metrics(project):
    """Calculate documentation quality metrics"""
    code_elements = extract_code_elements(project)
    documented_elements = extract_documented_elements(project)

    coverage = len(documented_elements) / len(code_elements) * 100

    accuracy = check_accuracy(project)

    completeness = check_completeness(project)

    return {
        'coverage': coverage,
        'accuracy': accuracy,
        'completeness': completeness
    }
```

#### 5. Documentation Templates

**Standard Templates:**
```python
# Template library
DOCUMENTATION_TEMPLATES = {
    'api_endpoint': """
### {endpoint}

**Method:** {method}

**Description:** {description}

**Parameters:**
{parameters}

**Request Body:**
```json
{request_body}
```

**Response:**
```json
{response_body}
```

**Errors:**
{errors}
""",

    'module': """
# {module_name}

## Overview

{overview}

## Functions

{functions}

## Classes

{classes}

## Examples

{examples}
"""
}

def generate_from_template(template_name, data):
    """Generate documentation from template"""
    template = DOCUMENTATION_TEMPLATES[template_name]
    return template.format(**data)
```

### Advanced Patterns

#### Pattern 1: Documentation-Driven Development

**DDD Workflow:**
```
1. Write documentation first
2. Implement to match documentation
3. Update documentation if implementation differs
4. Use documentation as specification
```

#### Pattern 2: Automated Documentation Testing

**Test Documentation:**
```python
def test_documentation_examples():
    """Test all code examples in documentation"""
    examples = extract_code_examples_from_docs()

    for example in examples:
        try:
            exec(example['code'])
        except Exception as e:
            print(f"Example failed: {example['location']}")
            print(f"Error: {e}")
            assert False, "Documentation example doesn't work"
```

#### Pattern 3: Documentation Search Index

**Build Search Index:**
```python
from whoosh.index import create_in, open_dir
from whoosh.fields import Schema, TEXT, ID

def create_doc_index():
    """Create search index for documentation"""
    schema = Schema(
        title=TEXT(stored=True),
        content=TEXT,
        path=ID(stored=True)
    )

    ix = create_in("doc_index", schema)
    writer = ix.writer()

    for doc_file in get_all_documentation():
        doc = read_documentation(doc_file)
        writer.add_document(
            title=doc['title'],
            content=doc['content'],
            path=doc['path']
        )

    writer.commit()
```

---

## Tier 3: Anticipatory Documentation (Session 17+)

### Proactive Documentation Strategies

#### 1. AI-Powered Documentation

**Auto-Generate from Code:**
```python
import openai

def generate_docstring_from_code(function_code):
    """Generate docstring using AI"""
    response = openai.ChatCompletion.create(
        model="gpt-4",
        messages=[{
            "role": "user",
            "content": f"""Generate a docstring for this function:

```python
{function_code}
```

Include:
- Brief description
- Parameters with types and descriptions
- Return value description
- Raises section if applicable
- Example usage
"""
        }]
    )

    return response.choices[0].message.content
```

**Suggest Improvements:**
```python
def suggest_documentation_improvements(docs):
    """Use AI to suggest improvements"""
    suggestions = []

    for doc in docs:
        analysis = analyze_documentation_quality(doc)
        if analysis['score'] < 0.7:
            suggestions.append({
                'doc': doc['path'],
                'issues': analysis['issues'],
                'suggestions': generate_suggestions(doc)
            })

    return suggestions
```

#### 2. Documentation Knowledge Graph

**Link Documentation Concepts:**
```python
def build_documentation_knowledge_graph(docs):
    """Build knowledge graph linking documentation concepts"""
    graph = {
        'nodes': [],
        'edges': []
    }

    # Extract concepts
    concepts = extract_concepts_from_docs(docs)

    for concept in concepts:
        graph['nodes'].append({
            'id': concept['id'],
            'label': concept['name'],
            'type': concept['type']
        })

    # Link related concepts
    relationships = find_relationships(concepts)
    for rel in relationships:
        graph['edges'].append({
            'source': rel['from'],
            'target': rel['to'],
            'label': rel['type']
        })

    return graph
```

#### 3. Predictive Documentation

**Identify Documentation Needs:**
```python
def predict_documentation_needs(code_changes):
    """Predict what documentation needs updating"""
    needs = []

    for change in code_changes:
        # If new API endpoint added
        if 'api' in change['path'] and 'endpoint' in change['diff']:
            needs.append({
                'type': 'api_documentation',
                'path': change['path'],
                'priority': 'high'
            })

        # If new feature added
        if 'feature' in change['commit_message']:
            needs.append({
                'type': 'feature_documentation',
                'feature': change['commit_message'],
                'priority': 'medium'
            })

    return needs
```

### Expert Documentation Techniques

#### 1. Interactive Tutorials

**Step-by-Step Tutorials:**
```python
def generate_interactive_tutorial(workflow):
    """Generate interactive tutorial from workflow"""
    tutorial = f"""
# Tutorial: {workflow['title']}

{workflow['introduction']}

## Prerequisites

{workflow['prerequisites']}

## Step 1: {workflow['steps'][0]['title']}

{workflow['steps'][0]['content']}

```python
{workflow['steps'][0]['code']}
```

## Step 2: {workflow['steps'][1]['title']}

{workflow['steps'][1]['content']}

```python
{workflow['steps'][1]['code']}
```

## Next Steps

{workflow['next_steps']}
"""
    return tutorial
```

#### 2. Video Documentation

**Generate Screenplay:**
```python
def generate_video_documentation_screenplay(features):
    """Generate screenplay for documentation video"""
    screenplay = []

    for feature in features:
        screenplay.append({
            'scene': f"Demo of {feature}",
            'actions': [
                "Show the feature in action",
                "Explain the purpose",
                "Show code example",
                "Explain best practices"
            ],
            'duration': '2:00'
        })

    return screenplay
```

#### 3. Documentation Analytics

**Track Documentation Usage:**
```python
def track_documentation_analytics():
    """Track which documentation is most viewed"""
    analytics = {
        'page_views': get_page_views(),
        'search_queries': get_search_queries(),
        'bounce_rates': get_bounce_rates(),
        'time_on_page': get_time_on_page(),
        'user_feedback': get_user_feedback()
    }

    # Identify gaps
    gaps = identify_documentation_gaps(analytics)

    return analytics, gaps
```

### Best Practices Summary

**Do:**
- Generate documentation from code automatically
- Test code examples
- Keep documentation up to date
- Use templates for consistency
- Track documentation quality metrics
- Make documentation searchable
- Include examples and tutorials
- Review documentation regularly

**Don't:**
- Write documentation manually only
- Skip testing code examples
- Let documentation drift from code
- Use inconsistent formatting
- Ignore documentation analytics
- Make documentation hard to find
- Skip examples and tutorials
- Review documentation only once

---

## Examples and Use Cases

### Example 1: Generate README from Project

```python
def generate_auto_readme(project_path):
    """Generate README from project structure"""
    project_info = {
        'name': get_project_name(project_path),
        'description': get_description_from_package_json(project_path),
        'installation': generate_installation_instructions(project_path),
        'usage': generate_usage_examples(project_path),
        'api': extract_api_documentation(project_path),
        'examples': extract_test_examples(project_path),
        'license': get_license(project_path)
    }

    readme = f"""# {project_info['name']}

{project_info['description']}

## Installation

{project_info['installation']}

## Usage

{project_info['usage']}

## API

{project_info['api']}

## Examples

{project_info['examples']}

## License

{project_info['license']}
"""

    return readme
```

### Example 2: Generate API Docs from Tests

```python
def extract_api_from_tests(test_file):
    """Extract API documentation from test file"""
    api_docs = {}

    with open(test_file) as f:
        content = f.read()

    # Extract endpoint tests
    endpoint_tests = re.findall(r'def test_(\w+)\((.*?)\):', content)

    for test_name, test_code in endpoint_tests:
        # Extract endpoint and method
        match = re.search(r'client\.(\w+)\([\'"](.+)[\'"]\)', test_code)
        if match:
            method, endpoint = match.groups()
            api_docs[endpoint] = {
                'method': method.upper(),
                'test': test_name
            }

    return api_docs
```

### Example 3: Generate Changelog

```python
def generate_changelog(git_log):
    """Generate changelog from git log"""
    changelog = "# Changelog\n\n"

    commits = parse_git_log(git_log)

    for version in get_versions(commits):
        changelog += f"## {version['tag']}\n\n"
        changelog += f"Released: {version['date']}\n\n"

        for category in ['Features', 'Bug Fixes', 'Breaking Changes']:
            changelog += f"### {category}\n\n"
            for commit in version['commits']:
                if commit['type'] == category.lower():
                    changelog += f"- {commit['message']}\n"
            changelog += "\n"

    return changelog
```

---

## Common Mistakes

### Mistake 1: Documentation Drifting from Code
**Problem:** Documentation doesn't match current code
**Fix:** Auto-generate from code, check for drift regularly

### Mistake 2: Examples That Don't Work
**Problem:** Code examples in documentation don't run
**Fix:** Test all examples, ensure they work

### Mistake 3: Too Technical or Too Vague
**Problem:** Either too detailed or not enough
**Fix:** Write for target audience, provide multiple levels

### Mistake 4: Not Updated with Code Changes
**Problem:** Documentation outdated
**Fix:** Auto-regenerate on code changes, version documentation

### Mistake 5: Hard to Find Information
**Problem:** Documentation poorly organized
**Fix:** Use consistent structure, add search, create index

---

## Troubleshooting

### Q: My generated documentation is too verbose. How do I make it concise?
A: Focus on essential information, use templates, generate multiple versions (brief vs. detailed), and use collapsible sections.

### Q: How do I keep documentation in sync with code?
A: Auto-generate from code, use documentation testing, track drift, and integrate into CI/CD pipeline.

### Q: Should I generate documentation from code or write it manually?
A: Both. Generate structure and API docs from code, write user guides and tutorials manually with input from AI.

### Q: How do I make documentation searchable?
A: Build search index, use proper keywords, tag concepts, and link related topics.

### Q: How much documentation is enough?
A: Cover all public APIs, key features, installation, and examples. Aim for comprehensive but not exhaustive.

---

## Related Skills

- **code-review**: Reviewing documentation quality
- **quick-research**: Researching documentation best practices
- **workflow-orchestrator**: Automating documentation generation
- **testing**: Extracting examples from tests