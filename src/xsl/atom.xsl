<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" />
  <xsl:template match="/">
    <xsl:variable name="title"><xsl:value-of select="/atom:feed/atom:title" /></xsl:variable>
    <xsl:variable name="description"><xsl:value-of select="/atom:feed/atom:subtitle" /></xsl:variable>
    <xsl:variable name="link"><xsl:value-of select="/atom:feed/atom:link[@rel='alternate']/@href | /atom:feed/atom:link[not(@rel)]/@href" /></xsl:variable>

    {{> rss }}
  </xsl:template>
</xsl:stylesheet>
