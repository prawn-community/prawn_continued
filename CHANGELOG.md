# CHANGELOG

## Unreleased

- Move `prawn`, `ttfunk`, `pdf-core`, and `prawn-table` into a single repo
  * Change require "prawn" to require "prawn_continued"
  * `prawn-table` is now automatically required when loading `prawn_continued`
- Prawn
  * Take the font style into account when looking for a glyph and fallback fonts are enabled. https://github.com/prawnpdf/prawn/issues/1147
- Prawn::Table
  * Bugfix: Use a cell's custom style over table styles. https://github.com/prawnpdf/prawn-table/pull/143
  * Bugfix: Use the cell's specified font to calculate the cell width. https://github.com/prawnpdf/prawn-table/pull/60

## Legacy Changelogs
- `prawn` https://github.com/prawnpdf/prawn/blob/main/CHANGELOG.md
- `prawn-table` https://github.com/prawnpdf/prawn-table/blob/main/CHANGELOG.md
- `pdf-core` https://github.com/prawnpdf/ttfunk/blob/main/CHANGELOG.md
- `ttfunk` https://github.com/prawnpdf/pdf-core/blob/main/CHANGELOG.md
