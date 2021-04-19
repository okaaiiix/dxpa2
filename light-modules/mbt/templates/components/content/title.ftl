[#assign page = cmsfn.page(content)!]
<style>
.title {
    font-size:48px;
    font-weight: 100;
    letter-spacing: 2.4px;
    font: Roboto;
}

.title.theme1 {
    color: #7A8FFF;
}

.title.theme2 {
    color: #0A124F;
}
.title.theme3 {
    padding-top: 20px;
    padding-bottom: 20px;
    color: #555555;
}
</style>

<h1 class="title text-${content.alignment!} [#if content.theme?has_content][#if content.theme=="notheme"]${page.pagetheme}[#else]${content.theme}[/#if][#else]${page.pagetheme}[/#if]"> ${content.title}</h1>