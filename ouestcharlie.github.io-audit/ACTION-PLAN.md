# Action plan: ouestcharlie.github.io

All paths are relative to `docs/`. Last updated: 2026-10-11.

## Done (2026-10-11)
Committed in `7a192cc` (not pushed yet): social image, author, typo, logo, homepage H1. Uncommitted: post descriptions, darktable post.

- ✅ **Install post social image**: `image:` now points to the poster JPG `OuEstCharlieWoof_2026-09-01.jpg` instead of the 9 MB MP4.
- ✅ **Author entity**: `_config.yml` `author:` is `{name: Antoine Hue, url: https://github.com/tonio73}`, and the footer prints `© Antoine Hue`. Note: jekyll-seo-tag 2.9 always names the publisher after the author; an "OuEstCharlie" Organization publisher would need a custom JSON-LD block (see #8).
- ✅ **Typo "your your"** fixed in `index.md` and the install post intro.
- ✅ **Lightweight logo**:
  - `woof_icon_64.png` (11 KB, cropped from `woof_icon_800.png`, transparent) is used as the header logo (`width/height="32"`) and the favicon.
  - `woof_large_400.png` (34 KB, 256 colours) replaces the 669 KB logo in `index.md` and `_includes/tryitnow.md`, with `width/height="200"`.
  - `woof_large_850.png` is now used only for `logo:`/`image:` (social previews and schema), so browsers never download it.
  - Logo weight on a first visit: about 45 KB instead of 669 KB on the homepage, and 11 KB on posts without the CTA block.
- ✅ **Post descriptions**: `description:` (143–153 chars) added to all 8 posts, including the darktable draft.
- ✅ **Homepage H1** added.
- ✅ **darktable post** (2026-10-20, unpublished): description, real cover/social image, storage-settings screenshot, setting names aligned with the darktable manual, no TODOs left.

## High (this week)
1. **Homepage**: ~~add an H1~~ (done), a 40–60 word definition of Woof, a features/clients/privacy section (~400 words), a "Start here" list of links, and `image:` in `index.md` front matter. *1–2 h*
2. **Optional: `apple-touch-icon.png`** (180 px, from `woof_icon_800.png`) for iOS home-screen bookmarks. *5 min*

## Medium (this month)
3. Shorten the 4 titles over 80 characters, and the homepage title (113 chars; use a shorter `description` or a `title:` in `index.md`).
4. Add an `/about/` page (who, why, project status, links) and set `header_pages: [about.md, <install page>]` in `_config.yml`.
5. Add a "Related posts" block to the post layout (or hand-curated links at the end of each post). Make sure the comparison post and the "Why" post receive internal links.
6. Screenshots: compress `ClaudeHowTo/016.png` (936 KB) and the other PNGs (WebP or 256-colour PNG, like the logo). In `_includes/post-image.html`, replace `max-height=…` with an inline style and add `loading="lazy" decoding="async"`.
7. Add `preload="none"` to the 4 `<video>` tags (they already have posters).
8. Add a `SoftwareApplication` JSON-LD block for Woof (home + install post). It can also carry an "OuEstCharlie" Organization publisher.
9. Add `404.html` and `llms.txt`.

## Low (backlog)
10. ~~Before publishing the darktable post: replace `image: /assets/woof_large_850.png` with a real screenshot.~~ Done: cover is `/darktable+Woof/Woof-darktable-lighttable_side-by-side.jpg`.
11. Add `VideoObject` schema to posts with videos; consider mirroring the demo videos on YouTube.
12. Use lowercase slugs for future posts; optionally add lowercase `redirect_from` aliases for the two mixed-case URLs.
13. Normalise categories (`how-to` / `howto`, `MacOs`).
14. Override minima's grey date and link colours for WCAG AA contrast.
15. Merge `assets/css/style.css` into `main.scss` to save one render-blocking request.
16. Off-site: submit Woof to MCP directories and awesome-lists.

## Monitoring
- After deploying, request reindexing of the homepage and install post in Search Console. Check the install post's social card with a preview tool such as opengraph.xyz.
- Re-run Lighthouse (mobile) on the live homepage and `/2026/05/13/claude-how-to-step-by-step/` after pushing. Baseline (live): 5.2 s and 10.4 s LCP. Local build after corrections: 1.4 s and 5.2 s. The how-to needs #6.
