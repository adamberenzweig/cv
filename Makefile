all: index.html adam-berenzweig-cv.pdf cv.docx cv.txt

index.html: cv.md style.css
	pandoc --standalone -c style.css --from markdown --to html -o index.html cv.md

#cv.pdf: cv.md style.css
#	pandoc --standalone -c style.css --from markdown --to html5 -o cv.pdf cv.md

cv.pdf: index.html
	pandoc --standalone -c style.css --from markdown --to pdf --pdf-engine=weasyprint -o cv.pdf cv.md
	#wkhtmltopdf index.html adam-berenzweig-cv.pdf

cv.docx: cv.md
	pandoc --from markdown --to docx -o cv.docx cv.md

cv.txt: cv.md
	pandoc --standalone --smart --from markdown --to plain -o cv.txt cv.md

clean:
	rm -f *.html *.pdf *.docx *.txt
