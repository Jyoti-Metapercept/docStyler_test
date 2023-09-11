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
      </head>
      <body>
        <div id="navbar">
          <div>
            <span onclick="openMenu()" id="menuToggle">&#x2630;</span>
          </div>
          <div id="searchBar">
            <input type="text" placeholder="type something to find"/>
            <button>&#128269;</button>
          </div>
        </div>
        <div class="container">
            <div class="row">
              <!-- Main content area -->
              <xsl:apply-templates />
            </div>
        </div>
      </body>
    </html> 
    <script>
      const expandmenu = document.querySelectorAll(`.container :is(nav[role="toc"],nav[class="toc"]) li:has(>ul)`)
      addCollapsibleMenu(expandmenu)
      function handleCollapse(){
        event.target.classList.toggle("rotate-dropdown-arrow")
        event.target.nextElementSibling.nextElementSibling.classList.toggle("show-submenu")
      }

      function openMenu(){
        const menu = document.querySelector(`.container :is(nav[role="toc"],nav[class="toc"])`)
        menu.classList.toggle("hide-menu")
      }

      function addCollapsibleMenu(allTopics){
        allTopics.forEach((topic) => {
          topic.childNodes[1].classList.add("hide-submenu");
          const collapseButton = document.createElement("span");
          collapseButton.innerHTML = "&#10151;";
          collapseButton.style.padding = "0 8px";
          collapseButton.style.display = "inline-block";
          collapseButton.style.transition = "transform 0.3s";
          collapseButton.style.cursor = "pointer";
          collapseButton.addEventListener("click", handleCollapse);
          topic.insertBefore(collapseButton, topic.firstChild);
      });
      }
      function trackActiveTopic(){
        const activeTopic = document.querySelector(`.container :is(nav[role="toc"],nav[class="toc"]) .active`)
        keepCollapsableMenuOpen(activeTopic)
      }
      function keepCollapsableMenuOpen(activeTopic){
        if(activeTopic.nodeName === "NAV") return 
        if(activeTopic.parentElement.classList.contains("hide-submenu")){
          activeTopic.parentElement.classList.toggle("show-submenu")
          activeTopic.parentElement?.previousElementSibling?.previousElementSibling?.classList.toggle("rotate-dropdown-arrow")
        }
        keepCollapsableMenuOpen(activeTopic.parentElement)
      }
      trackActiveTopic()
    </script>
  </xsl:template>
  </xsl:stylesheet>
