# This moved

Everything here now lives inside **[aipm-operator-stack](https://github.com/BrettZuke/aipm-operator-stack)**, in `skills`.

Clone that instead. It is kept up to date and scanned before every push; this copy is not.

```bash
git clone https://github.com/BrettZuke/aipm-operator-stack.git
```

---

# AI Partner Method — Claude Code Starter

53 skills that turn Claude Code into your personal business operator.

Built for AI Partner Method students. No coding required.

---

## What's Inside

**12 Business Skills** (built for coaches and creators)
- `/copy` — high-converting copy trained on the greatest copywriters in history
- `/script` — short-form video scripts for TikTok and Instagram
- `/viral` — 10 niche-specific viral video ideas backed by real trends
- `/scraper` — find and qualify leads across Instagram, YouTube, TikTok
- `/sdr` — outreach messages and 3-step follow-up sequences
- `/repurpose` — turn one piece of content into posts, emails, threads, captions
- `/analyze-creator` — scrape and analyze any creator's top-performing content
- `/cmo` — your full marketing strategy
- `/coo` — audit your operations and fix bottlenecks
- `/content-director` — full content calendar with topics and schedule
- `/head-of-development` — BD strategy and partnership opportunities
- `/head-of-strategy` — big decision frameworks with concrete recommendations

**27 Productivity Skills** (research, writing, tools)
- `/deep-research`, `/fact-checker`, `/prompt-optimizer`
- `/meeting-minutes-taker`, `/slides-creator`, `/transcript-fixer`
- `/youtube-downloader`, `/twitter-reader`, `/macos-cleaner`
- `/skill-creator` — build your own custom skills
- and more...

**14 Power User Skills** (for when you're ready to go deeper)
- `/systematic-debugging`, `/verification-before-completion`
- `/brainstorming`, `/writing-plans`, `/executing-plans`
- `/test-driven-development`, `/requesting-code-review`
- and more...

---

## Setup (5 minutes)

**Step 1 — Install Claude Code**

If you haven't already:
```bash
npm install -g @anthropic-ai/claude-code
```
Or download the VS Code extension: search "Claude Code" in the VS Code marketplace.

**Step 2 — Clone this repo**

```bash
git clone https://github.com/BrettZuke/ai-partner-method-claude-starter.git
cd ai-partner-method-claude-starter
```

**Step 3 — Run the installer**

```bash
chmod +x install.sh
./install.sh
```

This copies all 53 skills to `~/.claude/skills/` so they're available in every project.

**Step 4 — Fill in your details**

Open `CLAUDE.md` and fill in the blanks — your name, business, audience, tone. Claude reads this at the start of every session so it knows who you are and how to work with you.

**Step 5 — Get your API keys (optional but recommended)**

- **Tavily** (free) — gives Claude real-time web search: [tavily.com](https://tavily.com)
- **Apify** (free tier) — scraping for `/scraper` and `/analyze-creator`: [apify.com](https://apify.com)

Add them to a `.env` file (copy `.env.example` to get started).

---

## Using Your Skills

Once installed, open any project in VS Code with Claude Code and type:

```
/copy        → write high-converting copy
/script      → get a video script
/viral       → 10 viral video ideas for your niche
/scraper     → find leads
/sdr         → write outreach
/analyze-creator → analyze a competitor's content
```

Claude will ask you a few questions and get to work.

---

## The Other Repos

This starter pairs with the other AI Partner Method tools:

| Repo | What it does |
|---|---|
| [ai-partner-method-personal-page-build](https://github.com/BrettZuke/ai-partner-method-personal-page-build) | Build your personal authority site in 30 mins |
| [ai-partner-method-email-toolkit](https://github.com/BrettZuke/ai-partner-method-email-toolkit) | Email copy system for every stage of the funnel |
| [ai-partner-method-direct-response-toolkit](https://github.com/BrettZuke/ai-partner-method-direct-response-toolkit) | VSLs, sales pages, ads, 85 headline templates |

---

## License

MIT — use freely, modify for your needs.

Skills sourced from [obra/superpowers](https://github.com/obra/superpowers) and [daymade/claude-code-skills](https://github.com/daymade/claude-code-skills) — credit to those authors.
