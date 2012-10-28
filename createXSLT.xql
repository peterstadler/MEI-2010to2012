xquery version "1.0" encoding "UTF-8";
declare namespace mei="http://www.music-encoding.org/ns/mei";
declare namespace rng="http://relaxng.org/ns/structure/1.0";
declare namespace xsl="http://www.w3.org/1999/XSL/Transform";
import module namespace functx="http://www.functx.com" at "http://www.xqueryfunctions.com/xq/functx-1.0-nodoc-2007-01.xq";

declare function local:createElementTemplates($old as xs:string*, $new as xs:string*) as element(xsl:template)* {
    for $oldName in functx:value-except($old, $new)
        let $newElementName := $new[lower-case(.) = lower-case($oldName)]
        order by $oldName ascending
        return 
            <xsl:template match="{concat('mei:',$oldName)}">
                {
                if(exists($newElementName)) then 
                    <xsl:element name="{$newElementName}">
                        <xsl:apply-templates select="@* | node()"/>
                    </xsl:element>
                else (
                    <xsl:comment>Transformation for element "{$oldName}" needs tweaking</xsl:comment>,
                    <xsl:copy>
                        <xsl:apply-templates select="@* | node()"/>
                    </xsl:copy>
                )}
            </xsl:template>
};

declare function local:createAttributeTemplates($old as xs:string*, $new as xs:string*) as element(xsl:template)* {
    for $oldName in functx:value-except($old, $new)
        let $newAttributeName := $new[lower-case(.) = lower-case($oldName)]
        order by $oldName ascending
        return 
            <xsl:template match="{concat('@',$oldName)}">
                {
                if(exists($newAttributeName)) then 
                    <xsl:attribute name="{$newAttributeName}" select="."/>
                else comment{'to do'}
                }
            </xsl:template>
};


let $mei2010-schema-files := (
    'analysis_Module.rng',
    'cmnOrnaments_Module.rng',
    'cmn_Module.rng',
    'coConstraints.rng',
    'corpus_Module.rng',
    'critapp_Module.rng',
    'datatypes.rng',
    'defaultClassDecls.rng',
    'edittrans_Module.rng',
    'facsimile_Module.rng',
    'figtable_Module.rng',
    'harmony_Module.rng',
    'header_Module.rng',
    'linkalign_Module.rng',
    'lyrics_Module.rng',
    'mei-all.rng',
    'mensural_Module.rng',
    'midi_Module.rng',
    'namesdates_Module.rng',
    'neumes_Module.rng',
    'ptrref_Module.rng',
    'shared_Module.rng',
    'tablature_Module.rng',
    'text_Module.rng',
    'usersymbols_Module.rng'
)
let $pathTo_MEI2012_v2.0.0_mei-all.rng := 'http://music-encoding.googlecode.com/svn/tags/MEI2012_v2.0.0/schemata/mei-all.rng'
let $pathTo_MEI_release_2010-05_folder := 'http://music-encoding.googlecode.com/svn/tags/MEI_release_2010-05/schemata/rng/'

let $mei2010 := for $file in $mei2010-schema-files return doc(concat($pathTo_MEI_release_2010-05_folder, $file))
let $mei2012 := doc($pathTo_MEI2012_v2.0.0_mei-all.rng)
return 
    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.music-encoding.org/ns/mei" xmlns:mei="http://www.music-encoding.org/ns/mei" version="2.0">
        <xsl:output encoding="UTF-8" indent="no" method="xml" omit-xml-declaration="no"/>
        <xsl:template match="/">
            <xsl:apply-templates/>
        </xsl:template>
        <xsl:template match="@* | node()">
            <xsl:copy>
                <xsl:apply-templates select="@* | node()"/>
            </xsl:copy>
        </xsl:template>
        {
        local:createElementTemplates($mei2010//rng:element/string(@name), $mei2012//rng:element/string(@name)),
        local:createAttributeTemplates($mei2010//rng:attribute/string(@name), $mei2012//rng:attribute/string(@name))
        }
    </xsl:stylesheet>