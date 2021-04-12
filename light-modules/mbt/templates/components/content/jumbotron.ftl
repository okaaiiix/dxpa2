[#include "/mbt/templates/macros/commons.ftl"/]
[@assignSpacingAndBorders content/]
[#assign text = cmsfn.decode(content).text!/]
[#assign title = content.title!/]
[#assign bgColor = content.bgColor!/]
[#assign linkColor = content.linkColor!"primary"]
[#assign imgItemKey = content.image!/]
[#include "/mbt/templates/macros/linksSwitchable.ftl"]
[#assign page = cmsfn.page(content)!]
[@assignLink content "linkType"/]

[#if imgItemKey??]
  [#assign imgRef = damfn.getAssetLink(imgItemKey)!/]
[/#if]

<style>
.jumbotron.theme1 {
  background-color: #7A8FFF;
}
.jumbotron.theme1 > .jumboh1 {
  position: relative;
  font: Roboto;
  font-size: 48px;
  font-weight: 300;
  line-height: 20px;
  letter-spacing: 0.05em;
  width: 688px;
  height: 37.39px;
  color: #FFFFFF;
}
.jumbotron.theme1 > .jumbohr {
  border-top: 1px solid;
  border-color: #FFFFFF;
}
.jumbotron.theme1 > .jumbop {
  position: relative;
  width: 654px;
  height: 151.89px;
  left: 100px;
  top: 0px;

  font: Roboto;
  font-size: 24px;
  font-weight: 300;
  line-height: 40px;
  letter-spacing: 0.05em;  
  text-align: left;
  color: #FFFFFF;
}
.jumbotron.theme1 > .btn {
  position: relative;
  left: 250px;
  bottom: 150px; 
  color: #7A8FFF;
  background-color: #FFFFFF;
  border: 2px solid;
  border-color: #7A8FFF;
  padding-top: 20px;
  padding-bottom: 20px;
  padding-left: 40px;
  padding-right: 40px;
}

.jumbotron.theme2 {
  background-color: #0A142F;
}
.jumbotron.theme2 > .jumboh1 {
  font: Roboto;
  font-size: 48px;
  font-weight: 300;
  line-height: 20px;
  letter-spacing: 0.05em; 
  color: #FFFFFF;
}
.jumbotron.theme2 > .jumbohr {
  border-top: 1px solid;
  border-color: #FFFFFF;
}
.jumbotron.theme2 > .jumbop {
  font: Roboto;
  font-size: 24px;
  font-weight: 300;
  line-height: 40px;
  letter-spacing: 0.05em;  
  color: #FFFFFF;
}
.jumbotron.theme2 > .btn {
  color: #0A142F;
  border: 2px solid;
  border-color: #0A142F; 
  background-color: #FFFFFF;
  border-radius: 10px;
  padding-top: 20px;
  padding-bottom: 20px;
  padding-left: 40px;
  padding-right: 40px;
}

</style>
<div class="${content.containerWidth!"container"}">
${borderTop?then("<hr/>","")}
  <div class="jumbotron  text-center bg-${bgColor!} mt-${marginTop} mb-${marginBottom} [#if content.theme?has_content][#if content.theme=="notheme"]${page.pagetheme}[#else]${content.theme}[/#if][#else]${page.pagetheme}[/#if]">
    <h1 class="display-4 jumboh1">${title}</h1>
    <hr class="my-4 jumbohr">
    <p class="lead jumbop">${text}</p>    
    [#if hrefValue?has_content]
      <a class="btn btn-${linkColor} btn-lg" href="${hrefValue}" role="button">${linkText}</a>
    [/#if]
  </div>
${borderBottom?then("<hr/>","")}

</div>