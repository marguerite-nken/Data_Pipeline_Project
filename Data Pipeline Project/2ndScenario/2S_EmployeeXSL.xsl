<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body style="font-family: sans-serif; color: black;">
				<h1 style="color:#778899;">Second Scenario</h1>
				<h2 style="color:#000000;">EMPLOYEES DATA</h2>
				<h4 style="color:#000000;">Visualization of the data collected for each one of the employees of the agency.</h4>
				<table border='1px solid' border-collapse='collapse' >
				<style> table, td, th { border: 1px solid; } table { width: 100%; border-collapse: collapse; } </style>
					<tr bgcolor="#B0C4DE">

						<xsl:comment>Selecting information on employees under the empolyee element</xsl:comment>
						
						<th>Name</th>
						<th>Email</th>
						<th>Address</th>
						<th>Gender</th>
						<th>Language Specialization</th>
						<th>Office Location</th>
   					</tr>
					
					<xsl:for-each select="/LANGUAGE-HOLIDAY-AGENCY/group/country/office/employee">
					<tr>
						<td>
							<xsl:value-of select="name"/>
						</td>
						<td>
							<xsl:value-of select="email"/>
						</td>
						<td>
							<xsl:value-of select="address"/>
						</td>
						<td>
							<xsl:value-of select="gender"/>
						</td>
						<td>
							<xsl:value-of select="language-offer-specialization"/>
						</td>
						<td>
						<xsl:value-of select="office-location"/>
						</td>
					</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>