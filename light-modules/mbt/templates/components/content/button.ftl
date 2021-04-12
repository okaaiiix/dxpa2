[#include "/mbt/templates/macros/linksSwitchable.ftl"]
[#assign page = cmsfn.page(content)!]
[@assignLink content "linkType"/]
<style>
.btn.theme1{
    background-color: red;
}

.btn.theme2{
    background-color: blue;
}

.btn.theme3{
    background-color: green;
}
</style>

[#if hrefValue?has_content]
    <a class="btn btn-${content.buttonColor!} [#if content.theme=="notheme"]${page.pagetheme}[#elseif content.theme?has_content]${content.theme}[#else]${content.pagetheme}[/#if]"} mt-${marginTop} mb-${marginBottom}" href="${hrefValue}" role="button">${linkText!"read more"}</a>
[/#if]