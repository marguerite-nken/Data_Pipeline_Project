<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fi="http://mynamespace.fr/myvocabulary#">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">
	<html>
		<body style="font-family: sans-serif; color: black;">
				<h1 style="color:#778899;">Sixth Scenario</h1>
				<h2 style="color:#000000;">PARTICIPANT INFORMATION</h2>
				<h4 style="color:#000000;">Visualization of the personal information collected for all participants.</h4>
				<blockquote>
				<xsl:apply-templates select="fi:LANGUAGE-HOLIDAY-AGENCY/fi:group/fi:country/fi:office/fi:offer/fi:participant/fi:personal-info">
					<xsl:sort select="fi:age" order="ascending"/>
				</xsl:apply-templates>	
				</blockquote>
		</body>
	</html>
  </xsl:template>
 
  <xsl:template match="fi:LANGUAGE-HOLIDAY-AGENCY/fi:group/fi:country/fi:office/fi:offer/fi:participant/fi:personal-info">
	<p>
		<xsl:value-of select="fi:name"/>
		<xsl:value-of select="fi:age"/>
		<xsl:choose>
			<xsl:when test="fi:age >25">yes</xsl:when>
			<xsl:otherwise>No</xsl:otherwise>
		</xsl:choose>
		<xsl:value-of select="fi:gender"/>
		<xsl:value-of select="fi:email"/>
		<xsl:value-of select="fi:address"/>
		<xsl:value-of select="fi:nationality"/>
		<xsl:value-of select="fi:native-language"/>
		<xsl:value-of select="fi:starting-proficiency-level"/>
		<xsl:value-of select="fi:end-proficiency-level"/>
	</p>
  </xsl:template>		
</xsl:stylesheet>