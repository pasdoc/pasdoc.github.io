# [PasDoc website](https://pasdoc.github.io/) sources

If you want to edit the documentation contents, just edit the files `src/*.asciidoc`.
They are in [AsciiDoctor](https://asciidoctor.org/) format.

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
