#!/bin/bash
# =============================================================================
# Claude Code Landing Page Toolkit - Setup Script
# =============================================================================
# This script installs the essential skills, plugins, and CLI tools needed
# to create beautiful landing pages with Claude Code.
#
# Based on tutorials from Chase AI and Michia Rohrssen.
#
# PREREQUISITES:
#   - Node.js (v18+) installed: https://nodejs.org
#   - Claude Code installed: npm install -g @anthropic-ai/claude-code
#   - A Claude API subscription (Max or Pro plan recommended)
#
# USAGE:
#   chmod +x setup.sh
#   ./setup.sh
#
# The script will walk you through each step. You can skip any you don't need.
# =============================================================================

set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color
BOLD='\033[1m'

print_header() {
    echo ""
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${BOLD}  $1${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
}

print_step() {
    echo -e "\n${GREEN}[STEP]${NC} $1"
}

print_info() {
    echo -e "${YELLOW}[INFO]${NC} $1"
}

print_skip() {
    echo -e "${YELLOW}[SKIP]${NC} $1"
}

ask_yes_no() {
    while true; do
        read -p "$1 (y/n): " yn
        case $yn in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Please answer y or n.";;
        esac
    done
}

# =============================================================================
print_header "Claude Code Landing Page Toolkit Setup"
# =============================================================================

echo ""
echo "This script will install the essential tools for creating"
echo "beautiful landing pages with Claude Code."
echo ""
echo "It covers 4 categories:"
echo "  1. Terminal Setup (status line for context monitoring)"
echo "  2. Essential Plugins (Superpowers, Context7, Sequential Thinking)"
echo "  3. Claude Code Skills (frontend-design, skill-creator, etc.)"
echo "  4. CLI Tools (GitHub CLI, Vercel CLI, Playwright, FFmpeg)"
echo ""
echo "You'll be asked before each installation. Nothing runs without your OK."
echo ""

if ! ask_yes_no "Ready to begin?"; then
    echo "No worries! Run this script again when you're ready."
    exit 0
fi

# =============================================================================
print_header "PART 1: Terminal Setup"
# =============================================================================

# --- CC Status Line ---
print_step "CC Status Line (context window monitor)"
echo "  This adds a status bar showing your context usage, cost, and model."
echo "  CRITICAL for avoiding context overload (Claude gets dumb past ~50%)."
echo ""
echo "  Command: npx cc-status-line@latest"
echo ""
if ask_yes_no "  Install CC Status Line?"; then
    npx cc-status-line@latest || echo -e "${RED}  Failed - you can run this manually later${NC}"
    echo -e "${GREEN}  Done! Run 'npx cc-status-line@latest' before each Claude session.${NC}"
else
    print_skip "Skipping CC Status Line"
fi

# =============================================================================
print_header "PART 2: Essential Plugins (installed inside Claude Code)"
# =============================================================================

echo ""
echo "The next 3 items are Claude Code plugins. They need to be installed"
echo "from INSIDE Claude Code using the /plugin command."
echo ""
echo "We'll print the instructions for each one."
echo ""

# --- Superpowers ---
print_step "Superpowers Plugin"
echo ""
echo "  THE most important plugin. Gives Claude Code:"
echo "    - Sub-agent driven development (protects your context window)"
echo "    - Brainstorming workflow (spec-driven development)"
echo "    - Implementation planning with line-by-line code changes"
echo "    - Automatic code review and systematic debugging"
echo ""
echo "  HOW TO INSTALL (do this inside Claude Code):"
echo "    1. Type: /plugin"
echo "    2. Search for: superpowers"
echo "    3. Select it and choose 'Install for user scope'"
echo "    4. Also install 'code-simplifier' while you're there"
echo "    5. Type: /exit and restart Claude Code"
echo ""
echo "  HOW TO USE:"
echo "    - /superpowers:brainstorm  -> Design your landing page spec"
echo "    - /superpowers:write-plan  -> Create implementation plan"
echo "    - /superpowers:execute-plan -> Build it with sub-agents"
echo ""
read -p "  Press Enter when you've noted this down..."

# --- Context7 ---
print_step "Context7 Plugin (up-to-date API docs)"
echo ""
echo "  Prevents Claude from hallucinating outdated APIs/libraries."
echo "  Gives instant access to current documentation."
echo ""
echo "  HOW TO INSTALL (inside Claude Code):"
echo "    1. Type: /plugin"
echo "    2. Search for: context7"
echo "    3. Select it and choose 'Install for everyone'"
echo "    4. Restart Claude Code"
echo ""
read -p "  Press Enter when you've noted this down..."

# --- Sequential Thinking ---
print_step "Sequential Thinking MCP Server"
echo ""
echo "  Upgrades Claude's reasoning with chain-of-thought thinking."
echo "  Results in deeper insights and better code architecture."
echo ""
echo "  HOW TO INSTALL (inside Claude Code):"
echo "    1. Open Claude Code"
echo "    2. Type: please install sequential thinking MCP server"
echo "    3. Claude will find and install it automatically"
echo "    4. Restart Claude Code"
echo ""
read -p "  Press Enter when you've noted this down..."

# =============================================================================
print_header "PART 3: Claude Code Skills"
# =============================================================================

echo ""
echo "Skills are text prompts that teach Claude how to do specific things."
echo "These are installed via /plugin inside Claude Code."
echo ""

# --- Frontend Design ---
print_step "Frontend Design Skill"
echo ""
echo "  Dramatically improves Claude's UI/UX output quality."
echo "  Without this, you get generic 'AI slop'. With it, professional designs."
echo ""
echo "  HOW TO INSTALL (inside Claude Code):"
echo "    1. Type: /plugin"
echo "    2. Search for: frontend-design"
echo "    3. Install it"
echo "    4. Use it with: /frontend-design"
echo "    5. Or just mention 'use the frontend design skill' in your prompt"
echo ""
read -p "  Press Enter when you've noted this down..."

# =============================================================================
print_header "PART 4: CLI Tools"
# =============================================================================

# --- GitHub CLI ---
print_step "GitHub CLI (for pushing code to repos)"
echo "  Required for deploying your site to Vercel."
echo ""
if ask_yes_no "  Install GitHub CLI?"; then
    if command -v gh &> /dev/null; then
        echo -e "${GREEN}  GitHub CLI already installed: $(gh --version | head -1)${NC}"
    elif command -v brew &> /dev/null; then
        brew install gh
        echo -e "${GREEN}  Installed! Now run: gh auth login${NC}"
    else
        echo "  Install from: https://cli.github.com"
        echo "  Or tell Claude Code: 'install the GitHub CLI for me'"
    fi
else
    print_skip "Skipping GitHub CLI"
fi

# --- Vercel CLI ---
print_step "Vercel CLI (for deploying your landing page)"
echo "  Free hosting with generous free tier. One-click deploys from GitHub."
echo ""
if ask_yes_no "  Install Vercel CLI?"; then
    if command -v vercel &> /dev/null; then
        echo -e "${GREEN}  Vercel CLI already installed: $(vercel --version 2>/dev/null || echo 'installed')${NC}"
    else
        npm install -g vercel
        echo -e "${GREEN}  Installed! Now run: vercel login${NC}"
    fi
else
    print_skip "Skipping Vercel CLI"
fi

# --- Playwright ---
print_step "Playwright CLI (for testing your website automatically)"
echo "  Lets Claude spin up Chrome tabs to test your site."
echo ""
if ask_yes_no "  Install Playwright?"; then
    npm install -g playwright
    npx playwright install chromium
    echo ""
    echo "  Also install the Playwright skill inside Claude Code:"
    echo "    Run: playwright cli install skills"
    echo -e "${GREEN}  Installed!${NC}"
else
    print_skip "Skipping Playwright"
fi

# --- FFmpeg ---
print_step "FFmpeg (for video/animation manipulation)"
echo "  Useful for scroll animations, looping backgrounds, frame extraction."
echo ""
if ask_yes_no "  Install FFmpeg?"; then
    if command -v ffmpeg &> /dev/null; then
        echo -e "${GREEN}  FFmpeg already installed: $(ffmpeg -version 2>&1 | head -1)${NC}"
    elif command -v brew &> /dev/null; then
        brew install ffmpeg
        echo -e "${GREEN}  Installed!${NC}"
    else
        echo "  Install from: https://ffmpeg.org/download.html"
        echo "  Or via Homebrew: brew install ffmpeg"
    fi
else
    print_skip "Skipping FFmpeg"
fi

# =============================================================================
print_header "SETUP COMPLETE!"
# =============================================================================

echo ""
echo -e "${GREEN}${BOLD}Your Claude Code landing page toolkit is ready!${NC}"
echo ""
echo "QUICK RECAP - What's installed/noted:"
echo ""
echo "  Terminal:"
echo "    - CC Status Line (run 'npx cc-status-line@latest' before each session)"
echo ""
echo "  Plugins (install via /plugin inside Claude Code):"
echo "    - Superpowers (sub-agent development)"
echo "    - Context7 (up-to-date API docs)"
echo "    - Sequential Thinking MCP (better reasoning)"
echo "    - Code Simplifier"
echo ""
echo "  Skills (install via /plugin inside Claude Code):"
echo "    - Skill Creator (test & optimize skills)"
echo "    - Frontend Design (better UI/UX output)"
echo ""
echo "  CLI Tools:"
echo "    - GitHub CLI (code hosting)"
echo "    - Vercel CLI (free deployment)"
echo "    - Playwright (automated testing)"
echo "    - FFmpeg (video/animation)"
echo ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo "NEXT STEP: See the TUTORIAL.md file for how to actually build"
echo "your landing page, including a ready-to-use prompt template!"
echo ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
