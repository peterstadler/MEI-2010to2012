MEI 2010 to 2012
================

Transforming the 2010-05 schema version of the [Music Encoding Initiative](http://music-encoding.org) to the 2012 (2.0.0) version.


Contents
--------

* README.md: this file
* createXSLT.xql: XQuery Script to automatically generate MEI-2010to2012.xsl by comparing old and new element (and attribute) names and matching those where only capitalization differs.
* MEI-2010to2012.xsl: XSLT Stylesheet to transform your MEI 2010-05 files to the 2012 (2.0.0) version


Usage
-----

Apply the stylesheet MEI-2010to2012.xsl to your MEI 2010-05 files. 
Set the parameter `$warning` to `false()` if you want to supress all warnings.
(Tested with Saxon-HE 9)


Manually modified templates
---------------------------

Elements and attributes from the 2010-05 version that could not be matched automatically are:

* accessdesc
* altmeiid
* blockquote
* clefchange
* exhibithist
* extptr
* extref
* fingerprint
* keychange
* keywords
* pgfoot1
* pghead1
* profiledesc 
* treatmenthist
* treatmentsched
* @complete
* @entityref
* @href
* @label.full
* @mediacontent
* @medialength

Thanks to Andrew Hankinson those could be resolved!


Known restrictions
------------------

Some content models have changed so you might need to apply further tweaks to your data:

* `<altmeiid>`: this becomes `<altID>` with a tighter content model, only allowing `<lb>`, `<rend>`, `<stack>` and _text()_.
* `<clefchange>`: this becomes `<clef_ and doesn't support @tstamp, @staff or @layer any longer. 
* `<fingerprint>`: use of `<fingerprint>` deprecated.
* `<profiledesc>`: this becomes `<workDesc>` and thereby introduces a slightly different semantic. All child elements can be matched to their 2012 counterparts, though.