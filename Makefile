VERSION := $(shell jq -r .version package.json)
DATE    := $(shell date +%F)

BUILD_DIR := build

all: $(BUILD_DIR)/index.html

clean:
	rm -rf $(BUILD_DIR)

$(BUILD_DIR)/index.html: content/index.md content/template.html Makefile
	mkdir -p $(BUILD_DIR)
	pandoc \
	  --toc -s \
	  --css https://cdn.jsdelivr.net/npm/monospace-web-theme@1.0.0/dist/monospace.min.css \
	  -V js="https://cdn.jsdelivr.net/npm/monospace-web-theme@1.0.0/dist/monospace.min.js" \
	  -V version=v$(VERSION) \
	  -V date=$(DATE) \
	  -i $< \
	  -o $@ \
	  --template=content/template.html

.PHONY: all clean
