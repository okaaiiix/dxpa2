[#include "/mbt/templates/macros/commons.ftl"/]
[@assignSpacingAndBorders content/]
[#assign uniqueID = "u-" + content.@uuid!/]
[#assign page = cmsfn.page(content)!]

<style>
.accordion {
    width: 80% !important;
    margin: 0 auto;
    background: transparent;
}
</style>


<div class="${content.containerWidth!} [#if content.theme?has_content][#if content.theme=="notheme"]${page.pagetheme}[#else]${content.theme}[/#if][#else]${page.pagetheme}[/#if]"">
    ${borderTop?then("<hr/>","")}
    [@renderTitleWithText content/]
    <div class="accordion accordion-flush" role="tablist"  id="${uniqueID}">
        [@cms.area name="accordions"/]
    </div>
    ${borderBottom?then("<hr/>","")}
</div>