[#assign page = cmsfn.page(content)!]
<style>
.title {
    font-size:48px;
    font-weight: 100;
    letter-spacing: 2.4px;
}

.title.theme1 {
    color: #D8D8D8;
}

.title.theme2 {
    color: #0A124F;
}
</style>

<h1 class="title text-${content.alignment!} [#if content.theme?has_content][#if content.theme=="notheme"]${page.pagetheme}[#else]${content.theme}[/#if][#else]${page.pagetheme}[/#if]"> ${content.title}</h1>