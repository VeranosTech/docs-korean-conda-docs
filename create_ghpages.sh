
git checkout -B gh-pages
git rebase docs-korean
touch .nojekyll
echo '!build/' >> .gitignore
source activate conda-docs
cd docs
make html
cd ..
git add . -A
git commit -m "build"
git push -f origin gh-pages
git reset --hard HEAD
git clean -f
git checkout docs-korean
source deactivate