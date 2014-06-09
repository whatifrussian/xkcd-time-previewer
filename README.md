## What is this?

Web previewer for [XKCD Time](http://xkcd.com/1190/) ([explanation](http://explainxkcd.com/1190)) translations by Russian What If? and XKCD translators [team](http://chtoes.li/about). The main goal is to provide a combined view of a given original image and original text with a corresponding translated image and translated text. Images without text are not included. Generated web pages also include links to corresponding frames on [geekwagon](http://geekwagon.net/projects/xkcd1190/) and links to translators’ discussion resources.

That’s just for translation process support and not for comfortable reading.

## Installation and page generation

First install [llgal](http://home.gna.org/llgal), version 0.13.15. The version is significant because `.llgal/llgal` perl script is a patched version of the original script from the llgal-0.13.15 package.

Clone this repo and put the images to `Scene 1`, `Scene 2 Part 1`, etc directories, then run `./regen.sh`.

If everything’s alright, the script will generate lots of *.html files in the repo directory and lots of png thumbnails in `.llgal` subdirectory.

Tell your web-server about this directory, and you’re done.

## License

Distributed under the same license as llgal: GNU General Public License V2 or later.
