# PasDoc website

## Overview

Sources of PasDoc website on https://pasdoc.github.io/ .

It is using

* [GitHub Pages](https://pages.github.com) (publish static HTMLs)
* [Jekyll](https://jekyllrb.com/) (generate static HTMLs)
* [jekyll-asciidoc](https://github.com/asciidoctor/jekyll-asciidoc) (generate static HTMLs from sources in [AsciiDoctor](https://asciidoctor.org/) format)

The AsciiDoctor sources are in `src/` directory. Just submit a [pull request](https://github.com/pasdoc/pasdoc.github.io/pulls) to modify these source files, we'll take care of the rest.

## Content

The files in `src/` should use [AsciiDoctor](https://asciidoctor.org/) format.

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

This even makes automatic `git add` + `git commit` of stuff in `docs/`.
You should just `git push` the repository commits and watch the new content being served by https://pasdoc.github.io/ .

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
