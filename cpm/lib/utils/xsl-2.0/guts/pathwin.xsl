<?xml version="1.0" encoding="UTF-8"?>
<!-- * * ** *** ***** ******** ************* ********************* -->
<!--    
    Product:    CopyPaste Monster    
    Area:       Libraries    
    Part:       Utils
    Module:     winpath.xsl
    Usage:      Guts    
    Func:       Parsing and assembling Windows paths
-->    
<!-- * * ** *** ***** ******** ************* ********************* -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:cpm="http://cpmonster.com/xmlns/cpm"
    exclude-result-prefixes="cpm xs"
    version="2.0">        
    
    <!-- 
        Modules
    -->
    
    <!-- Working with URIs -->
    <xsl:import href="uri.xsl"/>
    
    <!-- Encodings -->
    <xsl:import href="../encoding.xsl"/>
    
    
    <!-- 
        Converting a Windows path to an URI
    -->
    <xsl:template match="*[lower-case(@os) = 'windows']" mode="cpm.pathuri.path2uri"> </xsl:template>
    
    
    <!-- 
        Converting an URI to a Windows path
    -->
    <xsl:template match="*[lower-case(@os) = 'windows']" mode="cpm.pathuri.uri2path">
        
        <xsl:variable name="strRawPath">
            <xsl:value-of select="cpm:pathuri.localFile(@uri)"/>
        </xsl:variable>
        
        <xsl:value-of select="translate($strRawPath, '/', '\')"/>
        
    </xsl:template>
            
    
</xsl:stylesheet>