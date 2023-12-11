GRIP_BIN ?= $(shell which grip)
WORKING_DIR ?= $(shell pwd)

ALL_MD_FILES := $(shell find $(WORKING_DIR)/cicd/gitlab-ci -name "*.md" | grep -v "slides.md")
SLIDES_MD_FILES := $(shell find $(WORKING_DIR) -name "*slides.md")
ALL_HTML_FILES := $(ALL_MD_FILES:.md=.html)
ALL_PDF_FILES := $(ALL_MD_FILES:.md=.pdf)
SLIDES_PDF_FILES := $(SLIDES_MD_FILES:.md=.pdf)

GRIP_PORT ?= 6419

.PHONY: all

debug:
	@echo "ALL_MD_FILES= $(ALL_MD_FILES)\n"
	@echo "ALL_PDF_FILES$(ALL_PDF_FILES)\n"

all: $(ALL_PDF_FILES)

all-clean: 
	@echo "Cleaning up"
	@rm -f $(ALL_HTML_FILES) $(ALL_PDF_FILES)
	make all

slides: $(SLIDES_PDF_FILES)

$(ALL_PDF_FILES): %.pdf: %.md
	@echo "Building $@ from $<"
	@htmldoc --no-toc --no-title --charset utf-8 -f $@ $<

$(SLIDES_PDF_FILES): %.pdf: %.md
	@echo "Building $@ from $<"
	@marp $< --pdf --allow-local-files --output $@


install-deps:
	@echo "Installing grip"
	pip install grip
	@echo "Installing wkhtmltopdf"
	sudo apt-get install -y wkhtmltopdf
	@echo "Installing marp"
	sudo npm install -g @marp-team/marp-cli

