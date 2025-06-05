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
	  --css src/reset.css \
	  --css src/index.css \
	  -Vversion=v$(VERSION) \
	  -Vdate=$(DATE) \
	  -i $< \
	  -o $@ \
	  --template=content/template.html

.PHONY: all clean
