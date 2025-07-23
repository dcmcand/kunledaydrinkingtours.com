#!/bin/bash

# Development script for Kunle Day Drinking Tours website

echo "🍷 Kunle Day Drinking Tours - Development Server"
echo "=============================================="

# Check if Hugo is installed
if ! command -v hugo &> /dev/null; then
    echo "❌ Hugo is not installed. Please install Hugo Extended first."
    echo "   Visit: https://gohugo.io/installation/"
    exit 1
fi

# Check Hugo version
echo "📦 Hugo version: $(hugo version)"

# Start development server
echo "🚀 Starting development server..."
echo "   Site will be available at: http://localhost:1313"
echo "   Press Ctrl+C to stop the server"
echo ""

hugo server -D --bind 0.0.0.0 --buildDrafts --buildFuture