BUILD_DIR=public

build:
	rm -rf $(BUILD_DIR)
	hugo -D

gh-pages: build
	ghp-import -n $(BUILD_DIR) -p -f
