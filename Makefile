.PHONY: build
build:
	bundle exec jekyll build
	git add docs/
	git commit docs/ -m "Generated docs"
