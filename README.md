# pittetd

All of the original material can be found at [http://latexetdsupport.wikidot.com/](http://latexetdsupport.wikidot.com/) or [http://www.pitt.edu/~graduate/etd/latexdl.html](http://www.pitt.edu/~graduate/etd/latexdl.html), or on [CTAN](https://www.ctan.org/pkg/pittetd).

## Usage

Any TeX distribution should be installed, along with some form of `make`, then run
```bash
make all
```
to generate the all-important `pittetd.cls` file and compile an example ETD under the `example/` directory.

In order to use the class with your ETD, symlink or copy it into the directory
containing your primary LaTeX file.

## History

There is another set of updates to this class located at
https://github.com/wbv/pittetd.  The changes there may be the currently
required ones, since the ETD office was inconsistent with requirements even in
my submission year, and this class produces noticeably different output from
the Word template of that year.  The main additions I was required to make
were adding listings of formal algorithms and code snippets to the front
matter.
