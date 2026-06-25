#!/bin/bash
echo ""
echo "========================================="
echo "    Codex Skills Directory - Starting"
echo "========================================="
echo ""

# Check Node.js
if ! command -v node &> /dev/null; then
    echo "  [ERROR] Node.js not found. Please install it first."
    echo ""
    echo "  Download: https://nodejs.org/"
    echo "  Install the LTS version, then run this script again."
    echo ""
    if [[ "$OSTYPE" == "darwin"* ]]; then
        open "https://nodejs.org/"
    elif command -v xdg-open &> /dev/null; then
        xdg-open "https://nodejs.org/"
    fi
    exit 1
fi

echo "  [1/3] Node.js ready ($(node -v))"

# Install dependencies if needed
if [ ! -d "node_modules" ]; then
    echo "  [2/3] First run - installing dependencies (about 30 seconds)..."
    npm install --prefer-offline 2>/dev/null || npm install
else
    echo "  [2/3] Dependencies ready"
fi

echo "  [3/3] Starting website..."
echo ""

# Open browser after 3 seconds
(
    sleep 3
    if [[ "$OSTYPE" == "darwin"* ]]; then
        open "http://localhost:5173"
    elif command -v xdg-open &> /dev/null; then
        xdg-open "http://localhost:5173"
    elif command -v wslview &> /dev/null; then
        wslview "http://localhost:5173"
    fi
) &

# Start VitePress
npm run docs:dev