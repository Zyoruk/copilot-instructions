#!/bin/zsh
# Deploy Docsify site to GitHub Pages
git add .
git commit -m "Update docsify site"
git push origin main
git subtree push --prefix docs origin gh-pages
