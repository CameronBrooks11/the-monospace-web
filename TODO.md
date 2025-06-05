# TODO

1. **Automate Build & Deploy**  
   - Add a GitHub Actions workflow to run `make` on push, deploy `index.html` to GitHub Pages, and cache the Nix store.

2. **Improve Metadata & SEO**  
   - Add `<meta name="description">`, `<meta property="og:…">`, and `<link rel="icon">` in `demo/template.html`.  
   - Ensure each page (when multi‐page) has a unique title/description.

3. **Accessibility & I18n**  
   - Add `aria-labels`, alt text for images, and visible focus states.  
   - Extract visible text into localized Markdown files and support multiple languages in `template.html`.

4. **Refine CSS & Responsiveness**  
   - Test on various screen sizes.  
   - Add automated screenshot tests (e.g., Puppeteer) to catch grid‐break issues.  
   - Use CSS variables for font scaling; offer a “compact” or adjustable character‐cell toggle.

5. **Enhance Debug Mode**  
   - Use URL hash (`#debug`) to enable the debug overlay.  
   - Display current cell width/height in console or as an on‐screen overlay.

6. **Modularize JavaScript**  
   - Refactor `src/index.js` into smaller functions or convert to TypeScript.  
   - Add unit tests (e.g., Jest) for `gridCellDimensions()` and padding logic.

7. **Add Live Reload**  
   - In `Makefile` or an npm script, set up a file watcher to rerun `make` on changes and reload the browser.  
   - Or use `entr`/inotify/`fswatch` to rerun Pandoc on Markdown/CSS edits.

8. **Improve Documentation**  
   - Expand the README with examples (e.g., customizing `--line-height`), a Troubleshooting section (common Pandoc/Nix errors), and a brief Contributing guide (branch naming, commit style, PR checklist).

9. **Content & Theming**  
   - Experiment with alternate monospace fonts or font‐pairing (e.g., serif headers + monospace body).  
   - Provide dark‐only or light‐only CSS overrides (beyond `prefers-color-scheme`).  
   - Create additional demo pages (e.g., blog posts, portfolio) to showcase the grid.

10. **Performance & Optimization**  
    - Minify CSS and inline critical CSS for faster rendering.  
    - Use `preload`/`preconnect` hints for external fonts.  
    - Optimize images (e.g., compress `castle.jpg`, convert to WebP).

11. **Versioning & Releases**  
    - Define a release cadence (patch bumps for minor fixes, minor bumps for features).  
    - Tag commits semantically (e.g., `v0.1.6`) so GitHub can generate release notes.

12. **Expand to Multiple Pages**  
    - Create a build script to process multiple `.md` files via Pandoc and `template.html`.  
    - Add a navigation menu (links to other pages) at the top.
