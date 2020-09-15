<#import "partials/main.ftlh" as main />
<#import "partials/pager.ftlh" as p />

<@main.renderWith styles=["/css/cards.css"]>

    <div class="container my-5">
        <#if todayNews ??>
            <div class="row row-cols-1 justify-content-between row-cols-md-3">
                <#list todayNews.content as news>
                    <a href="/" class="card mb-3 mr-1" style="max-width: 540px; text-decoration: none;">
                        <div class="row no-gutters">
                            <div class="col-md-4 col-sm-2">
                                <img src="/img/${news.image}" class="card-img" alt="no-image">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">${news.title}</h5>
                                    <p class="card-text clip">${news.descr}</p>
                                    <p class="card-text d-flex"><small class="text-muted">${news.date}</small> <small class="text-muted ml-auto">${news.user.name}</small> </p>
                                </div>
                            </div>
                        </div>
                    </a>
                </#list>
            </div>
        </#if>
        <@p.pager url todayNews />
    </div>

</@main.renderWith>