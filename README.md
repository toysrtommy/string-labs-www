### Quick Setup
```bash
# get the source code
git clone https://github.com/string-labs/www
cd www
# make sure you have all gem dependencies
bundle install
# run jekyll as a server that autogenerates the site HTML whenever the source files change
bundle exec jekyll serve --watch -V
```
Now view development site at http://0.0.0.0:4000/ 

### Deploy

After testing, commit and push to GitHub. GitHub Pages are setup to automatically generate the site.
*Always test the live site in case a dependency issue allows it to work locally but not in production.*

### Reference Information
* Jekyll https://jekyllrb.com
* Jekyll & Liquid Cheatsheet https://gist.github.com/smutnyleszek/9803727
* GitHub flavored online Kramdown editor https://jbt.github.io/markdown-editor
* Gems used by GitHub Pages https://pages.github.com/versions/
* Migrating from Jekyll 2 to 3 http://blog.virtuacreative.com.br/upgrade-jekyll-2-to-3-gh-pages.html
* Installing on Ubuntu (note: you now need Jekyll 3+) https://andrewvora.com/2015/11/03/setting-up-jekyll-ubuntu-gh-pages.html
* Installing on OS X http://jekyll.tips/jekyll-casts/install-jekyll-on-os-x/

### Problems with OS X 10.11+ and understanding Gems in more depth

After you upgraded to Sierra a bunch of your gems dependency links may have become broken. Furthermore,
this release modified security settings so that Gems cannot install to /usr/bin (some more information is
here, but read on https://jekyllrb.com/docs/troubleshooting/#jekyll-amp-mac-os-x-1011). The first problem
can cause all kinds of weirdness, while the second problem can prevent you installing new gems that you 
need. Another problem I encountered was the need to upgrade XCode before installing new gems...

The first thing to know is that there are system-wide and local gems. The system-wide gems are 
installed and listed using sudo e.g. 

```
sudo gem install jekyll
sudo gem list
```

and local ones without

```
gem install jekyll
gem list
```

You can try and remove all installed gems (so you can start again) by doing (insert sudo as needed) the following.
Regarding the system-wide gems, you can also check in /Library/Ruby and clean it out.

```
gem uninstall --all
```

Finally, note, as a result of running Homebrew, you might already have a bunch of executable links inside
/usr/local/bin that you need to cleanup. These include jekyll and rougify. Simple delete them if necessary.

Next I installed rvm, which allows you to run multiple versions of Ruby. Basically they are installed
into ~/.rvm, which is put onto your path ahead of the sytem ruby, and you can switch between them. 
Now when you run the gem install command without sudo, it installs it into the ruby that rvm is
currently running. 

This pretty much fixed things for me...



