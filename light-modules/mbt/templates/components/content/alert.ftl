[#--assignment--]
[#include "/mbt/templates/macros/commons.ftl"/]
[@assignSpacingAndBorders content/]
[#assign text = cmsfn.decode(content).text!/]
[#assign alertType = content.color!"primary"/]
[#assign alignment = content.alignment!""/]
[#assign showDismiss = content.showDismiss!false/]
[#assign page = cmsfn.page(content)!]

[#--rendering--]
${borderTop?then("<hr/>","")}
[#if text?has_content]
    <div class="alert alert-${alertType} text-${alignment} mt-${marginTop} mb-${marginBottom} [#if content.theme?has_content][#if content.theme=="notheme"]${page.pagetheme}[#else]${content.theme}[/#if][#else]${page.pagetheme}[/#if]" role="alert" data-dismiss="alert">
        [#if showDismiss]
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        [/#if]
        <strong> Error! </strong> There seems to be a problem
        ${text}
    </div>

[/#if]
${borderBottom?then("<hr/>","")}