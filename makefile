DOCUMENT_NAME = reflexion
OUTPUT_DIR    = output

# Build the LaTeX document.
all: outputdir reflexion cleanup

# Remove output directory.
clean:
	rm -rf $(OUTPUT_DIR)

# cleanup tempfiles
cleanup:
	rm -f $(DOCUMENT_NAME).aux $(DOCUMENT_NAME).glo $(DOCUMENT_NAME).ist $(DOCUMENT_NAME).lof $(DOCUMENT_NAME).log $(DOCUMENT_NAME).lot $(DOCUMENT_NAME).lol $(DOCUMENT_NAME).out $(DOCUMENT_NAME).toc $(DOCUMENT_NAME).alg $(DOCUMENT_NAME).glg $(DOCUMENT_NAME).gls $(DOCUMENT_NAME).acr $(DOCUMENT_NAME).pdf

# Create LaTeX output directory.
outputdir:
	$(shell mkdir $(OUTPUT_DIR) 2>/dev/null)

#Generate Reflexion
reflexion:
	pdflatex -interaction=errorstopmode $(DOCUMENT_NAME)
	cp $(DOCUMENT_NAME).pdf $(OUTPUT_DIR)