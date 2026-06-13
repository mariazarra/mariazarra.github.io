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

1. Copy `_posts/2026-06-13-why-tiny-observations-matter.md`.
2. Rename it using this pattern: `YYYY-MM-DD-post-title.md`.
3. Change the title, excerpt, and body text.
4. Jekyll will add it to the blog page automatically.
