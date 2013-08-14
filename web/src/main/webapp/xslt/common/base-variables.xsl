<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Global XSL variables about the catalog and user session -->

  <xsl:variable name="uiResourcesPath" select="'../../catalog/'"/>
  <xsl:variable name="service" select="/root/gui/reqService"/>
  
  <xsl:variable name="i18n" select="/root/gui/i18n"/>
  <xsl:variable name="lang" select="/root/gui/lang"/>
  
  <xsl:variable name="isDebugMode" select="/root/request/debug"/>
  <xsl:variable name="isReadOnly" select="/root/gui/env/readonly = 'true'"/>
  <xsl:variable name="withD3" select="$service = 'admin.console'"/>
  
  <!-- Define which JS module to load using Closure -->
  <xsl:variable name="angularApp" select="
    if ($service = 'admin.console') then 'gn_admin'
    else if ($service = 'catalog.login') then 'gn_login'
    else 'gn'"/>
  
  <xsl:variable name="env" select="/root/gui/env"/>
  <xsl:variable name="isMailEnabled" select="$env/feedback/emailServer/host != ''"/>
  
  <xsl:variable name="session" select="/root/gui/session"/>
  <xsl:variable name="isLoggedIn" select="$session/userId != ''"/>
  
  <xsl:variable name="isJsEnabled" select="not(ends-with($service, '-nojs'))"/>
  
</xsl:stylesheet>