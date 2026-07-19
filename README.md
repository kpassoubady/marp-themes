# Marp Blue Theme

A generic blue Marp theme for course slides and technical presentations.

## Files

| File | Purpose |
| :--- | :--- |
| `blue-theme.css` | Marp theme — import this in VS Code or Marp CLI |
| `logo-white.svg` | White + teal logo for blue gradient slides |
| `logo.svg` | Blue version for white backgrounds |
| `logo.png` | Raster logo for non-SVG contexts |

## Usage

Serve assets through the jsDelivr CDN, not `raw.githubusercontent.com`. GitHub raw
returns `Content-Type: text/plain` with `nosniff`, so browser-based Marp preview
panes (for example cloud IDEs) refuse to apply the stylesheet. jsDelivr returns
`text/css` with CORS enabled, which every renderer accepts.

Always pin to a version tag (`@v1`), never to `@main`. A branch URL is cached by
the client for up to 7 days, so edits do not show up and purging the CDN origin
does not clear the copy already cached in the browser. A version tag is immutable,
so its URL is a fresh cache key that loads immediately and never goes stale.

### Self-contained slide (recommended)

Import the theme directly in the deck front matter. This needs no theme
registration, so it renders in VS Code and cloud-hosted preview panes alike.

```yaml
---
marp: true
theme: default
paginate: true
style: |
  @import url("https://cdn.jsdelivr.net/gh/kpassoubady/marp-themes@v1/blue-theme.css");
---
```

### Logo on lead and divider slides

```html
<img class="logo" src="https://cdn.jsdelivr.net/gh/kpassoubady/marp-themes@v1/logo-white.svg" />
```

### VS Code (optional registration)

```json
{
  "markdown.marp.themes": [
    "https://cdn.jsdelivr.net/gh/kpassoubady/marp-themes@v1/blue-theme.css"
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

Because consumers pin to an immutable tag, publishing a theme change means cutting
a new tag and bumping the references:

```bash
# after committing your CSS change
git tag v2
git push origin v2
```

Then update the `@v1` references in the consuming repos to `@v2`. Do not move an
existing tag: jsDelivr treats tagged URLs as immutable and caches them for months,
so a moved tag would serve stale content.
