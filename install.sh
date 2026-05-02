#!/bin/bash

set -e

SKILLS_SRC="$(pwd)/skills"
SKILLS_DEST="$HOME/.claude/skills"
SETTINGS="$HOME/.claude/settings.json"

echo ""
echo "AI Partner Method — Claude Code Starter"
echo "========================================"
echo ""

# Check Claude Code is installed
if ! command -v claude &> /dev/null; then
  echo "✗ Claude Code not found."
  echo "  Install it: npm install -g @anthropic-ai/claude-code"
  echo "  Then run this script again."
  exit 1
fi

echo "✓ Claude Code found"

# Create skills directory if needed
mkdir -p "$SKILLS_DEST"

# Install skills
echo ""
echo "Installing skills..."
count=0
for skill_dir in "$SKILLS_SRC"/*/; do
  skill_name=$(basename "$skill_dir")
  dest="$SKILLS_DEST/$skill_name"

  if [ -d "$dest" ]; then
    echo "  ~ $skill_name (already exists, skipping)"
  else
    cp -r "$skill_dir" "$dest"
    echo "  ✓ $skill_name"
    count=$((count + 1))
  fi
done

echo ""
echo "Installed $count new skills."

# Add Tavily MCP if key is set
if [ -n "$TAVILY_API_KEY" ]; then
  echo ""
  echo "Setting up Tavily MCP..."
  if [ -f "$SETTINGS" ]; then
    python3 -c "
import json, sys
with open('$SETTINGS', 'r') as f:
    config = json.load(f)
if 'mcpServers' not in config:
    config['mcpServers'] = {}
if 'tavily' not in config['mcpServers']:
    config['mcpServers']['tavily'] = {
        'command': 'npx',
        'args': ['-y', 'tavily-mcp@latest'],
        'env': {'TAVILY_API_KEY': '$TAVILY_API_KEY'}
    }
    with open('$SETTINGS', 'w') as f:
        json.dump(config, f, indent=2)
    print('  ✓ Tavily MCP added')
else:
    print('  ~ Tavily already configured')
"
  fi
fi

# Set CLAUDE.md reminder
echo ""
echo "========================================"
echo "Done! One thing left:"
echo ""
echo "  Open CLAUDE.md and fill in your details."
echo "  Claude reads this at the start of every session."
echo ""
echo "Then open VS Code in this folder and type:"
echo "  /copy, /script, /viral, /scraper — to get started"
echo "========================================"
echo ""
