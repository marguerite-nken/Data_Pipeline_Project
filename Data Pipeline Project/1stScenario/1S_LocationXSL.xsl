<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body style="font-family: sans-serif; color: black;">
				<h1 style="color:#778899;">First Scenario</h1>
				<h2 style="color:#000000;">OFFICE LOCATION AND GENERAL INFORMATION</h2>
				<h4 style="color:#000000;">Visualization of address information and corresponding manager's name and number of employees for all the offices of the agency.</h4>
				<table border='1px solid' border-collapse='collapse' >
				<style> table, td, th { border: 1px solid; } table { width: 100%; border-collapse: collapse; } </style>
					<tr bgcolor="#B0C4DE">

						<xsl:comment>Selecting address information from location (child element of office) and corresponding manager's name and number of employees (child elements of office) for all the offices of the agency</xsl:comment>

						<th>Postal Code</th>
						<th>Road Name</th>
						<th>Building Number</th>
						<th>Manager Name</th>
						<th>N. of Employees</th>
            		</tr>
					
					<xsl:for-each select="/LANGUAGE-HOLIDAY-AGENCY/group/country/office">
					<tr>
						<td>
							<xsl:value-of select="location/postal-code"/>
						</td>
							<xsl:for-each select="postal-code">
							<xsl:value-of select="."/>
							</xsl:for-each>
						<td>
							<xsl:value-of select="location/road-name"/>
						</td>
							<xsl:for-each select="road-name">
							<xsl:value-of select="."/>
							</xsl:for-each>
						<td>
							<xsl:value-of select="location/building-number"/>
						</td>
							<xsl:for-each select="building-number">							
							<xsl:value-of select="."/>
							</xsl:for-each>
						<td>
							<xsl:value-of select="manager"/>
						</td>
						<td>
							<xsl:value-of select="n-employees"/>
						</td>
					</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>