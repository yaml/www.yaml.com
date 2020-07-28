# yaml.com

This is the source repository for [yaml.com](https://yaml.com) - the official website of YAML LLC.

## About

**YAML LLC** provides professional maintenance and enterprise support for YAML infrastructure through the YES (YAML Enterprise Sustainability) program.

## Site Structure

This site is built with [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/).

- **Landing Page**: Professional homepage with YES program overview
- **YES Program**: Detailed information about enterprise sponsorship tiers
- **Projects**: Documentation for go-yaml, pyyaml, libyaml, and YAMLScript
- **Resources**: FAQ, glossary, cheatsheet, and learning materials
- **Blog**: News and updates from YAML LLC
- **About**: Team information and contact details

## Development

### Prerequisites

- Python 3.12+
- pip

### Local Development

1. Clone the repository:
   ```bash
   git clone https://github.com/yaml/www.yaml.com.git
   cd www.yaml.com
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Run the local development server:
   ```bash
   mkdocs serve
   ```

4. Open your browser to `http://localhost:8000`

### Building

To build the static site:

```bash
mkdocs build
```

The built site will be in the `site/` directory.

## Deployment

The site is automatically deployed to GitHub Pages via GitHub Actions when changes are pushed to the `master` branch.

- **Source Branch**: `master` - Contains MkDocs source files
- **Deployment Branch**: `gh-pages` - Contains built static site
- **Domain**: yaml.com (configured via CNAME)

## Contributing

### Content Updates

To update content:

1. Create a new branch
2. Edit markdown files in `docs/`
3. Test locally with `mkdocs serve`
4. Submit a pull request

### Blog Posts

Blog posts go in `docs/blog/posts/` with this frontmatter format:

```yaml
---
date: 2025-12-10
authors:
  - ingy
categories:
  - announcements
tags:
  - yaml
---

# Post Title

Post excerpt...

<!-- more -->

Full content...
```

### Adding Pages

1. Create markdown file in appropriate `docs/` subdirectory
2. Add to navigation in `mkdocs.yml` if needed

## Project Structure

```
www.yaml.com/
├── .github/
│   └── workflows/
│       └── deploy.yml          # GitHub Actions deployment
├── docs/                       # Content root
│   ├── index.md               # Landing page
│   ├── yes/                   # YES Program pages
│   ├── projects/              # Project documentation
│   ├── services/              # Services page
│   ├── resources/             # FAQ, glossary, cheatsheet
│   ├── blog/                  # Blog posts
│   ├── about/                 # About & team pages
│   ├── assets/                # Static assets
│   │   ├── images/
│   │   ├── stylesheets/
│   │   └── javascripts/
│   └── CNAME                  # GitHub Pages domain
├── overrides/                 # Theme customizations (future)
├── mkdocs.yml                 # MkDocs configuration
├── requirements.txt           # Python dependencies
└── ReadMe.md                  # This file
```

## License

Content is Copyright 2020-2025 Ingy dot Net / YAML LLC.

## Contact

- **Website**: [yaml.com](https://yaml.com)
- **Email**: ingy@yaml.com
- **Twitter**: [@yamlnews](https://twitter.com/yamlnews)
- **GitHub**: [yaml](https://github.com/yaml)
