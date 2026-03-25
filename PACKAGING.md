# Packaging Guide - PersonalOS for Cowork

How to package PersonalOS as a shareable skill pack for distribution via GitHub, Cowork Skills Hub, or direct download.

**Version:** 1.0.0
**Last Updated:** 2026-03-26

---

## Table of Contents

1. [Packaging Overview](#packaging-overview)
2. [Package Structure](#package-structure)
3. [Creating Release Packages](#creating-release-packages)
4. [Distribution Channels](#distribution-channels)
5. [Versioning](#versioning)
6. [Release Checklist](#release-checklist)

---

## Packaging Overview

### What Gets Packaged

PersonalOS packages include:

**System Files (Read-Only):**
- `CLAUDE.md` - Main orchestration and skill index
- `skill-packs/` - All skill definitions (organized by pack)
- `templates/` - Report and data templates
- Documentation files (README.md, INSTALL.md, CONTRIBUTING.md)

**User Data Directory (Empty Skeleton):**
- `personal-os/` - User's personal data (created during onboarding)

### What Does NOT Get Packaged

**Never include:**
- User's actual `personal-os/` data (identity, memory, adaptation files)
- Session logs
- User-generated shortcuts or automations
- Temporary files or caches

**Why:**
- `personal-os/` is user-specific data that shouldn't be shared
- Packaging system files ensures clean installs
- User data is preserved across upgrades

### Package Formats

**Supported Formats:**
1. **Git Repository** (recommended for active development)
2. **TAR.GZ Archive** (for direct downloads)
3. **ZIP Archive** (for Windows users)

---

## Package Structure

### Final Directory Layout

```
personal-os-cowork/
├── .git/                    # Git metadata (excluded from archives)
├── .gitignore              # Files to exclude from version control
├── LICENSE                 # MIT License
├── README.md               # Project overview and quick start
├── INSTALL.md              # Detailed installation guide
├── CONTRIBUTING.md         # Contribution guidelines
├── PACKAGING.md           # This file
├── CLAUDE.md              # Main orchestration
├── VERSION                # Version number (optional, for release scripts)
│
├── personal-os/            # User data skeleton (empty directories + templates)
│   ├── onboarding/        # Interview scripts
│   ├── core/              # Core system skills
│   │   ├── identity/      # Identity management skills
│   │   ├── workflow/      # Workflow skills
│   │   ├── learning/      # Learning skills
│   │   ├── integration/   # Cowork integrations
│   │   └── memory/       # Memory management skills
│   ├── context/           # Layer 1: User identity (empty skeleton)
│   ├── memory/            # Layer 2: User memory (empty skeleton)
│   ├── adaptation/        # Layer 3: User adaptation (empty skeleton)
│   ├── templates/         # Data templates (included in package)
│   └── logs/              # Session logs (empty skeleton)
│
└── skill-packs/           # Skills (read-only)
    ├── meta-system/       # Foundation skills
    ├── personal-management/ # Daily work skills
    ├── communication/     # Writing skills
    ├── research/         # Knowledge work skills
    ├── collaboration/     # Team skills
    ├── productivity/      # Getting things done
    └── learning/         # Growth skills
```

### File Sizes (Estimated)

| File/Directory | Size | Notes |
|----------------|------|-------|
| CLAUDE.md | ~25 KB | Orchestration + skill index |
| skill-packs/ | ~100 KB | All skill definitions |
| personal-os/core/ | ~50 KB | Core system skills |
| personal-os/templates/ | ~20 KB | Workflow and report templates |
| Documentation | ~50 KB | README, INSTALL, etc. |
| **Total Package** | **~245 KB** | Without user data |

---

## Creating Release Packages

### Method 1: Git Tag and Archive

**Best for:** Official releases on GitHub

**Step 1: Update Version**

1. Edit `CLAUDE.md` and update version in frontmatter (if present)
2. Update `README.md` version number
3. Update `INSTALL.md` version number

**Step 2: Commit Changes**
```bash
git add CLAUDE.md README.md INSTALL.md
git commit -m "Bump version to v1.0.0"
```

**Step 3: Create Tag**
```bash
git tag -a v1.0.0 -m "Release v1.0.0 - Complete Phases 1-4"
git push origin v1.0.0
```

**Step 4: Create Release on GitHub**
```bash
# Use GitHub CLI (gh)
gh release create v1.0.0 \
  --title "v1.0.0 - Complete PersonalOS" \
  --notes "See CHANGELOG.md for details"

# Or manually:
# Go to https://github.com/cadence-rd/personal-os-cowork/releases
# Click "Draft a new release"
# Choose tag: v1.0.0
# Add release notes
```

**Step 5: Generate Archives**

GitHub automatically generates source archives:
- `personal-os-cowork-v1.0.0.tar.gz`
- `personal-os-cowork-v1.0.0.zip`

### Method 2: Manual Archive Creation

**Best for:** Quick testing or custom distributions

**Create TAR.GZ (Linux/macOS):**
```bash
# Clean up any temporary files
git clean -fd

# Create archive
tar -czf personal-os-cowork-v1.0.0.tar.gz \
  --exclude='.git' \
  --exclude='.DS_Store' \
  --exclude='personal-os/context/*' \
  --exclude='personal-os/memory/*' \
  --exclude='personal-os/adaptation/*' \
  --exclude='personal-os/logs/*' \
  --exclude='*.log' \
  .

# Verify archive
tar -tzf personal-os-cowork-v1.0.0.tar.gz | head -20
```

**Create ZIP (Windows/macOS):**
```bash
# macOS/Linux
zip -r personal-os-cowork-v1.0.0.zip \
  -x '*.git*' \
  -x '*context/*' \
  -x '*memory/*' \
  -x '*adaptation/*' \
  -x '*logs/*' \
  -x '*.log' \
  .

# Windows (PowerShell)
Compress-Archive -Path * `
  -DestinationPath personal-os-cowork-v1.0.0.zip `
  -Force
```

### Method 3: Build Script

**Automate the process with a build script:**

`scripts/build.sh`:
```bash
#!/bin/bash

VERSION=$1
if [ -z "$VERSION" ]; then
  echo "Usage: ./build.sh <version>"
  exit 1
fi

echo "Building PersonalOS v${VERSION}..."

# Clean
rm -rf dist/
mkdir -p dist/

# Create tar.gz
echo "Creating TAR.GZ..."
tar -czf dist/personal-os-cowork-${VERSION}.tar.gz \
  --exclude='.git' \
  --exclude='dist' \
  --exclude='.DS_Store' \
  --exclude='personal-os/context/*' \
  --exclude='personal-os/memory/*' \
  --exclude='personal-os/adaptation/*' \
  --exclude='personal-os/logs/*' \
  .

# Create zip
echo "Creating ZIP..."
zip -r dist/personal-os-cowork-${VERSION}.zip \
  -x '*.git*' \
  -x 'dist/*' \
  -x '*context/*' \
  -x '*memory/*' \
  -x '*adaptation/*' \
  -x '*logs/*' \
  .

# Generate checksums
echo "Generating checksums..."
cd dist/
sha256sum personal-os-cowork-${VERSION}.tar.gz > personal-os-cowork-${VERSION}.tar.gz.sha256
sha256sum personal-os-cowork-${VERSION}.zip > personal-os-cowork-${VERSION}.zip.sha256
cd ..

echo "Build complete! Check dist/ directory"
ls -lh dist/
```

**Usage:**
```bash
chmod +x scripts/build.sh
./build.sh 1.0.0
```

---

## Distribution Channels

### Channel 1: GitHub Releases (Primary)

**URL:** https://github.com/cadence-rd/personal-os-cowork/releases

**Process:**
1. Create git tag
2. Draft release on GitHub
3. Upload release notes
4. Attach generated archives (automatic)

**Advantages:**
- Automatic archive generation
- Version history
- Release notes with markdown
- Direct download links
- Issue tracking per release

**User Installation:**
```bash
# Via wget
wget https://github.com/cadence-rd/personal-os-cowork/releases/download/v1.0.0/personal-os-cowork-v1.0.0.tar.gz

# Via curl
curl -LO https://github.com/cadence-rd/personal-os-cowork/releases/download/v1.0.0/personal-os-cowork-v1.0.0.tar.gz
```

### Channel 2: GitHub Repository (Development)

**URL:** https://github.com/cadence-rd/personal-os-cowork

**Process:**
1. Push to main branch
2. Users clone repository
3. Users can track changes via git

**Advantages:**
- Easy updates (`git pull`)
- Branch for testing (main, develop, feature branches)
- Contributors can fork and submit PRs
- Issue tracking and discussions

**User Installation:**
```bash
git clone https://github.com/cadence-rd/personal-os-cowork.git
```

### Channel 3: Cowork Skills Hub (Future)

**Note:** Skills Hub availability depends on Cowork platform capabilities.

**Process:**
1. Submit PersonalOS package to Skills Hub
2. Users install via hub interface
3. Automatic updates if hub supports versioning

**Advantages:**
- One-click installation
- Centralized discovery
- Community reviews and ratings
- Dependency management

**Submission Requirements:**
- Valid frontmatter in all skills
- Complete documentation
- Tested with current Cowork version
- Version number and changelog

### Channel 4: Direct Download (Mirror)

**URL:** https://personal-os.cowork/downloads

**Process:**
1. Upload archives to static hosting
2. Generate direct download links
3. Mirror across multiple CDNs

**Advantages:**
- Fast downloads
- No GitHub account required
- Works offline (once downloaded)
- Can be distributed via USB/other media

---

## Versioning

### Semantic Versioning

PersonalOS follows Semantic Versioning 2.0.0: `MAJOR.MINOR.PATCH`

**MAJOR (X.0.0):** Breaking changes
- Incompatible API changes
- Removed skills or features
- Requires migration

**MINOR (1.X.0):** New features (backward compatible)
- New skills added
- Existing skills enhanced
- New integrations

**PATCH (1.0.X):** Bug fixes (backward compatible)
- Bug fixes in existing skills
- Documentation improvements
- Performance optimizations

### Version Numbers in Files

Update these files for each release:

1. **README.md:**
   ```markdown
   **Version:** 1.0.0
   ```

2. **INSTALL.md:**
   ```markdown
   **Version:** 1.0.0
   ```

3. **CLAUDE.md:**
   ```markdown
   <!-- Optional frontmatter if you track version there -->
   ---
   version: 1.0.0
   ---
   ```

4. **VERSION file (optional):**
   ```
   1.0.0
   ```

### Changelog Format

`CHANGELOG.md`:
```markdown
# Changelog

All notable changes to PersonalOS are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-03-26

### Added
- Phase 2: Workflow Learning (shortcuts, daily-routine, pattern-detect, telegram)
- Phase 3: Computer Use (computer-use integration + workflow templates)
- Phase 4: Advanced Learning (self-correction, recommendations, optimization)
- Progressive unlock system with 10 levels
- 15 core skills across 4 phases
- Comprehensive installation guide (INSTALL.md)
- Contribution guidelines (CONTRIBUTING.md)
- Packaging guide (PACKAGING.md)

### Changed
- Updated CLAUDE.md with complete skill index
- Enhanced README with Phase 1-4 status
- Improved onboarding system

### Fixed
- Fixed skill loading when CLAUDE.md not in context
- Fixed progressive unlock thresholds
- Fixed session counting logic

### Security
- No security issues in this release

## [0.1.0] - 2026-03-24

### Added
- Phase 1: Core Identity (onboarding, meta-system skills)
- File structure and documentation
- Basic CLAUDE.md orchestration
- 5-question onboarding system

### Changed
- Initial implementation

## [Unreleased]

### Added
- [Phase 5: Community Share features]
```

### Pre-Release Versions

For alpha/beta releases:
- `1.0.0-alpha` - Early development
- `1.0.0-beta.1` - Beta testing
- `1.0.0-rc.1` - Release candidate

---

## Release Checklist

### Pre-Release

- [ ] All tests pass
- [ ] Documentation is updated
- [ ] Version numbers updated (README.md, INSTALL.md, CLAUDE.md)
- [ ] CHANGELOG.md updated with release notes
- [ ] All skills have valid frontmatter
- [ ] Tested on fresh Cowork install
- [ ] Tested on Cowork with existing personal-os/ data
- [ ] Tested on multiple Cowork versions if possible

### Release

- [ ] Git tag created (`git tag -a vX.X.X`)
- [ ] Tag pushed to GitHub (`git push origin vX.X.X`)
- [ ] GitHub release drafted
- [ ] Release notes added
- [ ] Attachments uploaded (if manual)
- [ ] Release published

### Post-Release

- [ ] Announcement posted to Cowork community
- [ ] Social media announcement (optional)
- [ ] Issues tagged for next release
- [ ] Roadmap updated
- [ ] Download metrics monitored (first 24-48 hours)
- [ ] User feedback collected and categorized

### Archive Checklist

When creating manual archives:

- [ ] `.git/` directory excluded
- [ ] User data directories excluded (context/, memory/, adaptation/, logs/)
- [ ] Temporary files excluded (*.log, *.tmp)
- [ ] OS-specific files excluded (.DS_Store, Thumbs.db)
- [ ] Checksums generated (SHA256)
- [ ] Archive tested by extracting and loading in Cowork

---

## Advanced Packaging

### Skill Pack Extraction

Extract individual skill packs for standalone distribution:

```bash
# Extract meta-system pack
tar -czf meta-system-pack-v1.0.0.tar.gz \
  skill-packs/meta-system/ \
  CLAUDE.md \
  README.md

# Extract only core skills
tar -czf personal-os-core-v1.0.0.tar.gz \
  personal-os/core/ \
  CLAUDE.md \
  templates/ \
  README.md
```

### Custom Builds

Create custom builds with subsets of features:

`scripts/custom-build.sh`:
```bash
#!/bin/bash

# Configuration
PACKS=("meta-system" "personal-management" "communication")
VERSION="custom-$(date +%Y%m%d)"
OUTPUT="dist/personal-os-${VERSION}"

echo "Building custom PersonalOS with packs: ${PACKS[@]}"

# Clean
rm -rf dist/
mkdir -p dist/

# Create custom directory structure
mkdir -p ${OUTPUT}/skill-packs/
mkdir -p ${OUTPUT}/personal-os/core/
mkdir -p ${OUTPUT}/templates/

# Copy selected packs
for pack in "${PACKS[@]}"; do
  cp -r skill-packs/${pack} ${OUTPUT}/skill-packs/
done

# Copy core files
cp -r personal-os/core/* ${OUTPUT}/personal-os/core/
cp -r templates/* ${OUTPUT}/templates/

# Copy essential docs
cp CLAUDE.md ${OUTPUT}/
cp README.md ${OUTPUT}/

# Create archive
tar -czf ${OUTPUT}.tar.gz ${OUTPUT}/

echo "Custom build complete: ${OUTPUT}.tar.gz"
```

### Verification Script

Verify package integrity before release:

`scripts/verify.sh`:
```bash
#!/bin/bash

PACKAGE=$1
if [ -z "$PACKAGE" ]; then
  echo "Usage: ./verify.sh <package.tar.gz>"
  exit 1
fi

echo "Verifying ${PACKAGE}..."

# Extract to temporary directory
TEMP=$(mktemp -d)
tar -xzf ${PACKAGE} -C ${TEMP}

# Check required files
REQUIRED_FILES=(
  "CLAUDE.md"
  "README.md"
  "skill-packs/meta-system/skills/skill-suggester.md"
  "personal-os/onboarding/interview.md"
)

MISSING=0
for file in "${REQUIRED_FILES[@]}"; do
  if [ ! -f "${TEMP}/${file}" ]; then
    echo "✗ Missing: ${file}"
    MISSING=1
  else
    echo "✓ Found: ${file}"
  fi
done

# Check that user data is empty
if [ "$(ls -A ${TEMP}/personal-os/context 2>/dev/null)" ]; then
  echo "✗ User data (context/) not empty - should be skeleton only"
  MISSING=1
fi

# Validate frontmatter
echo "Validating skill frontmatter..."
find ${TEMP}/skill-packs -name "*.md" -exec grep -l "^---$" {} \; | while read skill; do
  # Basic check: every skill should have frontmatter
  if ! grep -q "^name:" ${skill}; then
    echo "✗ Missing 'name' in frontmatter: ${skill}"
    MISSING=1
  fi
done

# Clean up
rm -rf ${TEMP}

if [ $MISSING -eq 0 ]; then
  echo "✓ Package verification passed!"
  exit 0
else
  echo "✗ Package verification failed!"
  exit 1
fi
```

---

## Distribution Tips

### Mirror to Multiple Locations

For redundancy, mirror packages to:
- GitHub Releases (primary)
- AWS S3 (backup)
- Google Drive (public access)
- CDN (Fastly, CloudFront)

### Package Signing

For enterprise users, consider GPG signing:

```bash
# Sign package
gpg --armor --detach-sign personal-os-cowork-v1.0.0.tar.gz

# Verify signature
gpg --verify personal-os-cowork-v1.0.0.tar.gz.asc personal-os-cowork-v1.0.0.tar.gz
```

### Documentation Mirrors

Host documentation on:
- GitHub Pages (primary)
- GitBook
- Read the Docs
- Cowork Wiki

### Automated Release Workflow

Create GitHub Actions workflow for automated releases:

`.github/workflows/release.yml`:
```yaml
name: Release

on:
  push:
    tags:
      - 'v*'

jobs:
  release:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3

      - name: Create Release
        uses: actions/create-release@v1
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          tag_name: ${{ github.ref }}
          release_name: Release ${{ github.ref }}
          draft: false
          prerelease: false
```

---

**Package and distribute PersonalOS with confidence!** 📦
