all: clean dtx

# Provided for posterity, but this is largely not necessary anymore.
ins: pittetd.ins
	tex pittetd.ins

dtx: pittetd.dtx
	latex pittetd.dtx
	makeindex -s gind.ist pittetd
	latex pittetd.dtx
	dvipdfm pittetd.dvi

clean:
	rm -f *.aux
	rm -f *.clo
	rm -f *.cls
	rm -f *.dvi
	rm -f *.fdb_latexmk
	rm -f *.fls
	rm -f *.hd
	rm -f *.idx
	rm -f *.ilg
	rm -f *.ind
	rm -f *.log
	rm -f *.out
	rm -f *.pit
	rm -f *.toc
	@rm -rf .cache
