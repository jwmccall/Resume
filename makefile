all:	McCall-Resume.html McCall-Resume.pdf McCall-Resume.docx

McCall-Resume.html: resume.md
	pandoc resume.md -o McCall-Resume.html -c resume.css

McCall-Resume.pdf: resume.md
	pandoc resume.md -o McCall-Resume.pdf -V geometry:margin=1in

McCall-Resume.docx: resume.md
	pandoc resume.md -o McCall-Resume.docx -V geometry:margin=1in

clean:
	rm -f *.html *.pdf *.docx
