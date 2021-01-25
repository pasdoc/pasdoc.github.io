#!/bin/bash
set -eu

rm -Rf src/*.asciidoc
cp -f ../pasdoc.wiki/*.asciidoc src/

# TODO: we should "mv" to index name, not copy, once we're sure we have no remaining links to Home
cp src/Home.asciidoc src/index.asciidoc

for F in src/*.asciidoc; do
  # Increase header indentation for all files
  sed --in-place -e 's|^#### |##### |' "$F"
  sed --in-place -e 's|^### |#### |' "$F"
  sed --in-place -e 's|^## |### |' "$F"
  sed --in-place -e 's|^# |## |' "$F"
  sed --in-place -e 's|link:Home\[PasDoc\]|link:index[PasDoc]|' "$F"
done
