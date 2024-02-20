<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/>
<xsl:template match="/">
<html>
<body>
<h1>Lista de nombre y apellidos</h1>
<xsl:for-each select ="//alumno">
<table border="1"></table>
<tr>
<td><xsl:value-of select="nombre"/></td>
<td><xsl:value-of select="apellidos"/></td>
<br></br>
</tr>
</xsl:for-each>
<h2>Lista de ciales y curso</h2>
<xsl:for-each select ="//alumno">
<table border="1"></table>
<tr>
<td><xsl:value-of select="@cial"/></td>
<td><xsl:value-of select="../@nombre"/></td>
<br></br>
</tr>
</xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet>