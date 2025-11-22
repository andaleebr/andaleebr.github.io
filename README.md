# # Andaleeb Rahman - Personal Academic Website

This is the source code for my academic website hosted at [andaleebr.github.io](https://andaleebr.github.io)

## 🏗️ Project Structure

```
.
├── _quarto.yml              # Main Quarto configuration file
├── styles.css               # Custom CSS styling (minimalistic design)
│
├── index.qmd                # Home page with publications
├── about.qmd                # Full publications list
├── outreach.qmd             # Media coverage and outreach
├── books-food-systems.qmd   # Food Systems book page
├── books-social-protection.qmd  # Social Protection book page
│
├── assets/                  # Organized assets folder
│   ├── images/              # Profile photos and images
│   │   └── photo.jpg
│   └── books/               # Book cover images
│       ├── book1.png
│       └── book2.png
│
└── docs/                    # Generated HTML files (GitHub Pages serves from here)
    ├── index.html
    ├── styles.css
    └── ...
```

## 🚀 Quick Start

### Prerequisites
- [Quarto](https://quarto.org/docs/get-started/) installed
- R or RStudio (optional but recommended)

### Making Changes

1. **Edit content files** (`.qmd` files):
   - `index.qmd` - Update bio, publications, contact info
   - `about.qmd` - Full publication list
   - `books-*.qmd` - Book information
   - `outreach.qmd` - Media coverage

2. **Edit styling**:
   - `styles.css` - Modify the minimalistic design
   - `_quarto.yml` - Change theme, navigation, settings

3. **Render the site**:
   ```bash
   quarto render
   ```

4. **Preview locally** (before deploying):
   ```bash
   quarto preview
   ```

5. **Deploy to GitHub Pages**:
   ```bash
   git add .
   git commit -m "Your commit message"
   git push origin main
   ```

## 📝 Common Tasks

### Update Profile Photo
1. Replace `assets/images/photo.jpg` with your new photo
2. Render and commit

### Add a New Publication
1. Open `index.qmd`
2. Add entry under "## Peer-reviewed Journal Articles"
3. Follow the existing format: `[Title](URL) (authors). *Journal*. Year. [[PDF](link)]`

### Update Contact Links
Edit line 17 in `index.qmd`:
- Google Scholar URL
- LinkedIn URL  
- Email address

### Change Colors/Styling
Edit `styles.css`:
- `:root` section contains color variables
- Modify `--primary-color` for link colors
- Adjust spacing in respective sections

## 🎨 Design Philosophy

This website follows a **minimalistic design** approach:
- Maximum content visibility
- Efficient use of space
- Clean typography
- Simple, professional aesthetics
- Mobile-responsive layout

## 📦 File Organization

### Source Files (`.qmd`)
These are your content files written in Quarto Markdown. Edit these to change content.

### Generated Files (`docs/`)
These are automatically generated HTML files. Don't edit these directly - they get overwritten when you render.

### Assets
Keep all images, PDFs, and media files organized in the `assets/` folder for easy management.

## 🔧 Troubleshooting

**Changes not showing on website?**
1. Make sure you rendered the site: `quarto render`
2. Check that you committed the `docs/` folder
3. Hard refresh your browser (Cmd+Shift+R on Mac)

**Broken images?**
- Verify image paths start with `assets/`
- Check that `_quarto.yml` includes `resources: - assets/`

## 📄 License

Personal academic website © Andaleeb Rahman

---

Last updated: November 22, 2025


