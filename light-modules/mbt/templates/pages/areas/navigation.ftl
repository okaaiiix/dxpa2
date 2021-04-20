[#assign siteRoot  = cmsfn.siteRoot(content)/]
[#assign page = cmsfn.page(content)!]
[#assign navPages = navfn.navItems(siteRoot)/]
[#assign brandType = siteRoot.brand!"text"/]

[#-- BRAND ASSIGNMENT START --]
[#if brandType == "text"]
    [#assign brandText = siteRoot.brandtext!/]
[#else]
    [#assign brandImageId = siteRoot.brandimage!/]
    [#assign brandAsset = damfn.getAsset(brandImageId)!/]
    [#if brandAsset?has_content]
        [#assign imageURL = brandAsset.getLink()!/]
        [#assign altText = brandAsset.getCaption()!/]
    [/#if]
[/#if]
[#-- BRAND ASSIGNMENT END --]

<style>
/* --- THEME 1 --- */
.navbar.theme1 {
    background-color:#7A8FFF!important;
    color: #F0F0F0!important;
}

.navbar.theme1>.navbar-collapse>.navbar-nav>.nav-item>.nav-link {
    color: #F0F0F0!important;
}

.navbar.theme1>.navbar-collapse>form>.btn {
    color: #F0F0F0!important;
    border-color: #F0F0F0!important;
}

.navbar.theme1>.navbar-collapse>form>.btn:hover,.navbar.theme1>.navbar-collapse>form>.btn:focus,.navbar.theme1>.navbar-collapse>form>.btn:active {
    color: #7A8FFF!important;
    background-color: #F0F0F0!important;
    border-color: #F0F0F0!important;
}

/* --- THEME 2 --- */
.navbar.theme2 {
    background-color:#0A124F!important;
    color: #F0F0F0!important;
}

.navbar.theme2>.navbar-collapse>.navbar-nav>.nav-item>.nav-link {
    color: #F0F0F0!important;
}

.navbar.theme2>.navbar-collapse>form>.btn {
    color: #F0F0F0!important;
    border-color: #F0F0F0!important;
}

.navbar.theme2>.navbar-collapse>form>.btn:hover,.navbar.theme2>.navbar-collapse>form>.btn:focus,.navbar.theme2>.navbar-collapse>form>.btn:active {
    color: #0A124F!important;
    background-color: #F0F0F0!important;
    border-color: #F0F0F0!important;
}

/* --- THEME 3 --- */
.navbar.theme3 {
    background-color:#FFFFFF!important;
    color: #C2C2C2!important;
}

.navbar.theme3>.navbar-collapse>.navbar-nav>.nav-item>.nav-link {
    color: #C2C2C2!important;
}

.navbar.theme3>.navbar-collapse>form>.btn {
    color: #262626!important;
    border-color: #262626!important;
}

.navbar.theme3>.navbar-collapse>form>.btn:hover,.navbar.theme3>.navbar-collapse>form>.btn:focus,.navbar.theme3>.navbar-collapse>form>.btn:active {
    color: #FFFFFF!important;
    background-color: #262626!important;
    border-color: #262626!important;
}
</style>


[#assign layoutStyle = siteRoot.containerWidth!"container"/]
[#assign fixedTop = siteRoot.fixedTop!false/]
[#assign bgColor  = siteRoot.color!"primary"/]
[#assign darkColors = ["primary", "dark", "danger", "secondary"]/]
[#assign navbarColor = "light"/]
[#if darkColors?seq_contains(bgColor)]
    [#assign navbarColor = "dark"/]
[/#if]

<div class="${layoutStyle} ${fixedTop?then("pb-5", "")}">
<nav class="navbar ${fixedTop?then("fixed-top", "")} navbar-expand-lg navbar-${navbarColor} bg-${bgColor!} ${page.pagetheme}">
    <a class="navbar-brand" href="#">[#if brandType == "text"]${brandText}[#else]<img src="${imageURL}" alt="${altText!}"/> [/#if]</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item ${navfn.isActive(content, siteRoot)?then("active", "")}">
                [#if siteRoot.title?has_content]
                <a class="nav-link" href="${cmsfn.link(siteRoot)}">${siteRoot.title} <span class="sr-only"></span></a>
                [/#if]
            </li>
            [#list navPages as page]
                [#assign isActive = navfn.isActive(content, page) || navfn.isOpen(content, page)/]
                [#assign secondLevelPages = navfn.navItems(page)!/]
                [#assign hasSecondLevelPages = secondLevelPages?has_content]
                [#if hasSecondLevelPages]
                    <li class="nav-item dropdown ${isActive?then("active", "")}">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            ${page.navigationTitle!page.title!page.@name}
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            [#list secondLevelPages as subpage]
                                <a class="dropdown-item" href="${cmsfn.link(subpage)}">${subpage.navigationTitle!subpage.title!subpage.@name}</a>
                            [/#list]
                        </div>
                    </li>
                [#else]
                    <li class="nav-item ${isActive?then("active", "")}">
                        <a class="nav-link" href="${cmsfn.link(page)}">${page.navigationTitle!page.title!page.@name}</a>
                    </li>
                [/#if]
            [/#list]
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>
</div>