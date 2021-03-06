<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:xalan="http://xml.apache.org/xalan">
    <xsl:include href="/_Site Support/Formats/storyListing"/>
    <xsl:include href="/_Site Support/Formats/xPaths"/>

    <xsl:output indent="yes" method="xml"/>
    
    <!-- start at the system index block level -->
    <xsl:template match="system-index-block">

        <ul class="post-list post-list-alt">
        <!-- Loop through every <system-page> element categorized under "Around Campus" -->
            <xsl:apply-templates select="$students">
                <xsl:sort order="descending" select="start-date"/>
            </xsl:apply-templates>
        </ul>

    </xsl:template>
    
</xsl:stylesheet>