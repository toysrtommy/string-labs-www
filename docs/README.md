### Dependencies
1. https://jekyllrb.com/docs/installation/
..* Mac: http://jekyll.tips/jekyll-casts/install-jekyll-on-os-x/
..* Linux: getting ruby/gems working can be hard, ask Gustav for help or try: https://andrewvora.com/2015/11/03/setting-up-jekyll-ubuntu-gh-pages.html

### Quick Setup
```bash
git clone https://github.com/string-labs/www
cd website
bundle exec jekyll serve
```

View site at http://127.0.0.1:4000/ 

### Update github pages

This updates the destination folder used by github pages (remember to also commit modified source files).

1.
```bash
bundle exec jekyll build
```
2. git add docs
3. git commit -m "update jekyll build"
4. git push origin master
