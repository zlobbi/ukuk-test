<#import "partials/main.ftlh" as main />
<#import "partials/pager.ftlh" as p />

<@main.renderWith styles=["/css/cards.css"]>

    <div class="container my-5">
        <#if news??>
            <#if news.author == true>
            ok
            <#else > no
            </#if>

        </#if>
    </div>

</@main.renderWith>