<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body style="font-family: sans-serif; color: black;">
				<h1 style="color:#778899;">Fourth Scenario</h1>
				<h2 style="color:#000000;">PARTICIPANT INFORMATION</h2>
				<h4 style="color:#000000;">Visualization of the personal information collected for all participants.</h4>
				<table border='1px solid' border-collapse='collapse' >
				<style> table, td, th { border: 1px solid; } table { width: 100%; border-collapse: collapse; } </style>
			<tr bgcolor="#B0C4DE">
				
				<xsl:comment>Selecting personal information of all the participants of the agencies</xsl:comment>

				<th>Name</th>
				<th>Age</th>
				<th>Gender</th>
				<th>Email</th>
				<th>Address</th>
				<th>Nationality</th>
				<th>Native Language</th>
				<th>Starting Proficiency</th>
				<th>Ending Proficiency</th>
            </tr>
			<xsl:for-each select="/LANGUAGE-HOLIDAY-AGENCY/group/country/office/offer/participant/personal-info">
			<tr>
				<td>
					<xsl:value-of select="name"/>
				</td>
				<td>
					<xsl:value-of select="age"/>
				</td>
				<td>
					<xsl:value-of select="gender"/>
				</td>
				<td>
					<xsl:value-of select="email"/>
				</td>
				<td>
					<xsl:value-of select="address"/>
				</td>
				<td>
					<xsl:value-of select="nationality"/>
				</td>
				<td>
					<xsl:value-of select="native-language"/>
				</td>
				<td>
					<xsl:value-of select="starting-proficiency-level"/>
				</td>
				<td>
					<xsl:value-of select="end-proficiency-level"/>
				</td>
			</tr>
			</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>