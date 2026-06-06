# FF@15 marketing site

Static marketing landing page for [FF@15](https://ff15.gg) — a free League of Legends live overlay.

## What's in here

| File                   | Purpose                                          |
| ---------------------- | ------------------------------------------------ |
| `index.html`           | Full marketing page (self-contained HTML/CSS/JS) |
| `og-image.png`         | Open Graph / Twitter preview image (1200×630)    |
| `og-image.html`        | Source template for regenerating `og-image.png`  |
| `assets/ff15-logo.svg` | Standalone logo asset                            |
| `CNAME`                | Custom domain (`ff15.gg`) for GitHub Pages       |

No build step required — GitHub Pages serves the files as-is.

## Local preview

```bash
python3 -m http.server 8080
# open http://localhost:8080
```

## Publish to GitHub Pages

1. Create a repo (e.g. `ff15-site`) and push this directory:

   ```bash
   cd ~/Code/ff15-site
   git init
   git add .
   git commit -m "Initial FF@15 marketing site"
   git branch -M main
   git remote add origin git@github.com:YOUR_USER/ff15-site.git
   git push -u origin main
   ```

2. In the repo on GitHub: **Settings → Pages → Build and deployment**
   - Source: **GitHub Actions**
   - The included workflow (`.github/workflows/pages.yml`) deploys on every push to `main`.

3. **Custom domain** (optional): `CNAME` already points to `ff15.gg`. Add a DNS record:

   ```
   ff15.gg  CNAME  YOUR_USER.github.io
   ```

   Then enable **Enforce HTTPS** under Pages settings after DNS propagates.

## Regenerate OG image

After editing `og-image.html`:

```bash
./scripts/generate-og-image.sh
git add og-image.png && git commit -m "Update OG image"
```

Requires Node.js (uses Playwright via `npx`).
