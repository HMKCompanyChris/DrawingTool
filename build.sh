#!/bin/bash
# ─────────────────────────────────────────────────────────────────────────────
# HMK Drawing Overlay — One-shot macOS build script
# Run this once on your Mac in Terminal:
#
#   cd "$(dirname "$0")" && bash build.sh
#
# Requirements: Node.js 18+ (https://nodejs.org)
# Output: dist/HMK Drawing Overlay-1.0.0.dmg
# ─────────────────────────────────────────────────────────────────────────────

set -e

echo "📦  Installing dependencies…"
npm install

echo "🎨  Generating .icns icon…"
iconutil -c icns assets/HMK.iconset -o assets/icon.icns

echo "🔨  Building macOS DMG…"
npm run build

echo ""
echo "✅  Done! Your DMG is in the dist/ folder."
open dist/
