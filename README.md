# ZONARAS LEXICON

## DESCRIPTION

The [Zonaras Lexicon](https://cudl.lib.cam.ac.uk/view/MS-KK-00005-00025/528) is
an etymological dictionary of Greek words
compiled by the historian [Johannes
Zonaras](https://en.wikipedia.org/wiki/Joannes_Zonaras) in Constantinople during
the early 12th century A.D. It contains nearly 19000 entries. The text can be found in pdf format
[here](https://books.google.gr/books?id=cb0UAAAAQAAJ&printsec=frontcover&source=gbs_ge_summary_r&cad=0#v=onepage&q&f=false)
and
[here](https://books.google.gr/books?id=S70UAAAAQAAJ&printsec=frontcover&source=gbs_ge_summary_r&cad=0#v=onepage&q&f=false).
Also this lexicon it is included in the [TLG CDROM](http://stephanus.tlg.uci.edu/tlgauthors/cd.authors.php)
in Beta Code format.


This utility can decode the text of Zonaras, taken from the TLG CDROM,
into UTF-8 text, and then compile the data into a ABBYY Lingvo .dsl dictionary file that can be used with
the digital dictionary browser [GoldenDict]( http://goldendict.org/), so that
the Zonaras can be searched like any other modern dictionary.

## DEPENDENCIES
The script is meant to be run within a Linux environment.
It requires the following:

* [tlg2u](https://github.com/proteusx/tlg2u), this is the beta-code to utf-8 text conversion
    utility.
* Bash
* Perl
* Sed
* TLG CDROM. This is no longer sold, but it can be found via bit torrents.

To search the dictionary you need to have GoldenDict installed.

## USAGE

Clone the Github repository: `git clone
https://github.com/proteusx/Zonaras-Lexicon.git`

Edit the first line of the file `build-zonaras.sh`. The variable `TLG_CDROM` must
contain the path to the TLG CDROM files.

Run the script: `build-zonaras.sh`

If everything is in order the file **`dictionary/zonaras.dsl`** should be produced.  Point
GoldenDict to this folder and the Zonaras is ready to search.  Alternatively you may
copy the contents of the folder **`dictionary`** to some other location.

There is also a release with `zonaras.dsl` compiled and ready to use, together
with its icon and annotations file.

## NOTES
Zonaras Lexicon encoded within the TLG CDROM is sourced from this hard copy edition:

*Iohannis Zonarae lexicon ex tribus codicibus manuscriptis, 2 vols., Tittmann, J.A.H. (Ed)
Leipzig: Crusius, 1808, 1967*


## SEE ALSO
Other Ancient Greek digital dictionaries:

<https://github.com/proteusx/Suda-For-GoldenDict>

<https://github.com/proteusx/Hesychius-For-GoldenDict>

<https://github.com/proteusx/Photius-Lexicon>

<https://github.com/proteusx/Etymologicum-Magnum>



<!-- vim: set tw=80 spell fo=tq: -->
