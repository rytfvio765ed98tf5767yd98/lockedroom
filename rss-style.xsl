<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="en">
      <head>
        <title>RSS Feed | maja braumberger</title>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@300&amp;display=swap" rel="stylesheet"/>
        <style>
          body {
            background-color: black;
            color: #c8c8c8;
            font-family: 'Roboto Mono', monospace;
            margin: 0;
            padding: 50px 20px;
            display: flex;
            justify-content: center;
          }
          .container {
            max-width: 600px;
            width: 100%;
          }
          header {
            border-bottom: 1px solid rgba(255,255,255,0.1);
            padding-bottom: 20px;
            margin-bottom: 40px;
          }
          h1 { color: white; font-size: 18px; letter-spacing: 4px; text-transform: uppercase; margin: 0; }
          .subtitle { font-size: 11px; color: #666; margin-top: 10px; text-transform: lowercase; }
          
          .item {
            margin-bottom: 30px;
            padding: 15px;
            border: 1px solid rgba(255,255,255,0.05);
            transition: background 0.3s ease;
            text-decoration: none;
            display: block;
          }
          .item:hover {
            background: rgba(255,255,255,0.03);
            border-color: rgba(255,255,255,0.1);
          }
          .item-title {
            color: white;
            font-size: 14px;
            display: block;
            margin-bottom: 5px;
          }
          .item-meta {
            font-size: 10px;
            color: #767676;
            text-transform: uppercase;
          }
          .item-desc {
            margin-top: 10px;
            font-size: 12px;
            line-height: 1.6;
            color: #9e9e9e;
          }
          .back-link {
            display: inline-block;
            margin-top: 40px;
            color: #666;
            text-decoration: none;
            font-size: 11px;
            border: 1px solid #333;
            padding: 5px 15px;
          }
          .back-link:hover { color: white; border-color: white; }
        </style>
      </head>
      <body>
        <div class="container">
          <header>
            <h1><xsl:value-of select="/rss/channel/title"/></h1>
            <div class="subtitle"><xsl:value-of select="/rss/channel/description"/></div>
          </header>
          
          <xsl:for-each select="/rss/channel/item">
            <a class="item" href="{link}">
              <span class="item-title"><xsl:value-of select="title"/></span>
              <span class="item-meta"><xsl:value-of select="pubDate"/></span>
              <div class="item-desc"><xsl:value-of select="description"/></div>
            </a>
          </xsl:for-each>
          
          <a href="index.html" class="back-link">← RETURN TO HOME</a>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>