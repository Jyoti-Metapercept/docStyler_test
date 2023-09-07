<?xml version="1.0" encoding="UTF-8"?><!-- This file is part of the DITA Open Toolkit project.
     See the accompanying license.txt file for applicable licenses. --><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

  <xsl:import href="plugin:org.dita.xhtml:xsl/dita2html-base.xsl"/>
  <xsl:import href="plugin:org.dita.html5:xsl/xslhtml/dita2html5Impl.xsl"/>
  <xsl:import href="plugin:org.dita.html5:xsl/xslhtml/hi-d2html5.xsl"/>
    
  

  <xsl:output xmlns:dita="http://dita-ot.sourceforge.net" method="html" encoding="UTF-8" indent="no" doctype-system="about:legacy-compat" omit-xml-declaration="yes"/>

  <xsl:template match="/">
  <xsl:apply-templates/>
    <div class="navbar">
      <div></div>
      <div>
        <input type="text" placeholder="type something to find"/>
        <button>search</button>
      </div>
    </div>
    <script type="text/javascript">
      console.log("hello world")
      console.log(document.getElementsByTagName("body")[0].innerHTML)
      class Player {
        constructor(name){
          this.playerName = name
        }
        sayHi(){
          console.log("hello my name is "+this.playerName+" and i am a basketball player")
        }
      }
      setTimeout(()=>{
        console.log("hello world")
      },10000)
      const newPlayer = new Player("jksingh")
      newPlayer.sayHi()
    </script>
    <style>
      *{
        margin:0px;
        padding:0px;
      }
      body{
        padding-top:79px
      }
      .navbar{
        position:fixed;
        z-index:10;
        top:0;
        display:flex;
        height:80px;
        width:100%;
        align-items:center;
        justify-content:space-between;
        padding:0px 60px;
        box-sizing:border-box;
        background-color:#272d3e;
      }
      .navbar>div:nth-child(2){
        display:flex;
        gap:10px;
      }
      nav{
        display:flex;
        width:30vw;
        padding:0px 40px;
        box-sizing:border-box;
        background-color:#272d3e;
        color:white;
        height:100vw;
        overflow:scroll;
      }
      a{
        color:white;
      }
      h1:has(+nav){
        background-color:#272d3e;
        width:30vw;
        color:white;
        margin-block-end:0;
        margin-bottom:0;
      }
    </style>
  </xsl:template>

</xsl:stylesheet>