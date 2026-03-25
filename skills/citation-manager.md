---
name: citation-manager
description: Manage research citations, track sources, and generate bibliographies with academic formatting
version: 1.0.0
metadata:
  hermes:
    tags: [research, writing, academic]
    related_skills: [fact-checker, source-analyzer, knowledge-graph]
    session_unlock: session-6
    tiers:
      - L1: Basic citation tracking with manual entry
      - L2: Automatic citation extraction from documents
      - L3: Integration with reference managers + smart deduplication
---

# Citation Manager

Manages research citations, tracks sources, and generates properly formatted bibliographies. Works across academic papers, blog posts, and any document requiring source attribution.

## When This Skill Activates

- You mention "cite", "reference", "bibliography", or "source tracking"
- You're working on research papers, articles, or documentation
- You ask to format citations in APA, MLA, Chicago, or other styles
- You need to track multiple sources across documents
- You mention "footnotes", "endnotes", or "in-text citations"

## Level 1: Guided (Basic Citation Tracking)

**Available after session 6**

At this level, I help you manually enter and format citations one at a time.

### What I Can Do

1. **Manual Citation Entry**
   - I ask for each field (author, title, publication, year, URL, etc.)
   - Store citations in your citation library
   - Generate formatted output in common styles

2. **Citation Formatting**
   - Convert between APA, MLA, Chicago, IEEE, Harvard formats
   - Generate in-text citations and bibliography entries
   - Handle different source types (journal, book, website, video)

3. **Source Verification**
   - Check if a URL is accessible
   - Validate basic citation completeness
   - Flag missing required fields

### How It Works

**Creating a new citation:**

```
You: "Add a citation for the paper about AI hallucinations"

Citation Manager: "I'll help you add a citation. Please provide:

   1. Author(s):
   2. Title:
   3. Publication/Journal:
   4. Year:
   5. Volume/Issue:
   6. Pages:
   7. DOI or URL:
   8. Access date (if web source):

   Or paste a URL and I'll try to extract what I can."
```

**Generating a bibliography:**

```
You: "Generate APA bibliography for my paper"

Citation Manager: "Here's your APA bibliography:

   [Lists all citations in APA format]

   Total sources: 12
   Would you like me to alphabetize or group by source type?"
```

### Your Citation Library

Citations are stored in `personal-os/memory/citations.md`:

```markdown
# Citation Library

## Academic Papers
- [ID-001] Smith et al. (2024). "AI Hallucination in Large Language Models". Journal of AI Research, 15(3), 45-67. https://doi.org/...

## Websites
- [ID-002] TechCrunch. "OpenAI Announces GPT-5". Retrieved 2024-03-15 from https://techcrunch.com/...

## Books
- [ID-003] Johnson, A. (2023). *The AI Revolution*. MIT Press. ISBN: 978-0-123-45678-9.
```

## Level 2: Confident (Automatic Extraction)

**Available after session 10**

At this level, I automatically extract citations from documents and URLs.

### What I Can Do (Additional)

1. **Automatic Citation Extraction**
   - Paste a URL → I fetch and extract citation data
   - Paste a PDF → I extract metadata from the document
   - Paste a DOI → I resolve and format the citation

2. **Smart Citation Inference**
   - Detect citation format in your text
   - Parse unstructured references
   - Handle missing fields with intelligent defaults

3. **Duplicate Detection**
   - Alert you to duplicate citations
   - Suggest merging entries
   - Maintain single source of truth

4. **Citation Search**
   - Search your citation library by author, title, topic
   - Filter by source type or year range
   - Export subsets for specific projects

### How It Works

**Extracting from URL:**

```
You: "Add citation: https://arxiv.org/abs/2403.12345"

Citation Manager: "Extracted citation details:

   Title: "Large Language Models and Hallucination"
   Authors: Li, Wang, Chen (2024)
   Venue: arXiv preprint arXiv:2403.12345
   Year: 2024
   URL: https://arxiv.org/abs/2403.12345

   Is this correct? I'll add it to your library."
```

**Finding duplicates:**

```
You: "Add citation for Smith 2024 paper"

Citation Manager: "I found a potential duplicate in your library:

   Existing: Smith et al. (2024). "AI Hallucination in Large Language Models"
   New:      Smith, J. & Davis, R. (2024). "Understanding AI Hallucinations"

   These appear to be different papers. Should I add both?"
```

## Level 3: Anticipatory (Smart Integration)

**Available after session 20**

At this level, I integrate with reference managers and anticipate your citation needs.

### What I Can Do (Additional)

1. **Reference Manager Integration**
   - Sync with Zotero, Mendeley, EndNote (via exported BibTeX/JSON)
   - Two-way sync: updates in PersonalOS → exported formats
   - Import existing libraries from other tools

2. **Predictive Citation Suggestions**
   - When writing, suggest relevant citations from your library
   - Detect when you cite a source not in your library → offer to add
   - Recommend related papers based on your research focus

3. **Advanced Bibliography Management**
   - Group citations by project or topic
   - Track citation usage across documents
   - Identify gaps in your research coverage

4. **Citation Quality Checks**
   - Verify DOIs resolve correctly
   - Check for retracted papers or corrections
   - Alert to predatory journals or low-quality sources

