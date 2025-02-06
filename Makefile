.PHONY: examples

CC = xelatex
RESUME_DIR = resume
OUTPUT_DIR = dist
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

examples: $(foreach x, resume, $x.pdf)

resume.pdf: resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(OUTPUT_DIR) $<

clean:
	rm -rf $(OUTPUT_DIR)/*.pdf
	rm -rf ${OUTPUT_DIR}/*.aux
	rm -rf ${OUTPUT_DIR}/*.log
