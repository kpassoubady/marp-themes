# marp-themes

Marp CSS themes distributed via jsDelivr for course slides and technical
presentations. No build step, no package manager — these are plain
stylesheets and logo assets imported directly into Marp deck front matter.

## Tech Stack

- **Format:** Plain CSS (Marp theme stylesheets), no preprocessor or bundler
- **Distribution:** jsDelivr CDN over GitHub tags (`@vN`), never `raw.githubusercontent.com` or `@main`
- **Assets:** SVG/PNG logos shipped alongside each theme

## Project Structure

| Path | Purpose |
| :--- | :--- |
| `blue-theme.css` | Generic blue Marp theme for course slides and technical presentations |
| `logo.svg` / `logo-white.svg` / `logo.png` | Blue-theme logos (dark-on-white and white-on-blue variants) |
| `term-chair/` | Parchment-and-gold Marp theme for the Ganga Emerging Technology Terminology Research Chair glossary teach-back sessions; see `term-chair/README.md` |
| `term-chair/term-chair.css` | The term-chair theme stylesheet |
| `term-chair/sample.md` | Example deck exercising every slide class in the term-chair theme |

## Key Commands

No build/test tooling. Preview changes with the Marp CLI or the VS Code Marp
extension against a sample deck:

```bash
marp --pdf --allow-local-files slides.md
```

## Conventions

- **Versioning is tag-based, not branch-based.** Consumers pin `@import` URLs to
  an immutable release tag (e.g. `@v16`). Use `scripts/bump-version.sh <vN>` to
  synchronize tag references across `README.md` and `term-chair/README.md`.
  Never move or reuse an existing tag — jsDelivr caches tagged URLs for months.
- **jsDelivr, not GitHub raw.** `raw.githubusercontent.com` serves
  `text/plain; nosniff`, which browser-based Marp preview panes refuse to apply
  as CSS. Always use `https://cdn.jsdelivr.net/gh/kpassoubady/marp-themes@vN/...`.
- `blue-theme.css` and `term-chair/term-chair.css` are independent themes with
  separate palettes/branding — don't share rules between them; mirror the
  lead/divider slide-type overrides pattern (`section.lead`, `section.divider`)
  within each theme instead.
- Check the latest release tag dynamically with `git describe --tags --abbrev=0`.
  Do not hardcode transient tag numbers in this document.
</content>
