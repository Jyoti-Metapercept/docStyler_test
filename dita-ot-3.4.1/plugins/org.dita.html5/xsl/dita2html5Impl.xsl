<?xml version="1.0" encoding="UTF-8"?><!--This file is part of the DITA Open Toolkit project.Copyright 2016 Jarno ElovirtaSee the accompanying LICENSE file for applicable license.--><xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="2.0"
  ><xsl:import href="plugin:org.dita.base:xsl/common/output-message.xsl" />
  <xsl:import href="plugin:org.dita.base:xsl/common/dita-utilities.xsl" />
  <xsl:import href="plugin:org.dita.base:xsl/common/related-links.xsl" />
  <xsl:import href="plugin:org.dita.base:xsl/common/dita-textonly.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/topic.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/concept.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/glossdisplay.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/task.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/reference.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/ut-d.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/sw-d.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/pr-d.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/ui-d.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/hi-d.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/abbrev-d.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/markup-d.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/xml-d.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/svg-d.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/hazard-d.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/nav.xsl" />
  <xsl:import href="plugin:org.dita.html5:xsl/htmlflag.xsl" />
  <!-- root rule -->
  <xsl:template xmlns:dita="http://dita-ot.sourceforge.net" match="/">
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
            width: 80%;
            padding-top:80px;
            box-sizing:border-box;
            margin:0;
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
            height:100vh;
            background-color:#563D7C;
            overflow:scroll;
            padding-top:10px;
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
          }
          .container nav[role="toc"] li[class="active"]{
            background-color:grey;
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
            <div class="col-md-9">
              <!-- Main content area -->
              <xsl:apply-templates />
            </div>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
