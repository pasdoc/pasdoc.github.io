# PasDoc website ( https://pasdoc.github.io/ ) sources

We use [Jekyll](https://jekyllrb.com/) to generate static website
from `src/` (sources in AsciiDoctor)
to `docs/` (static HTML, CSS etc. files).

Note that we don't use GitHub automatic handling of Jekyll, as it doesn't support
sources in AsciiDoctor. That is, https://pages.github.com/versions/ doesn't contain
jekyll-asciidoc plugin. Luckily, using Jekyll manually is rather easy.
Install by

  sudo gem install jekyll bundler

Regenerate site by `make` and just commit + push the static files
(they need to be in repo, to be served by https://pasdoc.github.io/ ).
