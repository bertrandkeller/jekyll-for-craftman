source 'https://rubygems.org'
ruby "2.3.1"

require 'json'
require 'open-uri'
require "mini_magick"

gem 'psych'
gem 'deep_merge'

group :jekyll_plugins do
  gem 'jekyll-optional-front-matter'  
  gem 'jekyll-default-layout'
  gem 'mini_magick'
  gem 'jekyll-assets'
  gem "overkyll-jekyll-theme"
end

group :development do
    gem 'foreman'
    gem 'octopress-autoprefixer'
end

group :test do
    gem 'rake', '~> 11.0.0'
    gem 'jekyll'
    gem 'html-proofer', '~> 3.0.0'
end
