all:	McCall-Resume.html McCall-Resume.pdf McCall-Resume.docx

McCall-Resume.html: Resume.txt
	pandoc Resume.txt -o McCall-Resume.html -c resume.css

McCall-Resume.pdf: Resume.txt
	pandoc Resume.txt -o McCall-Resume.pdf -V geometry:margin=1in

McCall-Resume.docx: Resume.txt
	pandoc Resume.txt -o McCall-Resume.docx -V geometry:margin=1in

clean:
	rm -f *.html *.pdf *.docx
