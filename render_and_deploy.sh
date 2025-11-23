#!/bin/bash
# Quick script to render and deploy your website

echo "🔨 Rendering website..."
cd "$(dirname "$0")"

# Try to render using quarto command if available
if command -v quarto &> /dev/null; then
    quarto render
elif command -v R &> /dev/null; then
    R -e "quarto::quarto_render()"
else
    echo "❌ Please render in RStudio first"
    echo "   File → Open Project → website.Rproj"
    echo "   Then click 'Render Website' button"
    exit 1
fi

echo "✅ Website rendered successfully!"
echo ""
echo "📦 Committing changes..."
git add docs/
git add *.qmd _quarto.yml styles.css

read -p "Enter commit message (or press Enter for default): " commit_msg
if [ -z "$commit_msg" ]; then
    commit_msg="Update website content and design"
fi

git commit -m "$commit_msg"

echo ""
echo "🚀 Pushing to GitHub..."
git push origin main

echo ""
echo "✨ Done! Your website will be live at https://andaleebr.github.io in 1-2 minutes"
