# Andaleeb Rahman — personal website

Single-page academic website built with [Quarto](https://quarto.org), live at <https://andaleebr.github.io>.

## Files you edit

| File | What it controls |
|---|---|
| `index.qmd` | All page content: sidebar (photo, role, contact links), intro, publications, books, media |
| `styles.css` | Layout, fonts and colours |
| `assets/images/photo.jpg` | Profile photo (keep this file name) |
| `_quarto.yml` | Site settings (rarely needs changing) |

Don't edit anything in `docs/` by hand: it is generated when you render.

## Common edits (in `index.qmd`)

- **Add a publication:** copy an existing line under `## Publications` and change the link, title, co-authors and journal. Newest goes at the top.
- **Add a book:** copy one `::: {.book}` … `:::` block under `## Books`. The text between `<details>` and `</details>` is the collapsible abstract.
- **Change role or contact links:** edit the `.profile-role` and `.profile-links` lines near the top.

## Update the live site

```sh
cd ~/andaleebr.github.io
git pull                                   # get the latest version first
/Applications/quarto/bin/quarto preview    # optional: live preview in your browser while you edit
/Applications/quarto/bin/quarto render     # rebuild the site into docs/
git add -A
git commit -m "Update website"
git push
```

GitHub Pages serves the `docs/` folder on the `main` branch, so the site updates a minute or two after you push.
