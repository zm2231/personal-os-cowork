---
name: design-feedback
description: "Provide constructive design feedback for UI/UX, graphics, and visual assets"
---

# Design Feedback

Provide comprehensive, constructive design feedback for UI/UX designs, graphics, and visual assets with actionable improvement suggestions.

## When to Use This Skill

**Trigger when user says:**
- "review this design"
- "design feedback"
- "what do you think of this UI"
- "check this mockup"
- "feedback on this layout"
- "improve this design"

**Best for:**
- UI/UX mockups and wireframes
- Website and app designs
- Graphic design assets
- Branding and visual identity
- User interface components
- User experience flows

---

## Tier 1: Guided Review (Beginner)

**Session Unlock:** Session 14+

### Design Review Checklist

#### 1. Visual Hierarchy & Layout
- [ ] Clear focal point and visual hierarchy
- [ ] Balanced layout with appropriate spacing
- [ ] Consistent alignment and grid usage
- [ ] Logical information architecture
- [ ] Scanning patterns respected (F-pattern, Z-pattern)

#### 2. Typography & Readability
- [ ] Font choices appropriate for context
- [ ] Font sizes create clear hierarchy
- [ ] Line length optimal for readability (50-75 characters)
- [ ] Sufficient contrast between text and background
- [ ] Consistent typography scale used

#### 3. Color & Visual Elements
- [ ] Color palette harmonious and consistent
- [ ] Color contrast meets accessibility standards (WCAG AA: 4.5:1)
- [ ] Purposeful use of color (not decorative only)
- [ ] Icons and images are meaningful
- [ ] Visuals support user goals

#### 4. User Experience (UX)
- [ ] Navigation is clear and intuitive
- [ ] Call-to-action (CTA) buttons are prominent
- [ ] User flow is logical and frictionless
- [ ] Feedback provided for user actions
- [ ] Error states are clear and helpful

#### 5. Accessibility & Usability
- [ ] Accessible to keyboard users
- [ ] Screen reader compatible
- [ ] Touch targets large enough (44x44px minimum)
- [ ] No flashing or distracting animations
- [ ] Text alternatives for non-text content

### Output Format

```
## Design Review Summary

**Overall Assessment:** ✅ Strong / ⚠️ Needs Work / ❌ Critical Issues

### Strengths
• Clean, modern aesthetic
• Strong visual hierarchy
• Excellent use of whitespace
• Clear call-to-action

### Critical Issues (Must Fix)
1. Text contrast too low (2.3:1, needs 4.5:1 minimum)
2. Navigation menu missing on mobile view
3. No error states shown for form validation

### Improvements (Should Fix)
1. Inconsistent spacing between sections
2. Typography scale needs refinement
3. Add hover states to interactive elements

### Suggestions (Nice to Have)
1. Consider adding subtle animations for better feedback
2. Use brand colors more consistently
3. Add visual indicators for selected states
```

---

## Tier 2: Confident Review (Intermediate)

**Session Unlock:** Session 16+

### Advanced Design Analysis

#### Deep Evaluation Patterns

**1. Design System Consistency**
- Check against established design system
- Component library usage
- Pattern consistency across screens
- Spacing, color, typography adherence

**2. Brand Alignment**
- Visual identity consistency
- Brand voice in copy and imagery
- Logo usage guidelines followed
- Brand color palette accuracy

**3. Responsive Design**
- Mobile-first or mobile-optimized
- Breakpoints considered
- Content reflow behavior
- Touch interaction optimization

**4. User Journey & Flow**
- Complete user story covered
- Happy path and edge cases
- Onboarding experience
- Exit and cancellation flows

**5. Performance Considerations**
- Image optimization
- Font loading strategy
- Animation performance
- Asset size impact

### Design Principles Evaluation

**Gestalt Principles:**
- Proximity: Related elements grouped
- Similarity: Similar elements treated alike
- Continuity: Eye flow follows natural lines
- Closure: Mind completes incomplete shapes
- Figure-Ground: Clear subject and background separation

**Visual Weight:**
- Size, color, contrast, position impact
- Balanced composition
- Leading eye to important elements
- Appropriate emphasis

**Cognitive Load:**
- Information density
- Chunking of information
- Progressive disclosure
- Mental model alignment

### Accessibility Deep Dive

