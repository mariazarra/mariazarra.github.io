#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-4000}"

if [ -x ".tools/jekyll-env/bin/jekyll" ]; then
  JEKYLL=".tools/jekyll-env/bin/jekyll"
  export GEM_HOME="$PWD/.tools/jekyll-env/lib/ruby/gems/3.3.0"
  export GEM_PATH="$PWD/.tools/jekyll-env/lib/ruby/gems/3.3.0:$PWD/.tools/jekyll-env/share/rubygems"
elif command -v jekyll >/dev/null 2>&1; then
  JEKYLL="jekyll"
else
  echo "Jekyll was not found. Create the conda environment first:"
  echo 'conda env create -f environment.yml'
  exit 1
fi

echo "Serving http://localhost:${PORT}"
"$JEKYLL" serve --host 127.0.0.1 --port "$PORT"
