# The Monospace Web

Monospace fonts have a unique appeal—whether it’s terminal nostalgia or simply the clarity of fixed-width text.  
**The Monospace Web** is a minimal, Markdown-driven static site that lays everything out on a character-aligned grid using pure CSS and a tiny JavaScript helper. It’s a “70s-style” look for modern browsers, with full responsiveness and semantic HTML.

Live demo:  
<https://CameronBrooks11.github.io/the-monospace-web/>

---

## Quick Start

### Prerequisites

- [Nix (≥ 2.0)] or use [direnv](https://direnv.net/) to manage the environment.
- Git, Pandoc, jq, GNU make (all provided by the Nix shell below).

### 1. Enter the Development Shell

```bash
git clone https://github.com/CameronBrooks11/the-monospace-web.git
cd the-monospace-web
# If you use direnv:
direnv allow .
# Otherwise, run:
nix develop
```

Inside this shell you have all dependencies (pandoc, jq, make, live-server) available.

### 2. Build the Site

```bash
make
```

- Pandoc reads demo/index.md (Markdown + frontmatter)
- Injects CSS (src/reset.css, src/index.css) and the demo/template.html layout
- Outputs a single index.html at the repository root

### 3. Preview Locally