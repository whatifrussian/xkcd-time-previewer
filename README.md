## What is this?

Web previewer for [XKCD Time](http://xkcd.com/1190/) ([explanation](http://explainxkcd.com/1190)) translations by Russian What If? and XKCD translators [team](http://chtoes.li/about). The main goal is to provide a combined view of a given original image and original text with a corresponding translated image and translated text. Generated web pages also include links to corresponding frames on [geekwagon](http://geekwagon.net/projects/xkcd1190/) and links to translators’ discussion resources.

Project also contains translated images.

That’s just for translation process support and not for comfortable reading.

## Installation and page generation

First install [llgal](http://home.gna.org/llgal), version 0.13.15. The version is significant because `.llgal/llgal` perl script is a patched version of the original script from the llgal-0.13.15 package.

Clone this repo, then run `./regen.sh`.

If everything’s alright, the script will generate lots of *.html files in the repo directory and lots of png thumbnails in `.llgal` subdirectory.

Tell your web-server about this directory, and you’re done.

## Add new section

1. Fill metadata for new section in `.llgal/metadata-sXpY.txt` directory, where X and Y is section and part numbers.
2. Add `metainfo_parse metadata-sXpY.txt` statement into file `.llgal/llgal`.
3. Download source images to `orig/Scene X Part Y` directory from URLs like `http://geekwagon.net/projects/xkcd1190/data/frames/${N}.png`
3. Put translated images to `Scene X path Y` directory.
4. Regenerate captions with `./regen.sh gc` command.

TODO: Exclude orig from regenerated captions.

## Bugs around images

In my Firefox browser (version 29, Linux x86_64) on my notebook indexed png images viewed uncorrectly. Fix that works for me: change gfx.color_management.mode option in about:config from 2 to 0. See https://bugzilla.mozilla.org/show_bug.cgi?id=621474 .

## License

Perl code distributed under the same license as well as llgal: GNU General Public License V2 or later.

Images and related metainfo (metainfo-*.txt files) distributed under CC BY-NC 2.5 as well as sources from xkcd.com.

CSS styles, HTML templates and other stuff in this repository is in public domain.
