bundle exec jekyll build
if [ $? -eq 0 ]; then
    cd _site
    git commit -a -m "New build" 
    git push
fi
