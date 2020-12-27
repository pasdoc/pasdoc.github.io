#!/bin/bash
set -eu

rm -Rf src/*
cp -f ../pasdoc.wiki/*.asciidoc src/
for F in src/*.asciidoc; do
  # Increase header indentation for all files
  sed --in-place -e 's|^#### |##### |' "$F"
  sed --in-place -e 's|^### |#### |' "$F"
  sed --in-place -e 's|^## |### |' "$F"
  sed --in-place -e 's|^# |## |' "$F"
done
