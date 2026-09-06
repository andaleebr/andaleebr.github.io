# Andaleeb Rahman

Single-page academic website built with Quarto.

## Maintain

Edit `index.qmd` for page content and `styles.css` for layout and typography. Keep the profile image at `assets/images/photo.jpg`.

Render the site with:

```sh
/Applications/quarto/bin/quarto render
```

The generated site is written to `docs/`. Preview `docs/index.html` locally, then commit the source and rendered output.

```sh
git add index.qmd styles.css _quarto.yml assets/ docs/
git commit -m "Update website"
git push origin website
```

GitHub Pages currently serves `main/docs`. Publish the rendered `docs/index.html` and `docs/styles.css` to `main` after reviewing the result.

