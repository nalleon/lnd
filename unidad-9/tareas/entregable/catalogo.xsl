<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
  <body>
  <h2>Mis Cds </h2>
  <table border="2">
  <tr><th>Artista</th><th>Título</th></tr>
  <xsl:for-each select="//cd">
  <tr>
  <td><xsl:value-of select="titulo"></xsl:value-of></td>
  <td><xsl:value-of select="artista"></xsl:value-of></td>
  </tr>
  </xsl:for-each>
  </table>
  </body> 
  </html>
  </xsl:template>
</xsl:stylesheet>
