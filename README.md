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

### Self-contained slide (recommended)

Import the theme directly in the deck front matter. This needs no theme
registration, so it renders in VS Code and cloud-hosted preview panes alike.

```yaml
---
marp: true
theme: default
paginate: true
style: |
  @import url("https://cdn.jsdelivr.net/gh/kpassoubady/marp-themes@main/blue-theme.css");
---
```

### Logo on lead and divider slides

```html
<img class="logo" src="https://cdn.jsdelivr.net/gh/kpassoubady/marp-themes@main/logo-white.svg" />
```

### VS Code (optional registration)

```json
{
  "markdown.marp.themes": [
    "https://cdn.jsdelivr.net/gh/kpassoubady/marp-themes@main/blue-theme.css"
  ],
  "markdown.marp.html": "all"
}
```

### Marp CLI

```bash
marp --pdf --allow-local-files slides.md
```

The deck's `style` import supplies the theme, so no `--theme` flag is required.

## Cache note

jsDelivr caches `@main` for up to 7 days. After pushing an update, purge with:

```
https://purge.jsdelivr.net/gh/kpassoubady/marp-themes@main/blue-theme.css
```
