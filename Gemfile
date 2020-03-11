# frozen_string_literal: true

require 'rbconfig'
source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

if RbConfig::CONFIG['target_os'] =~ /(?i-mx:bsd|dragonfly)/
  # gem 'rb-kqueue', '>= 0.2'
  #  rb-kqueue-0.2.5/lib/rb-kqueue/event.rb:80:in `callback!': undefined method `callback!' for nil:NilClass (NoMethodError)
end

# for old ruby 2.0.x (CentOS)
if RUBY_VERSION < "2.1"
  gem "public_suffix", "~> 2.0.5"
  gem "i18n", "~> 0.7.0"
  gem "rb-inotify", "~> 0.9.10"
  gem "listen", "~> 3.0.0"
  gem "jekyll-watch", "~> 1.4.0"
  gem "liquid", "~> 3.0.0"
end

group :jekyll_plugins do
  # gem "jekyll-responsive-image"
  gem "jekyll-browsersync"
  gem "jekyll-sitemap"
  gem "jekyll-archives"
  gem "jekyll-polyglot"
  gem "jekyll-feed"
  gem "jekyll-twitter-plugin"
  gem "jekyll-paginate"
end

gem "rouge"
gem "html-proofer"

gem "jekyll"