```yaml
# Accessibility Checklist
visual_accessibility:
  color_contrast:
    - normal_text: 4.5:1 (WCAG AA)
    - large_text: 3:1 (WCAG AA)
    - ui_components: 3:1 (WCAG AA)
  
  color_blindness:
    - test_with_deuteranopia_simulation
    - test_with_protanopia_simulation
    - test_with_tritanopia_simulation
  
  legibility:
    - font_size_minimum: 16px
    - line_height: 1.5x font_size
    - letter_spacing: appropriate_for_font

navigation_accessibility:
  keyboard_navigable: true
  focus_indicators: visible
  skip_links: provided
  tab_order: logical

content_accessibility:
  alt_text: all_images
  aria_labels: interactive_elements
  headings_structure: hierarchical
  link_purpose: clear_out_of_context
```

### Integration with Other Skills

- **message-review**: Review design documentation and presentations
- **presentation**: Improve slide design and visual hierarchy
- **code-review**: Coordinate UI designs with implementation

---

## Tier 3: Anticipatory Review (Advanced)

**Session Unlock:** Session 20+

### Proactive Design Review

**1. Automated Design Validation**
```yaml
# .design-lint.yml
design_rules:
  accessibility:
    - color_contrast_ratio: 4.5:1
    - touch_target_size: 44x44px
    - font_size_minimum: 16px
  
  consistency:
    - spacing_scale: 4px_grid
    - typography_scale: major_third
    - color_palette: brand_colors_only
  
  usability:
    - navigation_present: true
    - cta_button_above_fold: true
    - form_validation_visible: true
```

**2. Design System Integration**
```
"Checking against design system:

Component Library Usage:
✅ Buttons use system styles
✅ Form fields follow guidelines
⚠️ Cards have custom spacing (deviate from system)
❌ No badge component used (should use system badges)

Typography:
✅ Headings follow type scale
✅ Body text uses primary font
⚠️ Quote style not defined in system

Color:
✅ Primary and secondary colors correct
⚠️ Custom orange shade not in palette
❌ Gray shades inconsistent with system
```

**3. User Testing Recommendations**
```
Based on design analysis, recommend user testing for:

Critical Paths:
1. Checkout flow (complex, multi-step)
2. Onboarding experience (first impressions)
3. Search functionality (core feature)

Usability Concerns:
1. Mobile navigation (potential confusion)
2. Form validation (error clarity)
3. Empty states (guidance needed)

A/B Testing Candidates:
1. CTA button placement (above vs below fold)
2. Hero image style (photo vs illustration)
3. Navigation layout (sidebar vs top bar)
```

**4. Design Handoff Preparation**
```
Ready for handoff to development:

Assets Provided:
✅ All icon sets in SVG
✅ Images at multiple resolutions
✅ Color palette with hex codes
⚠️ No animation specifications

Specifications:
✅ Responsive breakpoints defined
✅ Typography scale documented
✅ Spacing system specified
⚠️ Interactive state details incomplete

Communication:
✅ Design rationale documented
✅ Edge cases described
⚠️ No component behavior notes
❌ No accessibility requirements specified

Missing for Full Handoff:
- Animation specs (hover, focus, transitions)
- Component interaction details
- Accessibility compliance checklist
- Responsive behavior notes for complex layouts
```

### Design Trend Analysis

**Current Design Trends (2024-2025):**
- **Bento Grid Layouts:** Modular, card-based layouts
- **Dark Mode First:** Designs optimized for dark themes
- **Micro-interactions:** Subtle, meaningful animations
- **3D Elements:** Subtle 3D effects in 2D interfaces
- **AI-Generated Imagery:** Personalized, dynamic visuals
- **Minimalist Gradients:** Subtle, purposeful color gradients

**Assess design against trends:**
```
Trend Alignment:
✅ Modern, clean aesthetic
✅ Card-based components
✅ Dark mode support
⚠️ Could add micro-interactions for better feedback
⚠️ Consider subtle gradient backgrounds
```

### Learning from Reviews

**Track Design Patterns:**
- Common success factors across projects
- Recurring usability issues
- Effective design solutions
- Team-specific preferences

**Build Design Knowledge Base:**
- Good UI pattern examples
- Anti-patterns to avoid
- Accessibility case studies
- Industry best practices