### How It Works

**Predictive suggestions:**

```
You: "Recent studies show that LLMs struggle with..."

Citation Manager: "Based on your library and current topic, here are relevant citations:

   • Smith et al. (2024) - "AI Hallucination in Large Language Models"
   • Johnson et al. (2023) - "Factuality in Large Language Models"
   • Wang & Chen (2024) - "Evaluating Hallucination in Generative AI"

   Should I add any of these as in-text citations?"
```

**Quality checks:**

```
Citation Manager: "⚠ Citation quality alert:

   Source: International Journal of Advanced Research (IJAR)
   Issue: This journal is flagged as potentially predatory
   Recommendation: Consider higher-impact venues

   Alternative sources available:
   - Journal of AI Research (peer-reviewed, Q1 journal)
   - Proceedings of NeurIPS 2024 (conference, acceptance rate 25%)"
```

## Integration With Other Skills

### Fact-Checker
- Citation Manager provides sources → Fact-Checker verifies claims
- Fact-Checker adds sources to library → Citation Manager tracks them

### Source-Analyzer
- Source-Analyzer evaluates source quality → Citation Manager flags low-quality
- Citation Manager tracks provenance → Source-Analyzer builds credibility graph

### Knowledge-Graph
- Citation Manager links papers → Knowledge-Graph builds citation networks
- Knowledge-Graph finds related research → Citation Manager suggests additions

### Session-Summary
- Session-Summary lists sources used → Citation Manager adds to library
- Citation Manager generates bibliography → Session-Summary includes references

## Best Practices

### For L1 (Basic Usage)
1. **Be systematic**: Use consistent IDs (CITE-001, CITE-002, etc.)
2. **Store full details**: Even if you only need author/year now, you might need DOI later
3. **Track projects**: Group citations by project to avoid mixing sources
4. **Back up your library**: `personal-os/memory/citations.md` should be version controlled

### For L2 (Automatic Extraction)
1. **Verify extractions**: Automatic extraction isn't perfect - double-check fields
2. **Fix duplicates early**: Duplicate detection alerts prevent messy libraries
3. **Use DOIs when possible**: DOIs provide permanent, resolvable links
4. **Tag your citations**: Add tags for topics to enable smart search

### For L3 (Advanced Usage)
1. **Sync regularly**: If using external reference managers, import/export often
2. **Review quality alerts**: Don't ignore predatory journal warnings
3. **Leverage suggestions**: Predictive citations save time but require review
4. **Maintain a core library**: Keep high-impact, trusted sources separate from exploratory research

## Common Mistakes to Avoid

### ❌ Don't
- Mix citation formats in the same document
- Assume all automatic extractions are correct
- Ignore duplicate detection alerts
- Rely on predatory or low-quality journals
- Forget to track access dates for web sources

### ✅ Do
- Verify citations before including in final documents
- Use persistent identifiers (DOIs, ISBNs) when available
- Keep your citation library organized with IDs and tags
- Run quality checks before submission
- Sync your library if using external tools

## Troubleshooting

**"Citation format looks wrong"**
- Check which style you're requesting (APA, MLA, Chicago, etc.)
- Verify all required fields are filled
- Use L3 quality checks for format validation

**"Can't find a citation I added"**
- Search by ID, author, title, or tags
- Check if it's in the correct section (Academic, Website, Book)
- Use duplicate detection in case it was merged

**"URL won't resolve"**
- Use the Wayback Machine for archived versions
- Search for the paper title in academic databases
- Try the DOI resolver (https://doi.org/) for papers

**"Need to switch citation styles mid-project"**
- Citation Manager converts all citations to new style
- Review converted format for any edge cases
- Update in-text citations to match new style

## Example Workflows

### Academic Paper Workflow

```
You: "I'm writing a paper on LLM hallucinations. Start a new project called 'LLM-Hallucination-Research'"

Citation Manager: "Created project group in your citation library.

   I'll track all citations for this project here. Ready to add sources.

   How would you like to add citations?
   1. Manual entry
   2. Paste URLs/DOIs
   3. Upload PDFs (L2)
   4. Import from BibTeX (L3)"
```

### Blog Post Workflow

```
You: "Add citations for my blog post about remote work"

Citation Manager: "For blog posts, I recommend APA style with in-text citations:

   (Author, Year) format for in-text
   Full bibliography at the bottom

   Paste URLs and I'll extract citations. I'll also check for broken links."
```

### Literature Review Workflow

```
You: "I need 15 sources for my literature review on cognitive load theory"

Citation Manager: "I'll help you build a comprehensive bibliography.

   Let me search your library first:
   - Found 3 existing citations on this topic
   - Suggest adding 12 more based on related research

   Would you like me to:
   1. Pull recent papers from arXiv (L2)
   2. Search Google Scholar for top-cited works (L2)
   3. Import from your Zotero library (L3)"
```

## Measuring Progression

**Level up criteria:**
- **L1→L2**: Use citation tracking in 10+ sessions, extract 20+ citations from URLs
- **L2→L3**: Use automatic extraction in 15+ sessions, detect and merge 10+ duplicates, integrate with external reference manager

**Your current level:** Tracked in `personal-os/adaptation/skill-levels.md`
