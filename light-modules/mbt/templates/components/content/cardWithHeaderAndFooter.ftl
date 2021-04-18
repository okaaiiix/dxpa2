[#assign page = cmsfn.page(content)!]

[#include "/mbt/templates/macros/commons.ftl"/]
[@assignSpacingAndBorders content/]
[#assign paraText =  cmsfn.decode(content).text!/]
[#assign alignment = content.alignment!""/]
[#assign alignmentBody = content.alignmentBody!""/]
[#assign alignmentFooter = content.alignmentFooter!""/]
[#include "/mbt/templates/macros/linksSwitchable.ftl"]
[#assign imgItemKey = content.image!/]
[#if imgItemKey?has_content]
    [#assign asset = damfn.getAsset(imgItemKey)!/]
[/#if]
[@assignLink content "linkType"/]
<style>

/* CEO Card */
.card.theme1{
border-radius: 40px;
background: #EDEDED;
padding: 20px;
font: Roboto;
}

/* Rectangle 9 */
.theme1 > .carddiv{
background: transparent;
border:None;
padding:0;
}

/* Sundar Pichai */
.card.theme1>.row>.col-8> .card-header{
color: #7A8FFF;
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 30px;
line-height: 40px;
letter-spacing: 0.05em;

}

.theme1>.row>.col-8> .card-body > .cardh3{
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 24px;
color: #A8A8A8;
line-height: 40px;

/* or 133% */

letter-spacing: 0.05em;
}


/* “Wear your failures as a badge of honor.” */
.theme1 >.row>.col-8> .card-body > .cardp{
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 18px;
line-height: 30px;

/* or 167% */

letter-spacing: 0.05em;
color: #9D9D9D;
}

.card.theme1 > .carddiv > .cardImage{
background: url(image.png);
border-radius: 18px;
width: 215px;
height: 215px;
}



/* CEO Card */
.card.theme2{
border-radius: 40px;
background: #0A142F;
padding: 20px;
font: Roboto;
}



/* Rectangle 9 */
.theme2 > .carddiv{

background: transparent;
border-radius: 40px;
}


/* Sundar Pichai */
.card.theme2> .row>.col-8> .card-header{
color: #FFFFFF;
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 30px;
line-height: 40px;
letter-spacing: 0.05em;

}

.theme2>.row>.col-8 .card-body > .cardh3{
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 24px;
color: #A8A8A8;
line-height: 40px;

/* or 133% */

letter-spacing: 0.05em;
}


/* “Wear your failures as a badge of honor.” */
.theme2 >.row>.col-8> .card-body > .cardp{
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 18px;
line-height: 30px;
letter-spacing: 0.05em;
color: #9D9D9D;
}



/* image 4 */
.card.theme2 >.carddiv > .cardImage{

background: url(image.png);
border-radius: 18px;
width: 215px;
height: 215px;
}

/* CEO Card */
.card.theme3{
border-radius: 40px;
background: #FFFFFF;
padding: 20px;
font: Roboto;
}



/* Rectangle 9 */
.theme3 > .carddiv{

background: transparent;
border-radius: 40px;
}


/* Sundar Pichai */
.card.theme3> .row>.col-8> .card-header{
color: #2B2B2B;
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 30px;
line-height: 40px;
letter-spacing: 0.05em;

}

.theme3>.row>.col-8 .card-body > .cardh3{
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 24px;
color: #A8A8A8;
line-height: 40px;

/* or 133% */

letter-spacing: 0.05em;
}


/* “Wear your failures as a badge of honor.” */
.theme3 >.row>.col-8> .card-body > .cardp{
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 18px;
line-height: 30px;
letter-spacing: 0.05em;
color: #9D9D9D;
}



/* image 4 */
.card.theme3 >.carddiv > .cardImage{

background: url(image.png);
border-radius: 18px;
width: 215px;
height: 215px;
}

</style>



<div class="card   mt-${marginTop} mb-${marginBottom} [#if content.theme?has_content][#if content.theme=="notheme"]${page.pagetheme}[#else]${content.theme}[/#if][#else]${page.pagetheme}[/#if]"">

    [#if content.headerText?has_content]
    <div class="row">
        
        <div class="col-8">
        <div class="card-header text-${alignment} carddiv">
        ${content.headerText!}
        </div>
    [/#if]
    <div class="card-body text-${alignmentBody} carddiv">
        
        [#if content.cardsubtitle?has_content]<h3 class="card-subtitle cardh3">${content.cardsubtitle}</h3>[/#if]
        
        <div class="card-text cardp">${paraText!} </div>
        </div>
        [#if hrefValue?has_content]
        <a href="${hrefValue}" class="btn btn-${content.color!}">${linkText}</a>
        [/#if]
    </div>
            <div class="col-4" style="margin: 0 auto;height: 100%;">
        [#if asset?has_content]
        [#assign assetRend = damfn.getRendition(asset, "240x180")/]
            <img class="cardImage" src="${assetRend.link}" alt=" ${asset.title!}"style="margin-top: 25px; WIDTH:150px; HEIGHT:150px;border-radius:75%;text-align: center;">
        [/#if]
        </div>
        </div>
    [#if content.footerText?has_content]
    <div class="card-footer text-muted text-${alignmentFooter} carddiv">
       ${content.footerText!}
    </div>
    [/#if]
</div>

  