bundle exec jekyll build
if [ $? -eq 0 ]; then
    cd _site
    git add .
    git commit -a -m "New build" 
    git push --set-upstream origin gh-pages

fi
