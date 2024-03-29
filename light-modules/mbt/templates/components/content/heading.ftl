[#assign page = cmsfn.page(content)!]
[#include "/mbt/templates/macros/commons.ftl"/]
[@assignSpacingAndBorders content/]
[#assign badgeText = content.badgeText!/]
[#assign headingLevel = content.headingType!"1"/]

<style>
.heading.theme1{
    background-color: transparent;
    color: #ACACAC;
    text-align: center;
    font: Roboto;
}

.theme1 > .headingh2 {
    font-weight: 100;
    font-size: 36px;
    text-decoration: underline 2px;
    word-spacing: 5px;
    text-underline-offset: 5px;
}

.theme1 > .headingdiv {
    font-size: 24px;
    font-weight:200;
    padding-top: 2%;
    padding-left: 20%;
    padding-right: 20%;
    word-spacing:2px;
}

.heading.theme2{
    background-color: transparent;
    color: #ACACAC;
    text-align: center;
    font: Roboto;
    position: relative;
    height:50vh;
}

.theme2 > .headingh2 {
   position: absolute;
   font-size: 200px;
   top: 0;
   left: 0;
   bottom: 0;
   right: 0;
   
   color: #D3DAEE;
   z-index: -1;
   overflow: hidden;
   text-transform: uppercase;
}

.theme2 > .headingdiv {
    font-size:30px;
    color: #797979;
    top: 30%;
    font-weight:400;
    padding-left: 20%;
    padding-right: 20%;
    word-spacing:2px;
}

.heading.theme3{
    background-color: transparent;
    padding-top: 20px;
    padding-bottom: 20px;
    text-align: center;
    font: Roboto;
}

.theme3 > .headingh2 {
    font-weight: 400;
    font-size: 64px;
    color: #4E4E4E;
    text-transform: uppercase;   
    text-decoration: underline 4px;
    word-spacing: 5px;
    text-underline-offset: 5px;
}

.theme3 > .headingdiv {
    font-size: 36px;
    font-weight:400;
    padding-top: 2%;
    padding-left: 20%;
    padding-right: 20%;
    word-spacing:2px;
    color: #585858;
}
</style>

<div class="${content.containerWidth!""} mt-${marginTop} mb-${marginBottom}">
${borderTop?then("<hr/>","")}
    [#if content.title?has_content]
        <div class="heading row text-${content.alignment!} [#if content.theme?has_content][#if content.theme=="notheme"]${page.pagetheme}[#else]${content.theme}[/#if][#else]${page.pagetheme}[/#if]"">
            <h2 class="headingh2 col-12">${content.title!}[#if badgeText?has_content]<span class="badge badge-${content.color!} ml-1">${badgeText!}</span>[/#if]</h${headingLevel!}>
            [#if content.text?has_content]<div class="col-12 headingdiv"> ${cmsfn.decode(content).text!}</div>[/#if]
        </div>
    [/#if]
${borderBottom?then("<hr/>","")}
</div>