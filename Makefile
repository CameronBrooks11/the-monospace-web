VERSION=$(shell jq -r .version package.json)
DATE=$(shell date +%F)

all: index.html

clean:
	rm -f index.html

index.html: content/index.md content/template.html Makefile
	pandoc --toc -s --css src/reset.css --css src/index.css -Vversion=v$(VERSION) -Vdate=$(DATE) -i $< -o $@ --template=content/template.html

.PHONY: all clean
