# FreedomHotspot/.github

**Status:** active

This is the public **org-level [`.github`](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/customizing-your-organizations-profile) repository** for the [FreedomHotspot](https://github.com/FreedomHotspot) GitHub organisation. It exists for one reason: GitHub renders [`profile/README.md`](profile/README.md) on the **public org page** at [github.com/FreedomHotspot](https://github.com/FreedomHotspot).

If you're looking for the FreedomHotspot product, that's at [freedomhotspot.com](https://www.freedomhotspot.com); to sign in, [wifimanagementportal.com](https://wifimanagementportal.com).

## What's in here

| Path | Purpose |
|---|---|
| [`profile/README.md`](profile/README.md) | The content rendered on [github.com/FreedomHotspot](https://github.com/FreedomHotspot). Updated when the public-facing org pitch changes. |
| `README.md` (this file) | Explains the repo to anyone who clicks through to it. |

## Sister repo

Org-level templates that should apply across our **private** repositories — `CONTRIBUTING.md`, pull-request templates, issue templates, and so on — live in a separate, **private** `.github-private` repository. GitHub's `.github` lookup falls back from a private repo's own `.github/` directory to the org-level `.github-private` repo for any private member repo. This split keeps the public profile in this repository minimal and out of view of contributor templates that aren't relevant to outside readers.

## Editing the public profile

1. Open a pull request against `main` modifying `profile/README.md`.
2. Once merged, the rendered content updates on the org page within a few minutes.

## Related repos

| Repo | Relationship |
| --- | --- |
| [`.github-private`](https://github.com/FreedomHotspot/.github-private) | The same idea for private repos — CONTRIBUTING, PR template, STANDARDS |

## What this does not do

- **No community-health defaults for the working repos.** Every FreedomHotspot
  working repo is private, and GitHub only applies a public `.github` repo's
  defaults to *public* repos. `.github-private` is the one that matters.
- **No code, no CI, no release process.** It exists to render one Markdown file
  on the org page.
