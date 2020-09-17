<#import "partials/main.ftlh" as main />
<#import "partials/pager.ftlh" as p />

<@main.renderWith styles=["/css/cards.css"]>

    <div class="container my-5">
        <#if news??>
            <div class="row border rounded p-2 justify-content-between">
                <div class="col-2 mr-2">
                    <img src="/img/${news.image!'no-image.jpg'}" class="rounded img-thumbnail"
                         style="max-height: 200px; max-width: 200px;" alt="${news.title}">
                </div>
                <div class="col-9">
                    <h2 class="text-center text-uppercase">${news.title}</h2>
                    <p class="text-center">${news.descr}</p>
                    <p class="row my-2 py-2"><span>Date: ${news.date}</span><span class="ml-auto"><a
                                    class="text-uppercase" href="/users/${news.user.id}">${news.user.login}</a></span>
                    </p>
                </div>

            </div>
        </#if>
    </div>

</@main.renderWith>