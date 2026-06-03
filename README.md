# biopzhang.github.io

Personal academic website for **Pengzhi Zhang**, built with [Jekyll](https://jekyllrb.com/) and the [al-folio](https://github.com/alshedivat/al-folio) theme. Hosted on [GitHub Pages](https://pages.github.com/).

**Live site:** [https://biopzhang.github.io](https://biopzhang.github.io)

---

## Table of Contents

- [Local Development](#local-development)
- [Site Structure Overview](#site-structure-overview)
- [Updating Components](#updating-components)
  - [Profile & About Page](#profile--about-page)
  - [Publications](#publications)
  - [News / Announcements](#news--announcements)
  - [Blog Posts](#blog-posts)
  - [CV](#cv)
  - [Research / Projects](#research--projects)
  - [Navigation & Site Settings](#navigation--site-settings)
  - [Styling & Theming](#styling--theming)
  - [Social Links](#social-links)
- [Deployment](#deployment)
- [License](#license)

---

## Local Development

### Prerequisites

- **Ruby** (via Homebrew: `brew install ruby`)
- **Bundler** (`gem install bundler`)
- **ImageMagick** (`brew install imagemagick`) — used for responsive image generation

### Setup

```bash
git clone git@github.com:biopzhang/biopzhang.github.io.git
cd biopzhang.github.io
bundle install
```

### Run locally

```bash
bundle exec jekyll serve
```

The site will be available at **http://127.0.0.1:4000**.

> **Note:** If you modify `_config.yml`, you must restart the server for the changes to take effect.

---


## Site Structure Overview

```
.
├── _bibliography/
│   └── papers.bib            # All publications (BibTeX)
├── _data/
│   ├── coauthors.yml         # Co-author names and links
│   ├── cv.yml                # CV content (education, experience)
│   ├── repositories.yml      # GitHub repos to display
│   └── venues.yml            # Journal abbreviation badges and colors
├── _layouts/
│   └── bib.html              # Publication entry layout template
├── _news/
│   └── announcement_*.md     # News/announcement items
├── _pages/
│   ├── about.md              # Homepage (profile, bio, selected papers)
│   ├── cv.md                 # CV page
│   ├── projects.md           # Research/projects page
│   ├── publications.md       # Full publications list
│   ├── repositories.md       # GitHub repositories page
│   └── teaching.md           # Teaching page
├── _posts/
│   └── *.md                  # Blog posts
├── _sass/                    # SCSS stylesheets
├── assets/
│   ├── img/                  # Images (profile pic, previews, etc.)
│   │   └── publication_preview/  # Thumbnail images for publications
│   └── pdf/                  # PDF files (papers, posters, etc.)
└── _config.yml               # Main site configuration
```

---

## Updating Components

### Profile & About Page

**File:** `_pages/about.md`

This is your **homepage**. Edit the front matter and body content:

```yaml
---
layout: about
title: About
permalink: /
subtitle: <a href="...">Researcher</a>.

profile:
  align: right
  image: prof_pic.jpg          # Place image in assets/img/
  image_circular: true
  address: >
    <p>Your Institution</p>
    <p>Your Address</p>

news: true                     # Show news section
latest_posts: true             # Show recent blog posts
selected_papers: true          # Show papers with selected={true}
social: true                   # Show social icons
---

Your bio text goes here in Markdown.
```

**To update your profile photo:** replace `assets/img/prof_pic.jpg`.

---

### Publications

**Files:**
- `_bibliography/papers.bib` — all publication entries
- `_pages/publications.md` — page configuration
- `_data/venues.yml` — journal badge colors
- `_data/coauthors.yml` — co-author link mappings

#### Adding a new publication

Add a BibTeX entry to `_bibliography/papers.bib`:

```bibtex
@article{key2025,
  year      = {2025},
  title     = {Your Paper Title},
  author    = {Zhang, Pengzhi and Coauthor, Name},
  journal   = {Journal Name},
  doi       = {10.xxxx/xxxxx},
  abstract  = {Paper abstract text...},
  abbr      = {JABBR},       % Badge abbreviation shown on the left
  bibtex_show = {true},      % Show "Bib" button
  selected  = {true},        % Feature on homepage
  preview   = {image.png},   % Thumbnail (place in assets/img/publication_preview/)
  pdf       = {paper.pdf},   % PDF link (place in assets/pdf/ or use full URL)
  code      = {https://github.com/...},  % Code link
  html      = {https://...}, % HTML link
}
```

#### Updating the year list

When adding publications from a new year, add the year to the `years` array in `_pages/publications.md`:

```yaml
years: [2026, 2025, 2024, 2023, 2022, 2021, 2020, 2018, 2017, 2015, 2013]
```

#### Available BibTeX keywords for buttons

| Keyword        | Effect                                                      |
|----------------|-------------------------------------------------------------|
| `abbr`         | Badge label on the left (matches `_data/venues.yml`)        |
| `abstract`     | Adds "Abs" button with expandable abstract                  |
| `bibtex_show`  | Adds "Bib" button with expandable BibTeX                    |
| `pdf`          | "PDF" button (full URL, or filename in `assets/pdf/`)       |
| `html`         | "HTML" button linking to the URL                            |
| `code`         | "Code" button linking to the URL                            |
| `arxiv`        | "arXiv" button (provide only the arXiv ID, e.g., `2011.07639`) |
| `supp`         | "Supp" button (full URL, or filename in `assets/pdf/`)      |
| `blog`         | "Blog" button linking to the URL                            |
| `poster`       | "Poster" button (full URL, or filename in `assets/pdf/`)    |
| `slides`       | "Slides" button (full URL, or filename in `assets/pdf/`)    |
| `website`      | "Website" button linking to the URL                         |
| `selected`     | Set to `{true}` to feature on the homepage                  |
| `preview`      | Thumbnail image (place in `assets/img/publication_preview/`) |

#### Adding a journal badge color

Edit `_data/venues.yml`:

```yaml
"JABBR":
  url: https://journal-website.com/
  color: "#00369f"
```

#### Adding co-author links

Edit `_data/coauthors.yml`:

```yaml
"LastName":
  - firstname: ["FirstName", "F.", "F. M."]
    url: https://their-website.com
```

---

### News / Announcements

**Directory:** `_news/`

Create a new Markdown file (e.g., `announcement_5.md`):

```markdown
---
layout: post
date: 2025-06-15 08:00:00-0500
inline: true
---

Your announcement text here. Supports **Markdown** and :emoji:.
```

News items are displayed on the homepage in reverse chronological order. The number shown is controlled by `limit` in `_config.yml`:

```yaml
announcements:
  enabled: true
  scrollable: true
  limit: 5
```

---

### Blog Posts

**Directory:** `_posts/`

Create a new file named `YYYY-MM-DD-title.md`:

```markdown
---
layout: post
title: Your Post Title
date: 2025-06-15 12:00:00
description: A brief description for previews.
tags: [knowledge, links]
categories:
---

Post content in Markdown.
```

**Display tags:** Only posts with tags listed in `_config.yml` → `display_tags` will appear on the blog front page:

```yaml
display_tags: ['knowledge', 'links', 'code']
```

---

### CV

**File:** `_data/cv.yml`

The CV is structured as a YAML list of sections. Each section has a `title`, `type`, and `contents`:

```yaml
- title: Education
  type: time_table
  contents:
    - title: PhD
      institution: University Name
      year: 2016
      description:
        - Field of study
        - title: Research topics
          contents:
            - Topic 1
            - Topic 2

- title: Experience
  type: time_table
  contents:
    - title: Job Title
      institution: Organization
      year: 2022 - present
      description:
        - Description of work
```

---

### Research / Projects

**File:** `_pages/projects.md`

Projects are a Jekyll collection. To add a project, create a new Markdown file in a `_projects/` directory:

```markdown
---
layout: page
title: Project Name
description: Brief project description.
img: assets/img/project-thumb.jpg
importance: 1
category: work
---

Project details in Markdown.
```

The `category` field maps to the `display_categories` in `_pages/projects.md`. The `importance` field controls sort order (lower = higher priority).

---

### Navigation & Site Settings

**File:** `_config.yml`

#### Page navigation order

Each page in `_pages/` controls its own nav entry via its front matter:

```yaml
nav: true         # Include in navbar
nav_order: 1      # Position (lower = further left)
```

#### Key config settings

| Setting | Description |
|---------|-------------|
| `title` | Site title (if blank, uses `first_name last_name`) |
| `first_name` / `last_name` | Your name |
| `description` | Site meta description for SEO |
| `url` | Base URL (e.g., `https://biopzhang.github.io`) |
| `max_width` | Maximum content width (default: `900px`) |
| `enable_darkmode` | Enable light/dark mode toggle |
| `enable_math` | Enable MathJax for math typesetting |

---

### Styling & Theming

**Files:**
- `_sass/_themes.scss` — Theme color variables (light/dark mode)
- `_sass/_variables.scss` — Color palette definitions
- `_sass/_base.scss` — Base component styles
- `assets/css/main.scss` — Main stylesheet entry point

To change the theme color, edit `--global-theme-color` in `_sass/_themes.scss`.

---

### Social Links

**File:** `_config.yml`

Social links are defined in the config. Set any to your username/ID to display the icon:

```yaml
github_username: biopzhang
twitter_username: robinustc
linkedin_username: pengzhi-zhang-69534536
scholar_userid: r5NbsgYAAAAJ
orcid_id: 0000-0001-6920-1490
research_gate_profile: Pengzhi-Zhang-2
```

