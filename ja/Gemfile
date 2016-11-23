source 'https://rubygems.org'
gem 'jekyll'
gem 'jekyll-paginate'
gem 'jekyll-gist'
gem 'jekyll-multiple-languages-plugin'


require 'json'
require 'open-uri'
versions = JSON.parse(open('https://pages.github.com/versions.json').read)

gem 'github-pages', versions['github-pages']
