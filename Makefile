# Resume PDF Generation
# Requires: pandoc (3.x), xelatex (TeX Live 2025+), perl

OUTPUT_DIR := _outputs
PDF        := $(OUTPUT_DIR)/HEIST_Corbin_Resume.pdf
HTML       := $(OUTPUT_DIR)/HEIST_Corbin_Resume.html
CL_PDF     := $(OUTPUT_DIR)/HEIST_Corbin_CoverLetter.pdf

SRC        := README.md
TEMPLATE   := style/template.tex
METADATA   := style/metadata.yml

CL_SRC     := cover-letter.md
CL_META    := style/cover-letter-metadata.yml

PANDOC_FLAGS := --pdf-engine=xelatex \
               --template=$(TEMPLATE) \
               --metadata-file=$(METADATA) \
               --shift-heading-level-by=-1

# Preprocessor: insert blank lines before list items that follow non-list lines.
# Standard Pandoc markdown requires a blank line before a list start; the README
# omits these after **bold header:** lines. This fixes that without modifying the source.
PREPROCESS := perl style/preprocess.pl

.PHONY: pdf open clean html cover-letter

pdf: $(PDF)

$(PDF): $(SRC) $(TEMPLATE) $(METADATA) style/preprocess.pl
	@mkdir -p $(OUTPUT_DIR)
	$(PREPROCESS) $(SRC) | pandoc $(PANDOC_FLAGS) -o $@
	@echo "Built: $@"

open: $(PDF)
	@open $(PDF)

html: $(HTML)

$(HTML): $(SRC) $(METADATA) style/preprocess.pl
	@mkdir -p $(OUTPUT_DIR)
	$(PREPROCESS) $(SRC) | pandoc --metadata-file=$(METADATA) --shift-heading-level-by=-1 --standalone -o $@
	@echo "Built: $@"

cover-letter: $(CL_PDF)

$(CL_PDF): $(CL_SRC) $(TEMPLATE) $(CL_META)
	@mkdir -p $(OUTPUT_DIR)
	pandoc --pdf-engine=xelatex --template=$(TEMPLATE) --metadata-file=$(CL_META) -o $@ $(CL_SRC)
	@echo "Built: $@"

clean:
	rm -f $(OUTPUT_DIR)/*.pdf $(OUTPUT_DIR)/*.html
	@echo "Cleaned build artifacts"
