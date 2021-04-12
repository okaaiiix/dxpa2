<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>${content.windowTitle!content.title!}</title>
    <meta name="description" content="${content.description!""}" />
    <meta name="keywords" content="${content.keywords!""}" />

    [@cms.area name="htmlHeader"/]
  </head>
    <body>
    [#assign pagetheme = content.pagetheme]
    [@cms.area name="footer"/]
    [@cms.area name="navigation"/]
    [@cms.area name="breadcrumb"/]
    
    [@cms.area name="content"/]
    
  </body>
    
</html>
