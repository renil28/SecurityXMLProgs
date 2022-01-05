<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
		</head>
		<body>
			<h1 style="text-align:center">Mall Management System - Security</h1>
			<h2 style="text-align:center">Security Employee Details</h2>
			<table border="2" align="center">
			<tr>
				<th>Name</th>
				<th>Age</th>
				<th>Salary</th>
				<th>Years Of Experience</th>
			</tr>
			<xsl:for-each select="Security/SecurityPersonnel">
			<xsl:sort select="Age"></xsl:sort>
			<xsl:if test="Salary > 15000">
			<tr>
				<xsl:choose>
      				<xsl:when test="Salary > 50000">
         			<td bgcolor="#ff00ff">
         				<xsl:value-of select="Name"></xsl:value-of>
         			</td>
      				</xsl:when>
      			<xsl:otherwise>
				<td>
					<xsl:value-of select="Name"></xsl:value-of>
				</td>
				</xsl:otherwise>
      			</xsl:choose>
				<td>
					<xsl:value-of select="Age"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="Salary"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="YearsOfExperience"></xsl:value-of>
				</td>
		    </tr>
			</xsl:if>
			</xsl:for-each>
			</table>
			<h2 style="text-align:center">Security Agency Details</h2>
			<table border="2" align="center">
			<tr>
				<th>Agency Name</th>
				<th>Agency ID</th>
			</tr>
			<xsl:for-each select="Security/SecurityAgency">
			<tr>
				<td>
					<xsl:value-of select="AgencyName"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="AgencyID"></xsl:value-of>
				</td>
		    </tr>
			</xsl:for-each>
			</table>
			<h2 style="text-align:center">Security Equipment Details</h2>
			<table border="2" align="center">
			<tr>
				<th>Equipment Name</th>
				<th>Equipment Type</th>
				<th>Equipment ID</th>
			</tr>
			<xsl:for-each select="Security/SecurityEquipment">
			<tr>
				<td>
					<xsl:value-of select="EquipmentName"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="EquipmentType"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="EquipmentID"></xsl:value-of>
				</td>
		    </tr>
			</xsl:for-each>
			</table>
			<h2 style="text-align:center">Baggage Scanning Details</h2>
			<table border="2" align="center">
			<tr>
				<th>Baggage Name</th>
				<th>Baggage ID</th>
			</tr>
			<xsl:for-each select="Security/BaggageScanning">
			<tr>
				<td>
					<xsl:value-of select="BaggageName"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="BaggageID"></xsl:value-of>
				</td>
		    </tr>
			</xsl:for-each>
			</table>
			<h2 style="text-align:center">Security Screening Details</h2>
			<table border="2" align="center">
			<tr>
				<th>Security Gate Floor Number</th>
				<th>Security Gate ID</th>
			</tr>
			<xsl:for-each select="Security/SecurityScreening">
			<tr>
				<td>
					<xsl:value-of select="GateFloorNumber"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="GateID"></xsl:value-of>
				</td>
		    </tr>
			</xsl:for-each>
			</table>
			<h2 style="text-align:center">CCTV Camera Details</h2>
			<table border="2" align="center">
			<tr>
				<th>Camera Floor Number</th>
				<th>Camera ID</th>
			</tr>
			<xsl:for-each select="Security/CCTVCameras">
			<tr>
				<td>
					<xsl:value-of select="CameraFloor"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="CameraNumber"></xsl:value-of>
				</td>
		    </tr>
			</xsl:for-each>
			</table>
			<h2 style="text-align:center">Mall Adminstrator Details</h2>
			<table border="2" align="center">
			<tr>
				<th>Administrator Name</th>
				<th>Administrator ID</th>
			</tr>
			<xsl:for-each select="Security/MallAdmin">
			<tr>
				<td>
					<xsl:value-of select="AdminName"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="AdminID"></xsl:value-of>
				</td>
		    </tr>
			</xsl:for-each>
			</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>