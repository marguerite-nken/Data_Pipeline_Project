<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body style="font-family: sans-serif; color: black;">
				<h1 style="color:#778899;">Fifth Scenario</h1>
				<h2 style="color:#000000;">ACTIVITIES ORGANISED BY THE AGENCY</h2>
				<h4 style="color:#000000;">Visualization of all activities that have been proposed by the agency.</h4>
				<table border='1px solid' border-collapse='collapse' >
				<style> table, td, th { border: 1px solid; } table { width: 100%; border-collapse: collapse; } </style>
					<tr bgcolor="#B0C4DE">

						<xsl:comment>Selecting all activities that have been proposed by the agency w/o participants</xsl:comment>

						<th>Name</th>
						<th>Occurrence</th>
						<th>Type of Activity</th>
						<th>Type of Group</th>
						<th>N. of Participants</th>
            		</tr>
					
					<xsl:for-each select="/LANGUAGE-HOLIDAY-AGENCY/group/country/office/offer/period/activity">
					<tr>
						<td>
							<xsl:value-of select="name"/>
						</td>
						<td>
							<xsl:value-of select="occurrence"/>
						</td>
						<td>
							<xsl:value-of select="main-type"/>
						</td>
						<td>
							<xsl:value-of select="secondary-type"/>
						</td>
						<td>
							<xsl:value-of select="n-participants"/>
						</td>
					</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>