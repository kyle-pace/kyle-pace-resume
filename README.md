# Résumé

My résumé, written in [Typst](https://typst.app) and version-controlled here. The PDF rebuilds automatically on every push.

## [→ View résumé](https://github.com/kyle-pace/kyle-pace-resume/blob/main/resume.pdf) · [Download PDF](https://raw.githubusercontent.com/kyle-pace/kyle-pace-resume/main/resume.pdf)

## How it works

- `resume.typ` is the source of truth. All content edits happen there.
- On every push that touches `resume.typ` or `fonts/`, a GitHub Action compiles it with Typst and commits the updated `resume.pdf` back to the repo.
- `fonts/` contains the Inter typeface (SIL Open Font License), vendored so builds are reproducible.

## Editing

Small edits (dates, bullets, wording): edit `resume.typ` directly on github.com, commit, and the PDF rebuilds in about a minute.

Bigger edits with live preview: paste `resume.typ` into [typst.app](https://typst.app) (Inter is built in there), edit with the rendered preview alongside, then commit the result back here.

Building locally, if ever needed:


```

typst compile --font-path fonts resume.typ resume.pdf

```

## Structure of resume.typ

The top of the file (colors, fonts, `section` / `role` / `bullets` helpers) is the design layer and rarely changes. Everything below the `// header` comment is content. Adding a job is one `#role(...)` line plus a `#bullets(...)` block.
