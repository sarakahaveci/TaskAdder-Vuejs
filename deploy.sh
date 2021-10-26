#!/usr/bin/env sh
# abort on errors
set -e
npm run build
cd dist

git init 
git add -A
git commit -m "new deployment"

git push -f git@github.com:pragmatic-reviews/vue-pages.git master:gh-pages

cd -
# build