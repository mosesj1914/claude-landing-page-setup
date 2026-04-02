# How to Build a Beautiful Landing Page with Claude Code

A step-by-step guide based on tutorials from Chase AI and Michia Rohrssen.

---

## Prerequisites

1. **Claude Code** installed and working (`npm install -g @anthropic-ai/claude-code`)
2. Run `setup.sh` to install the toolkit (or install items manually)
3. A **GitHub** account (free) - [github.com](https://github.com)
4. A **Vercel** account (free) - sign up with your GitHub credentials at [vercel.com](https://vercel.com)

---

## The 4-Step Framework

### Step 1: Find Inspiration

Don't start from scratch. Find websites you actually like and screenshot them.

**Where to find inspiration:**
- [Dribbble](https://dribbble.com) - search "landing page SaaS" or "landing page [your niche]"
- [Godly.website](https://godly.website) - infinite scroll of beautiful sites
- [Awwwards](https://www.awwwards.com) - bleeding-edge web design
- [Pinterest](https://pinterest.com) - search "landing page design" (great for visual browsing)

**What to grab:**
- Take 3-5 screenshots of the site you want to emulate
- Open Chrome DevTools (F12 or right-click > Inspect), go to Elements, copy the HTML
- Note the URL

### Step 2: (Optional) Design in Google Stitch First

[Google Stitch](https://stitch.google.com) is a free AI design tool powered by Gemini that gives you a visual canvas to iterate designs BEFORE bringing them to Claude Code. This saves tokens and time.

1. Go to Stitch, select "Web App", use Gemini 3.1 Pro
2. Upload your screenshot(s) as inspiration
3. Describe what you want: "Create a landing page for [your product] in the style of the screenshot"
4. Iterate using the canvas - regenerate, create variants, edit components
5. When happy, click **More > Export > Code to Clipboard**
6. Paste that code into Claude Code

### Step 3: Build with Claude Code

**Create your project folder:**
```bash
mkdir my-landing-page
cd my-landing-page
```

**Start Claude Code with the status line:**
```bash
npx cc-status-line@latest
claude
```

**Use the landing page prompt template below.**

### Step 4: Deploy for Free

1. Create a GitHub repo at github.com
2. Tell Claude: "Commit and push our code to this repo: [paste URL]"
3. Go to Vercel > Add New Project > Import your repo > Deploy
4. Your site is live!

---

## The Prompt Template

Copy this into Claude Code. Replace everything in [brackets] with your info.

```
I want to create a landing page for [YOUR PRODUCT/SERVICE NAME].

[DESCRIBE WHAT IT DOES IN 2-3 SENTENCES]

Target audience: [WHO IS THIS FOR?]
Primary call to action: [WHAT SHOULD VISITORS DO? e.g., "Start free trial", "Join waitlist", "Book a demo"]
Brand tone: [e.g., bold and energetic / clean and minimal / warm and friendly / professional and trustworthy]

Here are screenshots of a website I'd like to use as design inspiration:
[PASTE OR DRAG SCREENSHOTS HERE]

[OPTIONAL: Here is the HTML from that site for reference:]
[PASTE HTML IF YOU HAVE IT]

Please use the frontend-design skill. Create this as a React/Vite project.

Requirements:
- Modern, premium design that does NOT look like generic AI output
- Responsive (works on mobile and desktop)
- Smooth scroll animations
- Clear visual hierarchy with the CTA prominently placed
- A hero section that immediately communicates the value proposition

When finished, spin up a dev server so I can preview it.
```

---

## Pro Tips for Better Results

### Use 21st.dev for Components
[21st.dev](https://21st.dev) has pre-built UI components with copy-paste prompts:
- Go to the component you like (buttons, backgrounds, cards, etc.)
- Click "Copy Prompt"
- Paste directly into Claude Code
- It creates that exact component in your project

### Add Animated Backgrounds
For a "wow factor" hero section:
1. Create an image in **Nano Banana Pro** (via [Higgsfield](https://higgsfield.ai))
2. Turn it into a subtle video using **Kling 3.0** or **VO 3.1** (keep motion slow!)
3. Drop the MP4 and still image into your project folder
4. Tell Claude: "Use the MP4 for an animated hero background. Use the still image for mobile users."
5. FFmpeg can help loop short videos if needed

### Manage Your Context Window
- Watch the context percentage in your status bar
- When it hits ~50%, run `/clear` and start a fresh session
- Don't use `compact` - it makes things worse
- Let Superpowers handle complex tasks via sub-agents

### The Clone & Refine Method
Instead of describing what you want from scratch:
1. Find a premium website you love
2. Screenshot it + copy its HTML (Chrome DevTools > Elements)
3. Tell Claude: "Create a React/Vite project that replicates this website" + paste screenshots + HTML
4. Get the 80% clone, then customize: change messaging, colors, components
5. Add your own flair with 21st.dev components

### Use Superpowers for Complex Sites
For multi-page sites or sites with backend functionality:
```
/superpowers:brainstorm
```
Describe what you want. Superpowers will:
1. Ask clarifying questions
2. Propose approaches
3. Create a design spec
4. Write an implementation plan
5. Execute with sub-agents (preserving your context)

---

## Essential Tools Quick Reference

| Tool | What It Does | Install |
|------|-------------|---------|
| CC Status Line | Monitor context usage | `npx cc-status-line@latest` |
| Superpowers | Sub-agent development | `/plugin` > superpowers |
| Context7 | Up-to-date API docs | `/plugin` > context7 |
| Sequential Thinking | Better reasoning | Ask Claude to install it |
| Frontend Design | Better UI output | `/plugin` > frontend-design |
| GitHub CLI | Push code to repos | `brew install gh` |
| Vercel CLI | Deploy sites for free | `npm install -g vercel` |
| Playwright | Auto-test your site | `npm install -g playwright` |
| FFmpeg | Video/animation tools | `brew install ffmpeg` |

---

## External Design Tools (Not CLI - used in browser)

| Tool | What It Does | URL |
|------|-------------|-----|
| Google Stitch 2.0 | AI design mockups (free) | stitch.google.com |
| Nano Banana Pro | AI image generation | Via Higgsfield |
| Kling 3.0 / VO 3.1 | Image-to-video for hero animations | Via Higgsfield |
| 21st.dev | Pre-built UI components | 21st.dev |
| CodePen | UI component inspiration | codepen.io |
| Dribbble | Design inspiration | dribbble.com |
| Godly.website | Landing page gallery | godly.website |
| Awwwards | Premium web design showcase | awwwards.com |

---

## Video Sources

These tutorials informed this guide:

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
