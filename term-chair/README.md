# Marp Term Chair Theme

A warm, parchment-and-gold Marp theme for glossary teach-back sessions, built for
the Ganga Emerging Technology Terminology Research Chair nano chair: short
(~15 minute) presentations where anyone walks through a handful of terms from
the Tamil AI glossary book.

Distinct from `../blue-theme.css` (built for full-length instructor-led courses),
this theme uses a scholarly manuscript palette, wine/maroon headings, antique
gold accents, and a parchment background, matching the chair's own branding
instead of a generic tech-course blue.

## Files

| File | Purpose |
| :--- | :--- |
| `term-chair.css` | Marp theme — import this in VS Code or Marp CLI |
| `logo.png` | Chair logo (research-arm-over-cell mark) for title/divider slides |
| `sample.md` | Example deck exercising every slide class in this theme |

## Palette

| Role | Color | Source |
| :--- | :--- | :--- |
| Primary (wine/maroon) | `#8f2438` | Flyer title text |
| Primary dark | `#5c1526` | Flyer title shadow tone |
| Accent (antique gold) | `#c9a227` | Flyer border/frame gold |
| Navy | `#16233e` | Flyer bottom icon band |
| Background (parchment) | `#fdf9f0` | Flyer page background |
| Text (ink brown) | `#2b2118` | Flyer body text |

## Usage

Serve assets through the jsDelivr CDN, not `raw.githubusercontent.com`. GitHub raw
returns `Content-Type: text/plain` with `nosniff`, so browser-based Marp preview
panes (for example cloud IDEs) refuse to apply the stylesheet. jsDelivr returns
`text/css` with CORS enabled, which every renderer accepts.

Always pin to a version tag (`@v7` or later, once this theme is released), never
to `@main`. A branch URL is cached by the client for up to 7 days, so edits do
not show up and purging the CDN origin does not clear the copy already cached in
the browser. A version tag is immutable, so its URL is a fresh cache key that
loads immediately and never goes stale.

### Self-contained slide (recommended)

```yaml
---
marp: true
theme: default
paginate: true
style: |
  @import url("https://cdn.jsdelivr.net/gh/kpassoubady/marp-themes@v7/term-chair/term-chair.css");
---
```

### Logo on lead and divider slides

```html
<img class="logo" src="https://cdn.jsdelivr.net/gh/kpassoubady/marp-themes@v7/term-chair/logo.png" />
```

### The `.term` slide class

Use `<!-- _class: term -->` for the core "one term (or small cluster) at a time"
slide in a 15-minute teach-back: gold left rule, no full-bleed background, room
for the term's Tamil heading, root-word breakdown, and explanation straight from
the book chapter.

```markdown
<!-- _class: term -->

# Attention — கவனம் <span class="tamil">கருவி</span>

**கவனம்** (attention mechanism)
கவனம் + கருவி. மாதிரி எந்த உள்ளீட்டுச் சொற்களில் கவனம் செலுத்த வேண்டும் என்பதை
கற்றுக்கொள்ளும் ஒரு நுட்பம்.
```

### GFM alert callouts

Marp does not render GitHub's `[!NOTE]`/`[!TIP]`/`[!IMPORTANT]`/`[!WARNING]`/`[!CAUTION]`
alert syntax, so emit the equivalent markup directly and the theme styles it
(colors match GitHub's standard alert palette so meaning stays recognizable
across decks and themes, independent of the term-chair brand palette):

```html
<div class="gfm-alert gfm-note">
<div class="gfm-alert-title">Note</div>
<p>கவனம் என்பது ஒரு core building block.</p>
</div>
```

Available variants: `gfm-note` (blue), `gfm-tip` (green), `gfm-important`
(purple), `gfm-warning` (orange), `gfm-caution` (red). There's also
`.industry-badge` for a "REAL-WORLD SCENARIO" label ahead of an example,
matching the `course-industry-example-injector` skill's convention.

### Other slide classes (shared with blue-theme)

`section.lead`, `section.divider`, `section.demo`, `section.discussion`,
`section.discussion-answer`, `section.chat-check`, `section.chat-check-answer`,
`section.chat-waterfall`, `section.chat-waterfall-answer` all work identically
to `blue-theme.css`, recolored to the parchment/wine/gold palette so a deck can
mix a book-chapter teach-back with a quick poll or open discussion slide.

### VS Code (optional registration)

```json
{
  "markdown.marp.themes": [
    "https://cdn.jsdelivr.net/gh/kpassoubady/marp-themes@v7/term-chair/term-chair.css"
  ],
  "markdown.marp.html": "all"
}
```

### Marp CLI

```bash
marp --pdf --allow-local-files slides.md
```

The deck's `style` import supplies the theme, so no `--theme` flag is required.

## Releasing an update

See the root [`README.md`](../README.md#releasing-an-update) for the tagging
workflow. Because this theme lives in a subfolder, its CDN path is
`term-chair/term-chair.css` under whatever tag you cut.
