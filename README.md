# Maria Zarra Psychology Blog

This is a very small Jekyll website for `mariazarra.github.io`.

## What is already on this computer

- Conda is installed: `/opt/anaconda3/bin/conda`
- Git is installed: `/usr/bin/git`
- The system Ruby/Bundler versions are old, so this project uses a conda-based
  Jekyll setup for local previewing.

## Start locally

From this folder:

```bash
conda env create -f environment.yml
conda activate mariazarra-site
gem install jekyll -v 4.3.4 --no-document
jekyll serve
```

Then open:

```text
http://localhost:4000
```

You can also use the included helper:

```bash
bash start-local.sh
```

If the named environment already exists, use:

```bash
conda env update -f environment.yml --prune
conda activate mariazarra-site
gem install jekyll -v 4.3.4 --no-document
```

## Publish on GitHub Pages

1. Create a GitHub repository named exactly `mariazarra.github.io`.
2. Put these files in that repository.
3. Commit and push to the `main` branch.
4. GitHub Pages should publish the root of the `main` branch automatically.

The live site will be:

```text
https://mariazarra.github.io
```

## Add a new post

The easiest way is to run:

```bash
bash new-post.sh "Your Blog Post Title"
```

That creates a new file inside `_posts/` with today's date and the correct
front matter. Open that file and write your post below the second `---`.

You can also create a post manually:

1. Copy `_drafts/blog-post-template.md`.
2. Paste the copy into `_posts/`.
3. Rename it using this pattern: `YYYY-MM-DD-post-title.md`.
4. Edit the front matter at the top:

```yaml
---
layout: post
title: "Your Blog Post Title"
date: 2026-06-13
topic: Psychology
author: Maria Zarra
image: /assets/img/tiny-observations-editorial.png
image_alt: Brief description of the article image.
excerpt: Write one clear sentence that summarizes the post for the blog page.
---
```

5. Write your article below the second `---`.
6. Jekyll will add it to the blog page automatically.

The most useful fields to change each time are `title`, `date`, `topic`,
`excerpt`, and the article body. If you do not have a custom image yet, leave
the existing image path in place and the site will keep its magazine layout.

Topic pages are generated from the `topic` field. To make a post appear on a
topic page, use the exact topic name, for example:

```yaml
topic: Mental Health at Work
```
