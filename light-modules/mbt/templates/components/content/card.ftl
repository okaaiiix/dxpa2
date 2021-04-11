[#include "/mbt/templates/macros/linksSwitchable.ftl"]
[@assignLink content "linkType"/]

[#assign title = content.title!/]
[#assign text =  cmsfn.decode(content).text!/]
[#assign imgItemKey = content.image!/]
[#assign btnColor = content.buttonColor!"primary"/]
[#if imgItemKey?has_content]
    [#assign imgAsset = damfn.getAsset(imgItemKey)!/]
[/#if]
[#assign imagePosition = content.imagePosition!"top"/]
[#assign textColor = content.textColor!"default"/]
[#assign bgColor = content.bgColor!"default"/]
[#if textColor != "default"]
    [#assign textColorClass = "text-" + textColor!/]
[/#if]

[#if imgItemKey?has_content]
    [#assign asset = damfn.getAsset(imgItemKey)!]
    [#if asset?has_content]
        [#assign assetRend = damfn.getRendition(asset, "1600")/]
    [/#if]
[/#if]
<style>

/* CEO Card */
div.theme1{
position: absolute;
width: 556px;
height: 265px;
left: 102px;
top: 1391px;
}

/* Rectangle 9 */
.theme1 > div{
position: absolute;
width: 556px;
height: 265px;
left: 102px;
top: 1391px;
background: #EDEDED;
border-radius: 40px;
}

/* Sundar Pichai */
.theme1 > h5{
position: absolute;
width: 250px;
height: 48px;
left: 135px;
top: 1434px;
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 30px;
line-height: 40px;

/* or 133% */

letter-spacing: 0.05em;
color: #7A8FFF;
}


/* “Wear your failures as a badge of honor.” */
.theme1 > p{
position: absolute;
width: 290px;
height: 87px;
left: 135px;
top: 1546px;
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 18px;
line-height: 30px;

/* or 167% */

letter-spacing: 0.05em;
color: #9D9D9D;
}

.theme1 > img{
position: absolute;
width: 187px;
height: 224px;
left: 123px;
top: 1535px;

background: url(image.png);
border-radius: 18px;
}



/* CEO Card */
div.theme2{
position: absolute;
width: 556px;
height: 265px;
left: 102px;
top: 1514px;
}



/* Rectangle 9 */
.theme2 > div{
position: absolute;
width: 556px;
height: 265px;
left: 102px;
top: 1514px;

background: #0A142F;
border-radius: 40px;
}


/* Sundar Pichai */
.theme2 > h5{
position: absolute;
width: 250px;
height: 48px;
left: 333px;
top: 1550px;

font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 30px;
line-height: 40px;
/* or 133% */
letter-spacing: 0.05em;

color: #FFFFFF;
}




/* “Wear your failures as a badge of honor.” */
.theme2 > p{
position: absolute;
width: 290px;
height: 87px;
left: 333px;
top: 1670px;

font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 18px;
line-height: 30px;
/* or 167% */
letter-spacing: 0.05em;

color: #9D9D9D;
}



/* image 4 */
.theme2 >img{
position: absolute;
width: 187px;
height: 224px;
left: 123px;
top: 1535px;

background: url(image.png);
border-radius: 18px;
}

</style>

<div class="card text-${content.alignment!"left"} ${(bgColor != "default")?then("bg-" + bgColor, "")}">
<div class="${content.theme}">
        ${content.theme}
    </div>
    [#if (imagePosition == "top") && asset?has_content]
        <img src="${imgAsset.getLink()}" class="card-img-${imagePosition} img-thumbnail" alt="${imgAsset.getTitle()}"/>
    [/#if]
    <div class="card-body ${textColorClass!}">
        <h2 class="card-text ">${title}</h2>
        <p class="card-text">${text}</p>
        [#if hrefValue?has_content]
            <a href="${hrefValue}" class="btn btn-${btnColor} btn-lg">${linkText!}</a>
        [/#if]
    </div>
    [#if imagePosition == "bottom" && assetRend?has_content]
        <img src="${assetRend.link}" class="card-img-${imagePosition} img-thumbnail" alt="${asset.title!}"/>
    [/#if]
</div>








