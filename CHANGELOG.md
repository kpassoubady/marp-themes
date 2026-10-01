# Changelog

All notable changes to the Marp themes in this repo are documented here.
Versions correspond to immutable git tags (`vN`) used to pin the jsDelivr CDN
URL — see `README.md` for the pinning convention and release steps.

## [v16] - 2026-09-30

### Fixed

- `.term-card h3` lost its primary-color styling to the global `h3 { color:
  var(--color-text) !important; }` rule; mark it `!important` as well so it
  wins, matching the pattern already used by other heading-level overrides
  in this theme.

## [v15] - 2026-09-30

### Added

- `.term-grid` / `.term-card` components for vocabulary recap slides (fully
  bordered 3-column term cards with tag/heading/description).
- `section.concept` slide type with an accent left border and light gradient.
- `.capability-grid.grid-2x2` modifier for 2x2 capability-card layouts.

## [v14] - 2026-09-30

### Fixed

- Blockquotes and tables on `section.lead` / `section.divider` now force
  light text and a translucent background instead of inheriting Marp's
  default dark colors.

## [v13] - 2026-08-15

### Added

- `.capability-grid` / `.capability-card` component for 3-fact capability
  slides.

## [v12] - 2026-08-14

### Added

- `.columns2` two-column grid layout helper.

## [v11] - 2026-08-13

### Changed

- Reduced space after H1 to make room for content.

## [v10] - 2026-08-09

### Added

- `term-chair`: `.badge.tnc` style for the Tamil Nano Chair badge.

## [v9] - 2026-08-09

### Added

- Lead-slide chapter/part badges, running header/footer styling.

## [v8] - 2026-08-09

### Fixed

- Invisible plain-text on lead/divider slides.

## [v7] - 2026-08-09

### Added

- `term-chair` theme and shared GFM alert styles.

## [v6] - 2026-08-07

### Added

- `.chat-check`, `.chat-waterfall`, and answer slide classes.

## [v5] - 2026-08-07

### Added

- `section.discussion` and `section.discussion-answer` classes.

### Fixed

- DEMO badge right-position reset.

## [v4] - 2026-08-02

### Changed

- Moved DEMO badge slightly higher on the left side.

## [v3] - 2026-08-02

### Added

- `section.demo` class for demo instruction slides.

### Fixed

- DEMO badge positioning to avoid H1 overlap; moved to the left side to
  avoid header overlay.

### Docs

- Bumped README pin references to v2.

## [v2] - 2026-07-18

### Changed

- Centered divider slides via `align-content` to match the lead layout.

### Docs

- Documented version-pinned jsDelivr usage (v1) and the immutable release
  workflow.

## [v1] - 2026-07-18

### Added

- Initial blue theme and logos.
- Theme importable via Marp `style` directive; documented jsDelivr usage.

### Fixed

- Force brand heading colors with `!important` so they override Marp's
  default theme ID-specificity when layered via style import.
