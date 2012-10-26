<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:mei="http://www.music-encoding.org/ns/mei"
    xmlns="http://www.music-encoding.org/ns/mei" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    <xsl:output indent="no" encoding="UTF-8" method="xml" omit-xml-declaration="no"/>
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:accessdesc">
        <xsl:comment>Transformation for element "accessdesc" needs tweaking</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:acqsource">
        <xsl:element name="acqSource">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:addressline">
        <xsl:element name="addrLine">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:altmeiid">
        <xsl:comment>Transformation for element "altmeiid" needs tweaking</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:anchoredtext">
        <xsl:element name="anchoredText">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:appinfo">
        <xsl:element name="appInfo">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:barline">
        <xsl:element name="barLine">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:beamspan">
        <xsl:element name="beamSpan">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:beatrpt">
        <xsl:element name="beatRpt">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:blockquote">
        <xsl:comment>Transformation for element "blockquote" needs tweaking</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:btrem">
        <xsl:element name="bTrem">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:changedesc">
        <xsl:element name="changeDesc">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:chanpr">
        <xsl:element name="chanPr">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:chorddef">
        <xsl:element name="chordDef">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:chordmember">
        <xsl:element name="chordMember">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:chordtable">
        <xsl:element name="chordTable">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:classcode">
        <xsl:element name="classCode">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:clefchange">
        <xsl:comment>Transformation for element "clefchange" needs tweaking</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:corpname">
        <xsl:element name="corpName">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:editionstmt">
        <xsl:element name="editionStmt">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:editorialdecl">
        <xsl:element name="editorialDecl">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:encodingdesc">
        <xsl:element name="encodingDesc">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:eventlist">
        <xsl:element name="eventList">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:exhibithist">
        <xsl:comment>Transformation for element "exhibithist" needs tweaking</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:extptr">
        <xsl:comment>Transformation for element "extptr" needs tweaking</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:extref">
        <xsl:comment>Transformation for element "extref" needs tweaking</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:figdesc">
        <xsl:element name="figDesc">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:filedesc">
        <xsl:element name="fileDesc">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:fingerprint">
        <xsl:comment>Transformation for element "fingerprint" needs tweaking</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:ftrem">
        <xsl:element name="fTrem">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:geogname">
        <xsl:element name="geogName">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:grpsym">
        <xsl:element name="grpSym">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:halfmrpt">
        <xsl:element name="halfmRpt">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:handlist">
        <xsl:element name="handList">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:handshift">
        <xsl:element name="handShift">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:harppedal">
        <xsl:element name="harpPedal">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:instrdef">
        <xsl:element name="instrDef">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:instrgrp">
        <xsl:element name="instrGrp">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:keyaccid">
        <xsl:element name="keyAccid">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:keychange">
        <xsl:comment>Transformation for element "keychange" needs tweaking</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:keysig">
        <xsl:element name="keySig">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:keywords">
        <xsl:comment>Transformation for element "keywords" needs tweaking</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:langusage">
        <xsl:element name="langUsage">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:layerdef">
        <xsl:element name="layerDef">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:meicorpus">
        <xsl:element name="meiCorpus">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:meihead">
        <xsl:element name="meiHead">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:metatext">
        <xsl:element name="metaText">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:mrest">
        <xsl:element name="mRest">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:mrpt">
        <xsl:element name="mRpt">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:mrpt2">
        <xsl:element name="mRpt2">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:mspace">
        <xsl:element name="mSpace">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:multirest">
        <xsl:element name="multiRest">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:multirpt">
        <xsl:element name="multiRpt">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:noteoff">
        <xsl:element name="noteOff">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:noteon">
        <xsl:element name="noteOn">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:notesstmt">
        <xsl:element name="notesStmt">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:periodname">
        <xsl:element name="periodName">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:persname">
        <xsl:element name="persName">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:pgdesc">
        <xsl:element name="pgDesc">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:pgfoot1">
        <xsl:comment>Transformation for element "pgfoot1" needs tweaking</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:pgfoot2">
        <xsl:element name="pgFoot2">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:pghead1">
        <xsl:comment>Transformation for element "pghead1" needs tweaking</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:pghead2">
        <xsl:element name="pgHead2">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:physdesc">
        <xsl:element name="physDesc">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:physloc">
        <xsl:element name="physLoc">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:physmedium">
        <xsl:element name="physMedium">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:profiledesc">
        <xsl:comment>Transformation for element "profiledesc" needs tweaking</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:projectdesc">
        <xsl:element name="projectDesc">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:pubstmt">
        <xsl:element name="pubStmt">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:respstmt">
        <xsl:element name="respStmt">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:revisiondesc">
        <xsl:element name="revisionDesc">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:samplingdecl">
        <xsl:element name="samplingDecl">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:scoredef">
        <xsl:element name="scoreDef">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:seqnum">
        <xsl:element name="seqNum">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:seriesstmt">
        <xsl:element name="seriesStmt">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:sourcedesc">
        <xsl:element name="sourceDesc">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:staffdef">
        <xsl:element name="staffDef">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:staffgrp">
        <xsl:element name="staffGrp">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:stdvals">
        <xsl:element name="stdVals">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:stylename">
        <xsl:element name="styleName">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:symboldef">
        <xsl:element name="symbolDef">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:symboltable">
        <xsl:element name="symbolTable">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:sysreq">
        <xsl:element name="sysReq">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:titlepage">
        <xsl:element name="titlePage">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:titlestmt">
        <xsl:element name="titleStmt">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:treatmenthist">
        <xsl:comment>Transformation for element "treatmenthist" needs tweaking</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:treatmentsched">
        <xsl:comment>Transformation for element "treatmentsched" needs tweaking</xsl:comment>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="mei:trkname">
        <xsl:element name="trkName">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:tupletspan">
        <xsl:element name="tupletSpan">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="mei:userestrict">
        <xsl:element name="useRestrict">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="@complete"><!--to do--></xsl:template>
    <xsl:template match="@entityref"><!--to do--></xsl:template>
    <xsl:template match="@href"><!--to do--></xsl:template>
    <xsl:template match="@id">
        <xsl:attribute name="xml:id" select="."/>
    </xsl:template>
    <xsl:template match="@label.full"><!--to do--></xsl:template>
    <xsl:template match="@lang">
        <xsl:attribute name="xml:lang" select="."/>
    </xsl:template>
    <xsl:template match="@mediacontent"><!--to do--></xsl:template>
    <xsl:template match="@medialength"><!--to do--></xsl:template>
</xsl:stylesheet>
