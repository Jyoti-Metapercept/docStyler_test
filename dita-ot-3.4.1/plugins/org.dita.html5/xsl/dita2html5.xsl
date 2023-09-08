<?xml version="1.0" encoding="UTF-8"?><!--This file is part of the DITA Open Toolkit project.Copyright 2012 Jarno ElovirtaSee the accompanying LICENSE file for applicable license.--><xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="2.0"
>
  <xsl:import href="plugin:org.dita.html5:xsl/dita2html5Impl.xsl" />
  <xsl:output
    method="html"
    encoding="UTF-8"
    indent="no"
    doctype-system="about:legacy-compat"
    omit-xml-declaration="yes" />
  <!-- Add the new template for generating the table of contents -->
  <xsl:template match="ditamap/topicref">
    <li class="toc-item">
      <a href="{@href}"> <xsl:value-of select="@navtitle" /> </a>
      <xsl:apply-templates select="topicref" />
    </li>
  </xsl:template>
  <!-- Root rule -->
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8" />

        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <title>Generated HTML</title>

        <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
          crossorigin="anonymous"
        />

        <!-- Your custom CSS styles here -->

        <style>
          *{
            font-family:courier;
          }
          body {
            font-family: "Helvetica Neue", Helvetica;
            background: #f4f6fa;
            overflow:scroll;
          }
          .container {
            padding-top:80px;
            box-sizing:border-box;
            margin:0;
          }
          .container nav[role="toc"]{
            width:auto;
            max-width:fit-content;
            display:flex;
          }
          .container main[role="main"]{
            width:auto;
            max-width:fit-content;
            display:flex;
          }
          .container .row{
            display:grid;
            grid-template-columns: 30% 70%;
          }
          #navbar{
            position:fixed;
            z-index:10;
            top:0;
            left:0;
            padding:0 60px;
            box-sizing:border-box;
            display:flex;
            gap:20px;
            align-items:center;
            justify-content:right;
            height:80px;
            width:100vw;
            background-color:grey;
          }
          input{
            border-radius:6px;
            padding:0 16px;
          }
          button{
            border-radius:6px;
            border: 2px solid blue;
          }
          input:focus{
            outline:none;
          }
          main[role="main"]{
            padding:30px;
          }
          nav[role="toc"]{
            position:sticky;
            top:80px;
            height:100vh;
            background-color:#563D7C;
            overflow:scroll;
            padding-top:10px;
            max-width:600px;
          }
          nav[role="toc"]>ul>li:last-child{
            padding-bottom:300px;
          }
          nav[role="toc"] li{
            list-style-type: none; 
            padding:10px;
            border-radius:6px;
          }
          nav[role="toc"] li a{
            text-decoration:none;
            color:grey;
          }
          nav[role="toc"] li a:hover{
            color:white;
          }
          ::-webkit-scrollbar {
            width: 0;
            height: 0;
          }
          ::-webkit-scrollbar-thumb {
            background-color: transparent;
          }
          .container nav[role="toc"] li[class="active"]>a{
            color:white;
            background-color:grey;
            border-radius:6px;
            padding:10px 20px;
            display:inline-block;
          }
        </style>
      </head>
      <body>
        <div id="navbar">
          <input type="text" placeholder="type something to find"/>
          <button>&#128269;</button>
        </div>
        <div class="container">
            <div class="row">
              <!-- Main content area -->
              <xsl:apply-templates />
            </div>
        </div>
      </body>
    </html> </xsl:template>
  </xsl:stylesheet>
