[#include "/mbt/templates/macros/commons.ftl"/]
[@assignSpacingAndBorders content/]
[#assign uniqueID = "u-" + content.@uuid!/]


<style>
.accordion {
    width: 80% !important;
    margin: 0 auto;
    background: transparent;
}
</style>


<div class="${content.containerWidth!""} mt-${marginTop} mb-${marginBottom}">
    ${borderTop?then("<hr/>","")}
    [@renderTitleWithText content/]
    <div class="accordion accordion-flush" role="tablist"  id="${uniqueID}">
        [@cms.area name="accordions"/]
    </div>
    ${borderBottom?then("<hr/>","")}
</div>