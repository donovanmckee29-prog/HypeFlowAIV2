#!/bin/bash

echo "🚀 HypeFlow AI Pro Enhanced - Quick Deploy"
echo "=========================================="
echo ""

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "❌ Not in a git repository. Please run create-github-repo.sh first."
    exit 1
fi

# Check if remote origin exists
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "❌ No remote origin found. Please run create-github-repo.sh first."
    exit 1
fi

echo "📤 Deploying to GitHub..."
echo ""

# Add all changes
git add .

# Commit changes
git commit -m "Deploy: $(date '+%Y-%m-%d %H:%M:%S')"

# Push to GitHub
git push origin main

echo ""
echo "✅ Successfully deployed to GitHub!"
echo ""
echo "🌐 Your website will be available at:"
echo "   https://YOUR_USERNAME.github.io/hypeflow-ai-enhanced-pro"
echo ""
echo "🚀 For custom domain deployment:"
echo "   1. Vercel: https://vercel.com (recommended)"
echo "   2. Netlify: https://netlify.com"
echo "   3. See DEPLOYMENT.md for detailed instructions"
echo ""
echo "✨ Happy investing!"
