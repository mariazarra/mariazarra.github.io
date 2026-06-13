#!/usr/bin/env bash
set -euo pipefail

TITLE="${1:-}"

if [ -z "$TITLE" ]; then
  echo 'Usage: bash new-post.sh "Your Blog Post Title"'
  exit 1
fi

DATE="$(date +%Y-%m-%d)"
SLUG="$(printf '%s' "$TITLE" \
  | tr '[:upper:]' '[:lower:]' \
  | sed -E 's/[^a-z0-9]+/-/g; s/^-+//; s/-+$//')"

POST="_posts/${DATE}-${SLUG}.md"

if [ -e "$POST" ]; then
  echo "Post already exists: $POST"
  exit 1
fi

cp _drafts/blog-post-template.md "$POST"
sed -i.bak "s/title: \"Your Blog Post Title\"/title: \"${TITLE//\"/\\\"}\"/" "$POST"
sed -i.bak "s/date: 2026-06-13/date: ${DATE}/" "$POST"
rm "${POST}.bak"

echo "Created $POST"