---

## Examples

### Example 1: Landing Page Review

**User:** "Review this landing page design" (describes or shares image)

**Tier 1 Response:**
```
## Design Review Summary

**Overall Assessment:** ⚠️ Needs Work

### Critical Issues (Must Fix)
1. **Contrast Issues:** Dark gray text on black background (2.1:1 ratio)
   - **Fix:** Use lighter gray (#F5F5F5) on black backgrounds (WCAG AA: 4.5:1)

2. **Mobile Navigation:** No visible menu on mobile view
   - **Fix:** Add hamburger menu or sticky nav for mobile

3. **CTA Visibility:** Primary CTA blends with hero section
   - **Fix:** Use contrasting color or add shadow to make button stand out

### Improvements (Should Fix)
1. **Typography Hierarchy:** Headline and subheadline similar size
   - **Suggestion:** Use 2:1 ratio between H1 and H2

2. **Spacing:** Sections too close together
   - **Suggestion:** Add 80-120px spacing between major sections

3. **Social Proof:** Testimonials placed below fold
   - **Suggestion:** Move at least one testimonial above fold for credibility

### Suggestions (Nice to Have)
1. **Hover Effects:** Add button hover states for better feedback
2. **Loading States:** Consider skeleton screens for images
3. **Animations:** Add subtle entrance animations for engagement

### Quick Fixes:
```css
/* Improve text contrast */
.hero-text { color: #F5F5F5; }

/* Add mobile nav */
@media (max-width: 768px) {
  .nav-menu { display: block; }
}

/* Make CTA stand out */
.cta-button { 
  box-shadow: 0 4px 12px rgba(0,0,0,0.3);
}
```
```

### Example 2: Dashboard UI Review

**User:** "Review this dashboard interface"

**Tier 2 Response:**
```
## Design Review Summary

**Overall Assessment:** ✅ Strong with Minor Improvements

### Strengths
• Clean, data-focused layout
• Effective use of cards for organization
• Good color choices for data visualization
• Logical information hierarchy

### Improvements (Should Fix)

**1. Data Visualization Clarity**
```
Issue: Multiple charts use similar blue tones
Impact: Difficult to distinguish between datasets at a glance
Fix: Use distinct color palette for different data types
Suggestion:
- Revenue: Blue (#3B82F6)
- Users: Purple (#8B5CF6)
- Engagement: Green (#10B981)
```

**2. Information Density**
```
Issue: Dashboard shows 12+ metrics simultaneously
Impact: Cognitive overload, users miss important data
Fix: Implement progressive disclosure
Suggestion:
- Show top 4 metrics by default
- "Show All" button expands to full view
- Allow user to customize which metrics display
```

**3. Empty States**
```
Issue: No guidance when no data available
Impact: Users unsure if error or expected behavior
Fix: Add helpful empty state with action
Suggestion:
"No data yet"
"Create your first report to see insights here"
[Create Report Button]
```

### Advanced Analysis

**Design System Consistency:**
```
✅ Cards: Standard border-radius (8px), padding (24px)
✅ Typography: Consistent with system scale
⚠️ Shadows: Inconsistent shadow depths used
⚠️ Grid: Some cards use 12-column, others 8-column
```

**Accessibility Compliance:**
```
WCAG AA Standards:
✅ Color contrast: All text meets 4.5:1 ratio
✅ Touch targets: All interactive elements 44x44px minimum
⚠️ Keyboard focus: Focus states not clearly visible
⚠️ Screen reader: Charts lack accessible labels

Recommendations:
1. Add visible focus outline (2px solid #3B82F6)
2. Provide text alternative for charts (data table below)
3. Ensure color differences are not only indicator (add icons/patterns)
```

**Responsive Behavior:**
```
Desktop (1024px+): ✅ Optimal layout
Tablet (768-1023px): ⚠️ Cards could stack better
Mobile (<768px): ❌ Charts too cramped

Recommendations:
- Stack cards vertically on tablet (2-column max)
- Use horizontal scroll for charts on mobile
- Consider summary view for mobile with "View Details" drilldown
```

### User Journey Analysis

**User Flow Assessment:**
```
Scenario: Sales rep checking monthly performance

Steps:
1. Dashboard loads → ✅ Fast (under 2s)
2. User sees key metrics → ⚠️ Could be clearer which are KPIs
3. User clicks chart for details → ✅ Smooth transition
4. User drills into specific client → ❌ No clear back button
5. User exports report → ⚠️ Export option hidden in menu

Friction Points:
- No clear indication of which metrics are most important
- Difficult to return to main dashboard after drilling down
- Export action not discoverable

Improvements:
- Add KPI indicator badge to important metrics
- Add breadcrumb navigation for drill-down pages
- Move export button to top of card (more visible)
```

### Design Recommendations

**Visual Improvements:**
```
1. Add micro-interactions:
   - Hover effects on cards (subtle lift, shadow increase)
   - Smooth transitions between views (300ms ease-in-out)
   - Loading animations for data fetching

2. Enhance data storytelling:
   - Add trend indicators (↑↓) with percentage changes
   - Use sparklines for quick trend visualization
   - Color-code metrics (green for positive, red for negative)

3. Improve personalization:
   - Drag-and-drop to rearrange cards
   - Save custom dashboard layouts
   - Set default time ranges and filters
```

**UX Enhancements:**
```
1. Add keyboard shortcuts:
   - Press 'N' to create new report
   - Press 'S' to search
   - Press 'E' to export

2. Improve search and filter:
   - Add global search for data
   - Save filter presets for common views
   - Quick date range buttons (Today, This Week, This Month)

3. Better empty states:
   - Onboarding tour for first-time users
   - Sample data for exploration
   - Clear call-to-action when no data
```
```

### Example 3: Mobile App Design Review

**User:** "Review this mobile app screen"

**Tier 3 Response:**
```
## Design Review Summary

**Overall Assessment:** ✅ Strong Foundation, Needs Refinement

### Comprehensive Analysis

**1. Navigation Architecture**
```
Current: Bottom tab bar (5 tabs)
Analysis:
✅ Standard pattern users recognize
⚠️ 5 tabs might be crowded on small screens
⚠️ "Settings" in tab bar (usually not primary)

Recommendations:
- Move "Settings" to profile/hamburger menu
- Reduce to 4 tabs max for optimal touch targets
- Consider using a floating action button (FAB) for primary action

Alternative: Hybrid Navigation
```
[Top] Header with logo + notification bell
[Center] Scrollable content
[Bottom] 3-4 tab bar
[FAB] Primary action (floating, bottom-right)
```
```

**2. Gesture Support Assessment**
```
Implemented Gestures:
✅ Pull-to-refresh (standard, expected)
⚠️ Swipe to delete (not indicated, users might miss)
❌ No pinch-to-zoom (images non-resizable)

Missing Gestures (Consider):
- Swipe left/right for quick navigation
- Long press for context menu
- Pull to reveal quick actions
- Swipe to dismiss notifications

User Expectations:
"Pull-to-refresh works well, but I expected to swipe cards away"
(From user testing simulation)
```

**3. Design System Alignment**

**Component Consistency Check:**
```yaml
buttons:
  primary:
    background: "#3B82F6"
    text: "#FFFFFF"
    height: 48px
    radius: 8px
    consistency: ✅ matches design system
  
  secondary:
    background: "transparent"
    text: "#3B82F6"
    border: "1px solid #3B82F6"
    height: 48px
    radius: 8px
    consistency: ⚠️ some instances use 4px radius

cards:
  background: "#FFFFFF"
  padding: 16px
  radius: 12px
  shadow: "0 1px 3px rgba(0,0,0,0.1)"
  consistency: ⚠️ some cards use 16px padding

inputs:
  height: 48px
  border: "1px solid #E5E7EB"
  radius: 8px
  consistency: ✅ matches design system
```

**Typography Scale Compliance:**
```
Design System Scale:
- H1: 32px, 700 weight
- H2: 24px, 600 weight
- H3: 18px, 600 weight
- Body: 16px, 400 weight
- Small: 14px, 400 weight

Compliance Check:
✅ H1 used correctly in headers
✅ H2 used for section titles
⚠️ Some headings use 20px (not in scale)
⚠️ Body text inconsistent: 14px used in some places
```

**4. Accessibility Deep Dive**

**Color Blindness Simulation Results:**
```
Deuteranopia (red-green color blindness):
✅ Green/Blue contrasts still readable
⚠️ Success/Error indicators (green/red) confusing
❌ Chart data series indistinguishable

Recommendations:
- Use icons in addition to colors for status
- Add patterns/textures to chart series
- Test with Coblis or Sim Daltonism

Protanopia (red-weak):
Similar issues to deuteranopia

Tritanopia (blue-yellow):
✅ Less critical for this app's color palette
```

**Touch Interaction Analysis:**
```yaml
touch_targets:
  minimum_required: 44x44px
  
  evaluation:
    navigation_tabs: "48x48px" ✅
    buttons: "48x48px" ✅
    list_items: "56x48px" ✅
    icons: "24x24px" ❌ (too small, increase to 44x44)
    checkboxes: "32x32px" ❌ (increase to 44x44)

  spacing_between_targets:
    navigation_tabs: "12px gap" ✅
    list_items: "16px gap" ✅
    buttons_in_row: "24px gap" ✅
```

**Focus Management:**
```
Visible Focus States:
✅ Text input fields have clear focus border
❌ Buttons lack visible focus state
⚠️ Cards focus not apparent

Keyboard Navigation:
✅ Tab order is logical
⚠️ Screen reader labels incomplete
❌ Custom components not keyboard accessible

Recommendations:
1. Add visible focus outline to all interactive elements
2. Add aria-labels to icon-only buttons
3. Ensure custom dropdowns are keyboard navigable
4. Test with VoiceOver (iOS) and TalkBack (Android)
```

**5. Performance & Animation**

**Animation Performance Analysis:**
```
Scroll Performance: 60fps ✅
Page Transitions: 300ms fade ⚠️ (feels sluggish on low-end devices)
Loading Spinner: Smooth ✅

Recommendations:
- Reduce page transition to 150-200ms
- Use CSS transforms instead of top/left for animations
- Implement skeleton screens for faster perceived performance
- Use will-change property for animated elements
```

**Image Optimization Assessment:**
```
Images Loaded:
- Hero image: 1.2MB (too large)
- Avatar images: 150KB each (could be smaller)
- Icons: SVGs (good, scalable)

Recommendations:
- Compress hero image to <300KB (use WebP format)
- Lazy load images below fold
- Use responsive images (srcset)
- Implement placeholder blur for smoother loading

Estimated Impact:
- Initial load time: 4.2s → 2.1s (50% reduction)
- Data usage: 3.5MB → 1.8MB per session
```

**6. Handoff Readiness**

**Developer Handoff Checklist:**
```
Assets Delivered:
✅ All icons in SVG
✅ Images at 1x, 2x, 3x scales
✅ Color palette with hex values
✅ Typography scale documented
✅ Component specifications
⚠️ Animation timings not specified
❌ No interaction states defined

Specifications Completeness:
✅ Spacing and layout grids
✅ Component variations (default, hover, active)
⚠️ Error states partially documented
❌ Empty states not defined
❌ Loading states missing

Communication:
✅ Design rationale documented
⚠️ Edge cases partially covered
❌ No accessibility compliance checklist
❌ No responsive behavior notes for complex components

Ready for Handoff: 60%
Missing: Animation specs, all state definitions, accessibility requirements
```

**7. Competitive Analysis**

**Comparison with Competitors:**
```
Feature Comparison:
| Feature | Our App | Competitor A | Competitor B |
|---------|---------|--------------|--------------|
| Navigation | Bottom tabs | Bottom nav | Side drawer |
| Search | Top bar | Global FAB | Pull to reveal |
| Filters | Modal | Slide-up panel | Inline |
| Empty state | Basic text | Illustration + CTA | Video tutorial |

Advantages:
- Cleaner, simpler navigation
- Better use of whitespace
- More modern aesthetic

Disadvantages:
- Less discoverable features
- No onboarding for new users
- Search less accessible (not global)

Opportunities:
- Add global search (competitor advantage)
- Improve empty states with illustrations (competitor B)
- Add onboarding tour for first-time users
```

### Prioritized Recommendations

**Critical (Fix Before Launch):**
1. Increase icon touch targets to 44x44px
2. Add accessible labels to color-based indicators
3. Implement proper focus states for keyboard navigation

**High Priority (Next Sprint):**
4. Compress images to improve load time
5. Add visible focus outlines to buttons
6. Improve empty states with helpful CTAs

**Medium Priority (Future Iterations):**
7. Add global search functionality
8. Implement advanced animations
9. Enhance gesture support

**Nice to Have:**
10. Add onboarding tour for new users
11. Implement dark mode
12. Add more micro-interactions
```

---

## Best Practices

### For Giving Design Feedback

1. **Be Specific and Constructive**
   - Point to exact elements causing issues
   - Explain the WHY, not just the WHAT
   - Offer specific improvement suggestions

2. **Prioritize by Impact**
   - Separate critical issues from nice-to-haves
   - Focus on user-facing problems first
   - Consider business impact

3. **Consider Context and Constraints**
   - Technical limitations
   - Timeline pressures
   - Brand guidelines
   - User research insights

4. **Use Design Vocabulary**
   - Visual hierarchy, contrast, balance
   - Typography, spacing, color theory
   - UX patterns, usability principles

### For Receiving Design Feedback

1. **Ask Clarifying Questions**
   - Understand the user's goal
   - Ask about target audience
   - Context about business objectives

2. **Consider Multiple Perspectives**
   - Different user personas
   - Various devices and contexts
   - Accessibility considerations

3. **Focus on User Needs**
   - Not personal preference
   - What works for users
   - Evidence-based decisions

---

## Common Mistakes

### Feedback Mistakes

❌ **Too Vague:** "This doesn't look good"
✅ **Specific:** "The text contrast on this button is too low (2.1:1), making it hard to read for users with visual impairments"

❌ **Style-Only Feedback:** "Change this color to blue"
✅ **UX-Focused:** "Consider using blue for primary actions to create stronger visual hierarchy"

❌ **Ignoring Context:** "Add more animations"
✅ **Context-Aware:** "Consider adding subtle hover animations on these cards to provide feedback when hovering"

### Design Mistakes

❌ **Ignoring Accessibility:** "Design looks good"
✅ **Accessible:** "Design meets WCAG AA standards and works for screen reader users"

❌ **Not Mobile-First:** "Start with desktop design"
✅ **Responsive:** "Design for mobile first, then scale up to desktop"

❌ **Complexity Over Clarity:** "Add more features"
✅ **Simplified:** "Remove complexity and focus on core user journey"

---

## Design Resources

### Accessibility Tools
- **WebAIM Contrast Checker:** https://webaim.org/resources/contrastchecker/
- **Coblis Color Blindness Simulator:** https://www.color-blindness.com/coblis-color-blindness-simulator/
- **WAVE:** https://wave.webaim.org/

### Design Inspiration
- **Dribbble:** https://dribbble.com/
- **Behance:** https://www.behance.net/
- **Awwwards:** https://www.awwwards.com/
- **Mobbin:** https://mobbin.com/ (mobile app screenshots)

### Learning Resources
- **NNGroup UX Articles:** https://www.nngroup.com/articles/
- **Material Design Guidelines:** https://material.io/design
- **Apple Human Interface Guidelines:** https://developer.apple.com/design/human-interface-guidelines/

---

## Integration with Other Skills

### Related Skills

- **message-review**: Review design documentation and presentations
- **presentation**: Improve slide design and visual hierarchy
- **code-review**: Coordinate UI designs with implementation

### Workflow Integration

1. **Design Feedback → Message Review**
   ```
   Provide design feedback → Review communication tone → Refine presentation
   ```

2. **Design Feedback → Code Review**
   ```
   Review designs → Coordinate with developers → Verify implementation matches design
   ```

3. **Presentation → Design Feedback**
   ```
   Create presentation slides → Get design feedback → Improve visual storytelling
   ```

---

## Progressive Disclosure

**Level 1 (Guided):**
- Checklist-based review
- Focus on visual and accessibility basics
- Clear, actionable feedback

**Level 2 (Confident):**
- Advanced design analysis
- Design system integration
- Accessibility deep dive

**Level 3 (Anticipatory):**
- Proactive design validation
- Competitive analysis
- Comprehensive handoff preparation

---

## Session Tracking

After using this skill, update `personal-os/adaptation/skill-levels.md`:
```
design-feedback:
  level: 1
  sessions_used: 1
  last_used: [current_date]
  progression_notes: "Completed first design review, focused on accessibility and contrast"
```