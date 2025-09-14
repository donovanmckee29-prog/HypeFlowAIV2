#!/bin/bash

# Build script for HypeFlow AI Pro
echo "🚀 Building HypeFlow AI Pro..."

# Create public directory if it doesn't exist
mkdir -p public

# Copy main files to public directory
cp index.html public/
cp test.html public/

# Copy any other static assets if they exist
if [ -f "style.css" ]; then
    cp style.css public/
fi

if [ -f "script.js" ]; then
    cp script.js public/
fi

echo "✅ Build complete! Files copied to public directory:"
ls -la public/

echo "🎯 Ready for deployment!"
