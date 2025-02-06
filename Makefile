.PHONY: examples

CC = xelatex
RESUME_DIR = resume
CV_DIR = cv
OUTPUT_DIR = dist
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

examples: $(foreach x, coverletter cv resume, $x.pdf)

resume.pdf: resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(OUTPUT_DIR) $<

cv.pdf: cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(OUTPUT_DIR) $<

coverletter.pdf: coverletter.tex
	$(CC) -output-directory=$(OUTPUT_DIR) $<

clean:
	rm -rf $(OUTPUT_DIR)/*.pdf
	rm -rf ${OUTPUT_DIR}/*.aux
	rm -rf ${OUTPUT_DIR}/*.log
