<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body style="font-family: sans-serif; color: black;">
				<h1 style="color:#778899;">Third Scenario</h1>
				<h2 style="color:#000000;">LANGUAGE CLASS DATA</h2>
				<h4 style="color:#000000;">Visualization of language class information and data on the professor of the course.</h4>
				<table border='1px solid' border-collapse='collapse' >
				<style> table, td, th { border: 1px solid; } table { width: 100%; border-collapse: collapse; } </style>
					<tr bgcolor="#B0C4DE">
					
						<xsl:comment>Selecting information on language class from the language class element and data on the professor of the course from the professor element (child element of language class).</xsl:comment>
					
						<th>ID</th>
						<th>N. of Students</th>
						<th>Language</th>
						<th>Proficiency Development</th>
						<th>Type of Final Examination</th>
						<th>Professor Name</th>
						<th>Professor Contact</th>
						<th>Professor Proficiency</th>
					</tr>
					<xsl:for-each select="/LANGUAGE-HOLIDAY-AGENCY/group/country/office/offer/language-class">
					<tr>
						<td>
							<xsl:value-of select="id"/>
						</td>
						<td>
							<xsl:value-of select="n-students"/>
						</td>
						<td>
							<xsl:value-of select="language"/>
						</td>
						<td>
							<xsl:value-of select="proficiency"/>
						</td>
						<td>
							<xsl:value-of select="final-test"/>
						</td>
						<td>
							<xsl:value-of select="professor/name"/>
						</td>
							<xsl:for-each select="name">
							<xsl:value-of select="."/>
							</xsl:for-each>
						<td>
							<xsl:value-of select="professor/email"/>
						</td>
							<xsl:for-each select="email">
							<xsl:value-of select="."/>
							</xsl:for-each>
						<td>
							<xsl:value-of select="professor/proficiency"/>
						</td>
							<xsl:for-each select="professor/proficiency">
							</xsl:for-each>
					</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>