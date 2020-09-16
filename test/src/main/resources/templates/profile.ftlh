<#import "partials/main.ftlh" as main />
<#import "partials/pager.ftlh" as p />

<@main.renderWith styles=["/css/cards.css"] scripts=["/js/profile.js"]>

    <div class="my-5 row">
        <div class="card col-3 px-0 ml-0">
            <#if user??>
                <img src="/img/${user.image}" class="card-img-top" alt="no-image">
                <div class="card-body">
                    <h5 class="card-title text-capitalize">${user.name!'name'} ${user.surname!'surname'}</h5>
                    <p class="card-text clip">${user.abMe!'about me'}</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item d-flex">Birthdate: <span
                                class="ml-auto">${user.birthdate!'birthdate'}</span></li>
                    <li class="list-group-item d-flex">Role: <span class="ml-auto">${user.role}</span></li>
                    <li class="list-group-item d-flex">Address: <span class="ml-auto">${user.address!'address'}</span>
                    </li>
                    <a href="${user.id}/news">
                        <li class="list-group-item d-flex">All news: <span
                                    class="ml-auto">${user.newsCount!'news count'}</span></li>
                    </a>
                </ul>
            </#if>
        </div>
        <div class="col-9 ml-auto">
            <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-me" role="tab"
                       aria-controls="nav-home" aria-selected="true">About me</a>
                    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-news" role="tab"
                       aria-controls="nav-profile" aria-selected="false">Last news</a>
                </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-me" role="tabpanel" aria-labelledby="nav-home-tab">
                    <div class="p-4 my-3 border rounded">
                        <p>${user.abMe!'no info!'}</p>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-news" role="tabpanel" aria-labelledby="nav-profile-tab">
                    <#if userLastNews??>
                        <div class="p-4 my-3 border rounded">

                            <div class="row row-cols-1">
                                <#list userLastNews as news>
                                    <a href="/news/${news.id}" class="card mb-3 mr-1"
                                       style="max-height: 200px; text-decoration: none;">
                                        <div class="row no-gutters">
                                            <div class="col-2">
                                                <img src="/img/${news.image}" class="card-img" alt="no-image">
                                            </div>
                                            <div class="col-10">
                                                <div class="card-body">
                                                    <h5 class="card-title">${news.title}</h5>
                                                    <p class="card-text clip">${news.descr}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </#list>
                            </div>
                        </div>
                    </#if>
                </div>
            </div>
        </div>

    </div>

</@main.renderWith>