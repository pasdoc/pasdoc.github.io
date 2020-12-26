.PHONY: build
build:
	cd src/ && bundle exec jekyll build
	git add docs/
	git commit docs/ -m "Generated docs"
