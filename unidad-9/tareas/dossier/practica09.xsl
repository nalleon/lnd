﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml"/>
<xsl:template match="/">
  <noticias>
<xsl:apply-templates select="/Category/Feed/item"/>
  </noticias>
</xsl:template>
  <xsl:template match="item">
  <titulo><xsl:value-of select="title"/> </titulo>
  </xsl:template>
</xsl:stylesheet>