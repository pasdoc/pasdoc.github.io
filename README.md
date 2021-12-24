# [PasDoc website](https://pasdoc.github.io/) sources

## Content

If you want to edit the documentation contents, just edit our wiki:
https://github.com/pasdoc/pasdoc/wiki .

The wiki pages should use [AsciiDoctor](https://asciidoctor.org/) format.

The website contents are auto-generated from wiki sources, by running

```
# Copies wiki contents to src/*.asciidoc,
# doing some necessary replacements.
# Assumes you have wiki GIT repository cloned in ../pasdoc.wiki/ , get by:
#   git clone https://github.com/pasdoc/pasdoc.wiki.git
./synchronize_from_wiki.sh
make
```

## How is the site generated

We use [Jekyll](https://jekyllrb.com/) to generate static website
from `src/` (sources in AsciiDoctor)
to `docs/` (static HTML, CSS etc. files).

Note that we don't use GitHub automatic handling of Jekyll, as it doesn't support
sources in AsciiDoctor (https://pages.github.com/versions/ doesn't contain
`jekyll-asciidoc` plugin). Luckily, using Jekyll manually (without GitHub automation)
is rather easy, and this way we get `jekyll-asciidoc` we need.
Install by

```
sudo apt install ruby-dev # or equivalent for your Linux distro
sudo gem install jekyll bundler
bundle install
```

If there's a problem with dependencies at `bundle install`, occasionally updating everything to use newest version helps. This is done by `bundle update`, which updates `Gemfile.lock`. I will do this in this repo when necessary, you can also do it locally and ping me if I should do it here.

Regenerate site

```
make
```

Then just commit + push the static files inside `docs/`
(they need to be in repo, to be served by https://pasdoc.github.io/ ).

To preview offline, do

```
bundle exec jekyll serve
```

and visit http://127.0.0.1:4000 .

## Customizing theme

See https://jekyllrb.com/docs/themes/ .

Open theme source:

```
xdg-open $(bundle info --path jekyll-theme-cayman)
```
