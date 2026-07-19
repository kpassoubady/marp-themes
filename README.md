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

### VS Code

Add the raw theme URL to your workspace settings:

```json
{
  "markdown.marp.themes": [
    "https://raw.githubusercontent.com/kpassoubady/marp-themes/main/blue-theme.css"
  ],
  "markdown.marp.html": "all"
}
```

### Slide front matter

```yaml
---
marp: true
theme: blue-theme
paginate: true
---
```

### Logo on lead and divider slides

```html
<img class="logo" src="https://raw.githubusercontent.com/kpassoubady/marp-themes/main/logo-white.svg" />
```

### Marp CLI

```bash
marp --pdf --theme blue-theme.css --allow-local-files slides.md
```
