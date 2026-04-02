# Claude Code Landing Page Toolkit

Everything you need to go from zero to a deployed, professional-looking landing page using Claude Code -- without any web design experience.

This toolkit was assembled from 10+ video tutorials by [Chase AI](https://www.youtube.com/@ChaseAI) and [Michia Rohrssen](https://www.youtube.com/@MichiaRohrssen), distilled into two files: an interactive setup script and a step-by-step tutorial.

---

## What's in This Repo

| File | What It Is | When to Use It |
|------|-----------|----------------|
| `setup.sh` | Interactive installer for tools, plugins, and skills | **First** -- run this before anything else |
| `TUTORIAL.md` | Step-by-step guide to building and deploying your landing page | **Second** -- follow this after setup is complete |

---

## Start Here: `setup.sh`

The setup script walks you through installing everything Claude Code needs to produce high-quality landing pages. It's interactive -- you'll be prompted before each install and can skip anything you don't need.

**What it covers (in order):**

1. **Terminal Setup** -- Installs CC Status Line, a status bar that shows your context window usage. This is critical because Claude's output quality degrades once context hits ~50%, and without this you're flying blind.

2. **Essential Plugins** -- Prints step-by-step instructions for installing three plugins from inside Claude Code:
   - **Superpowers** -- Orchestrates sub-agents so complex builds don't blow up your context window. Also adds brainstorming, planning, and code review workflows.
   - **Context7** -- Feeds Claude up-to-date documentation so it doesn't hallucinate outdated APIs.
   - **Sequential Thinking** -- Adds chain-of-thought reasoning for better architecture decisions.

3. **Claude Code Skills** -- Instructions for installing the **Frontend Design** skill, which is the single biggest upgrade for UI/UX quality. Without it, Claude produces generic output. With it, you get professional designs.

4. **CLI Tools** -- Optionally installs GitHub CLI, Vercel CLI, Playwright, and FFmpeg. These handle deployment, automated testing, and video/animation work respectively.

**How to run it:**

```bash
git clone https://github.com/mosesj1914/claude-landing-page-setup.git
cd claude-landing-page-setup
chmod +x setup.sh
./setup.sh
```

**Prerequisites:**
- macOS or Linux
- Node.js v18+ ([nodejs.org](https://nodejs.org))
- Claude Code installed (`npm install -g @anthropic-ai/claude-code`)
- A Claude API subscription (Max or Pro plan recommended)

---

## Then Follow: `TUTORIAL.md`

Once your tools are installed, open `TUTORIAL.md` for the actual build process. It covers a proven 4-step framework:

1. **Inspiration** -- Where to find premium website designs to use as references (Dribbble, Godly, Awwwards, Pinterest). You'll grab screenshots and HTML from sites you like so Claude has real context instead of vague prompts.

2. **Design (Optional)** -- How to use Google Stitch 2.0 (free) to iterate on mockups visually before spending any Claude tokens. This step alone saves significant time and money.

3. **Build** -- How to prompt Claude Code to actually construct the site. Includes a **ready-to-use prompt template** you can copy/paste and fill in with your own details. Also covers the "Clone & Refine" method (replicate a site you like, then customize it) and how to use 21st.dev for pre-built UI components.

4. **Deploy** -- Push to GitHub, connect to Vercel, and your site is live with a URL. Free tier covers most landing pages.

The tutorial also includes:
- Pro tips for animated hero sections using AI-generated video
- Context window management rules (when to clear, why never to compact)
- How to use Superpowers for multi-page or complex sites
- Quick reference tables for every tool and external design resource

---

## The Order

```
1. Run setup.sh          Install tools, plugins, and skills
        |
2. Open Claude Code      Install the plugins/skills noted during setup
        |                (Superpowers, Context7, Sequential Thinking,
        |                 Frontend Design -- all via /plugin)
        |
3. Restart Claude Code   Plugins activate after restart
        |
4. Follow TUTORIAL.md    Find inspiration, build your page, deploy it
```

---

## Video Sources

This toolkit is based on analysis of these tutorials:

**Chase AI:**
- [Claude Code + NotebookLM = CHEAT CODE](https://youtube.com/watch?v=usTeU4Uh0iM)
- [The 6 Levels of Claude Code Explained](https://youtube.com/watch?v=TUKYbUIXLOE)
- [10 Minute Masterclass: Claude Code Skills](https://youtube.com/watch?v=UtGszoiwrsQ)
- [10 CLI Tools That Make Claude Code UNSTOPPABLE](https://youtube.com/watch?v=uULvhQrKB_c)
- [Claude Code Skills Just Got a MASSIVE Upgrade](https://youtube.com/watch?v=UxfeF4bSBYI)
- [Claude Code + Nano Banana = Beautiful Animated Websites](https://youtube.com/watch?v=jQxHo9PC19Q)
- [Claude Code Now DESTROYS Web Design with Stitch 2.0](https://youtube.com/watch?v=qqcpiDXPCvY)
- [Stealing $10K Website Designs with Claude Code](https://youtube.com/watch?v=AaO6ujcx6TY)
- [Claude Code + Nano Banana 2 = Insane 3D Websites](https://youtube.com/watch?v=QutvJAP06-A)

**Michia Rohrssen:**
- [How to make Claude Code less dumb](https://youtube.com/watch?v=-O6MEtleOdA)
