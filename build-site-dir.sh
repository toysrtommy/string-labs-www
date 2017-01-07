# This script fetches a local copy of _site directory from the gh-pages branch
# so that any new local build can be pushed to gh-pages branch for auto publishing

mkdir _site
cd _site
git init
git remote add origin git@github.com:string-labs/www.git
git checkout -b gh-pages
git pull origin gh-pages
