<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
  <body>
  <xsl:for-each select="//item">
  <table width="70%" border="1"/>
  <tr>
  <td><xsl:value-of select="title"/> <xsl:text >  </xsl:text></td>
  </tr>
  </xsl:for-each>
  </body> 
  </html>
  </xsl:template>
</xsl:stylesheet>
