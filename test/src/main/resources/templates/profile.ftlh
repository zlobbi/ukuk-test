<#import "partials/main.ftlh" as main />
<#import "partials/pager.ftlh" as p />

<@main.renderWith styles=["/css/cards.css"]>

    <div class="my-5 row">
        <div class="card col-3 px-0 ml-0">
            <#if userProfile??>
                <img src="/img/${userProfile.image!'no-image-profile.jpg'}" class="card-img-top" alt="no-image">
                <div class="card-body">
                    <h5 class="card-title text-capitalize">${userProfile.name!'name'} ${userProfile.surname!'surname'}</h5>
                    <p class="card-text clip">${userProfile.abMe!'about me'}</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item d-flex">Birthdate: <span
                                class="ml-auto">${userProfile.birthdate!'birthdate'}</span></li>
                    <li class="list-group-item d-flex">Role: <span class="ml-auto">${userProfile.role}</span></li>
                    <li class="list-group-item d-flex">Address: <span
                                class="ml-auto">${userProfile.address!'address'}</span>
                    </li>
                    <a href="${userProfile.id}/news">
                        <li class="list-group-item d-flex">All news: <span
                                    class="ml-auto">${userProfile.newsCount!'news count'}</span></li>
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
                    <#if userProfile?? && user?? && userProfile.role == 'ADMIN' && user.id == userProfile.id>
                        <a class="nav-item nav-link" id="nav-users-tab" data-toggle="tab" href="#nav-users" role="tab"
                           aria-controls="nav-users" aria-selected="false">Users</a>
                    </#if>
                </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-me" role="tabpanel" aria-labelledby="nav-home-tab">
                    <div class="p-4 my-3 border rounded">
                        <#if update?? && update == false>
                            <div class="alert alert-danger d-block" role="alert">
                                No value presented for field About me!
                            </div>
                        </#if>
                        <p>${userProfile.abMe!'no info!'}</p>
                        <div class="row ml-auto px-3">
                            <#if user?? && user.id == userProfile.id>
                                <button type="button" class="btn ml-auto mr-1 btn-info" data-toggle="modal"
                                        data-target="#editAbMeModal">
                                    edit
                                </button>
                            </#if>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-news" role="tabpanel" aria-labelledby="nav-profile-tab">
                    <#if errors??>
                        <div class="alert alert-danger d-block my-1" role="alert">
                            <#list errors as er>
                                <p>${er.defaultMessage}</p>
                            </#list>
                        </div>
                    </#if>
                    <#if isSaved?? && isSaved == true>
                        <div class="alert alert-success d-block my-1" role="alert">
                            <p>News added!</p>
                        </div>
                    </#if>
                    <div class="p-4 my-3 border rounded">
                        <#if userLastNews??>
                            <div class="row row-cols-1">
                                <#list userLastNews as news>
                                    <a href="/news/${news.id}" class="card mb-3 mr-1"
                                       style="max-height: 200px; text-decoration: none;">
                                        <div class="row no-gutters">
                                            <div class="col-2">
                                                <img src="/img/${news.image!'no-image.jpg'}" class="card-img"
                                                     alt="no-image">
                                            </div>
                                            <div class="col-10" style="width: 100%;">
                                                <div class="card-body">
                                                    <h5 class="card-title">${news.title}</h5>
                                                    <p class="card-text clip">${news.descr}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </#list>

                            </div>
                        </#if>
                        <div class="row ml-auto px-3">
                            <#if user?? && user.id == userProfile.id>
                                <button type="button" class="btn ml-auto d-flex mr-1 btn-info"
                                        data-toggle="modal" data-target="#addNewsModal">
                                    Add news
                                </button>
                            </#if>
                        </div>
                    </div>
                </div>
                <#if users??>
                    <div class="tab-pane fade" id="nav-users" role="tabpanel" aria-labelledby="nav-users-tab">
                        <div class="p-4 my-3 border rounded">
                            <div class="card card-body" style="padding: 2px">
                                <table class="table" style="margin: 0; border-radius: 3%; text-align: center">
                                    <th style="font-weight: bolder; font-size: 16px"> Login</th>
                                    <th style="font-weight: bolder; font-size: 16px"> Full name</th>
                                    <th style="font-weight: bolder; font-size: 16px"> Birthdate</th>
                                    <th style="font-weight: bolder; font-size: 16px"> Role</th>
                                    <th style="font-weight: bolder; font-size: 16px"> Address</th>
                                    <#list users as u>
                                        <tbody>
                                        <tr class="user-details" onclick="location.href='/update-user/${u.id}'">
                                            <td>${u.login!'no-login'}</td>
                                            <td>${u.name!'no-name'} ${u.surname!'no-surname'}</td>
                                            <td>${u.birthdate}</td>
                                            <td>${u.role!"no-role"}</td>
                                            <td>${u.address!"no-address"}</td>
                                        </tr>
                                        </tbody>
                                    </#list>
                                </table>
                            </div>
                            <div class="text-center">
                                <a class="btn btn-info justify-content-center" role="button" href="/add-user"
                                   style="font-size: 15px; width: 30%; margin: 10px"> Add user </a>
                            </div>
                        </div>
                    </div>
                </#if>
            </div>
        </div>
    </div>
    <div class="modal fade" id="editAbMeModal" tabindex="-1" role="dialog" aria-labelledby="editAbMeModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editAbMeModalLabel">New info about you.</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="post" action="/edit-about-me/${userProfile.id}">
                        <#if _csrf??>
                            <input type="hidden" class="field" name="${(_csrf.parameterName)!'csrf'}"
                                   value="${(_csrf.token)!'--no-token--'}"/>
                        </#if>
                        <div class="form-group">
                            <label for="abMe-text" class="col-form-label">About me:</label>
                            <textarea class="form-control" name="abMe" id="abMe-text"></textarea>
                        </div>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-info">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="addNewsModal" tabindex="-1" role="dialog" aria-labelledby="addNewsModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addNewsModalLabel">Adding news!</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="post" action="/news/add" enctype="multipart/form-data">
                        <#if _csrf??>
                            <input type="hidden" class="field" name="${(_csrf.parameterName)!'csrf'}"
                                   value="${(_csrf.token)!'--no-token--'}"/>
                        </#if>
                        <input name="userId" value="${userProfile.id}" hidden>
                        <div class="form-group">
                            <label for="title-text" class="col-form-label">Title:</label>
                            <input class="form-control" name="title" id="title-text">
                            <label for="message-text" class="col-form-label">Text:</label>
                            <textarea class="form-control" name="text" id="message-text"></textarea>
                            <label for="image" class="col-form-label">Image:</label>
                            <input type="file" id="image" name="image">
                        </div>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-info">Add news</button>
                    </form>
                </div>
            </div>
        </div>
    </div>



</@main.renderWith>