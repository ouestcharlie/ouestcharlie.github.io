.PHONY: serve

## Serve the Jekyll blog locally with baseurl override:
serve:
	cd docs && bundle exec jekyll serve --config _config.yml,_config_dev.yml --livereload
