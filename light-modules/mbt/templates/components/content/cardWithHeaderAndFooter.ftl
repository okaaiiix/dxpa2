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
.card.theme1> .card-header{
color: #7A8FFF;
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 30px;
line-height: 40px;
letter-spacing: 0.05em;

}

.theme1> .card-body > .cardh3{
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
.theme1 > .card-body > .cardp{
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
display: block;
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
.card.theme2> .card-header{
color: #FFFFFF;
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 30px;
line-height: 40px;
letter-spacing: 0.05em;

}

.theme2> .card-body > .cardh3{
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
.theme2 > .card-body > .cardp{
font-family: Roboto;
font-style: normal;
font-weight: normal;
font-size: 18px;
line-height: 30px;
letter-spacing: 0.05em;
color: #9D9D9D;
}



/* image 4 */
.theme2 >img{

background: url(image.png);
border-radius: 18px;
}

</style>



<div class="card ${content.theme}  mt-${marginTop} mb-${marginBottom}">

    [#if content.headerText?has_content]
        <div class="card-header text-${alignment} carddiv">
        ${content.headerText!}
        </div>
    [/#if]
    <div class="card-body text-${alignmentBody} carddiv">
        [#if content.cardsubtitle?has_content]<h3 class="card-subtitle cardh3">${content.cardsubtitle}</h3>[/#if]
        <div class="card-text cardp">${paraText!} </div>
        [#if hrefValue?has_content]
        <a href="${hrefValue}" class="btn btn-${content.color!}">${linkText}</a>
        [/#if]
        [#if asset?has_content]
        [#assign assetRend = damfn.getRendition(asset, "240x180")/]
            <img class="cardImage" src="${assetRend.link}" alt=" ${asset.title!}"style="position:absolute; TOP:35px; LEFT:350px; WIDTH:150px; HEIGHT:150px">
        [/#if]
    </div>
    [#if content.footerText?has_content]
    <div class="card-footer text-muted text-${alignmentFooter} carddiv">
       ${content.footerText!}
    </div>
    [/#if]
</div>