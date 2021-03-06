#!/bin/bash
set -eu

rm -Rf src/*.asciidoc
cp -f ../pasdoc.wiki/*.asciidoc src/

mv src/Home.asciidoc src/index.asciidoc

for F in src/*.asciidoc; do
  # Increase header indentation for all files
  sed --in-place -e 's|^#### |##### |' "$F"
  sed --in-place -e 's|^### |#### |' "$F"
  sed --in-place -e 's|^## |### |' "$F"
  sed --in-place -e 's|^# |## |' "$F"

  # fix links to main page, must be index to be used as default page when none specified in URL
  sed --in-place -e 's|link:Home\[PasDoc\]|link:index[PasDoc]|' "$F"
  # in case there's 2nd link on same line
  sed --in-place -e 's|link:Home\[PasDoc\]|link:index[PasDoc]|' "$F"
  sed --in-place -e 's|link:Home\[Home\]|link:index[PasDoc]|' "$F"
  sed --in-place -e 's|link:Home\[Home\]|link:index[PasDoc]|' "$F"
  sed --in-place -e 's|link:Home\[on the main page\]|link:index[on the main page]|' "$F"
done

if ls ../pasdoc.wiki/*.md > /dev/null 2>&1; then
  echo 'Some wiki pages in Markdown format. Convert them to AsciiDoctor for consistency:'
  ls -1 ../pasdoc.wiki/*.md
fi
