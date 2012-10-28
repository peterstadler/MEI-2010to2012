MEI 2010 to 2012
================

Transforming the 2010-05 schema version of the [Music Encoding Initiative](http://music-encoding.org) to the 2012 (2.0.0) version.


Contents
--------

* createXSLT.xql Ð XQuery Script to automatically generate MEI-2010to2012.xsl by comparing old and new element (and attribute) names and matching those where only capitalization differs.
* MEI-2010to2012.xsl Ð XSLT Stylesheet to transform your MEI 2010-05 files to the 2012 (2.0.0) version


Known restrictions
------------------

Elements and attributes from the 2010-05 version that could not be matched automatically are marked in the Stylesheet with a (xsl:)comment.
These include:
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

I'm happy for any advice on how to transform these É