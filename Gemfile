# frozen_string_literal: true

source "https://rubygems.org"

# See https://docs.github.com/en/free-pro-team@latest/github/working-with-github-pages/creating-a-github-pages-site-with-jekyll
git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }
# 209 from https://pages.github.com/versions/
gem "github-pages", "~> 228", group: :jekyll_plugins

group :jekyll_plugins do
  gem "jekyll-asciidoc"
#  gem "jekyll-theme-hyde"

  # For highlighting by https://github.com/asciidoctor/jekyll-asciidoc
  gem 'pygments.rb', '~> 2.1.0'
end

# Note: As we actually run Jekyll manually, this could possibly be done by "pure"
# Jekyll, without GitHub integration. For this, remove github references above,
# and instead do
#   gem "jekyll"
# and also manually include necessary gems, like jekyll-theme-cayman
# and Markdown parser.
# I didn't pursue this for now, but it should be possible to make,
# if the need to remove dependency on GitHub packages arises.

# After changing, run
#   bundle install
#   bundle update

gem "webrick", "~> 1.8"
