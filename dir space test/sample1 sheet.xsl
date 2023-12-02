<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="3.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="#all"
  expand-text="yes">

  <xsl:output method="html" indent="yes" html-version="5"/>

  <xsl:template match="/" name="xsl:initial-template">
      <p>Run with {system-property('xsl:product-name')} {system-property('xsl:product-version')} at {current-dateTime()}; static-base-uri: {static-base-uri()}</p>
      <xsl:comment>Run with {system-property('xsl:product-name')} {system-property('xsl:product-version')} at {current-dateTime()}; static-base-uri: {static-base-uri()}</xsl:comment>
  </xsl:template>

</xsl:stylesheet>