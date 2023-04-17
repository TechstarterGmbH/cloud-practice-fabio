GRIP_BIN ?= $(shell which grip)
WORKING_DIR ?= $(shell pwd)

ALL_MD_FILES := $(shell find $(WORKING_DIR) -name "*.md")
ALL_HTML_FILES := $(ALL_MD_FILES:.md=.html)
ALL_PDF_FILES := $(ALL_MD_FILES:.md=.pdf)

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


$(ALL_PDF_FILES): %.pdf: %.html
	@echo "Building $@ from $<"
	@wkhtmltopdf --enable-local-file-access $< $@

%.html: %.md
	@echo "Building HTML $@ from $<"
	@${GRIP_BIN} $< --export $@


install-deps:
	@echo "Installing grip"
	pip install grip
	@echo "Installing wkhtmltopdf"
	sudo apt-get install -y wkhtmltopdf