<#import "partials/main.ftlh" as main />

<@main.renderWith styles=["/css/forms.css"]>

    <div class="container p-5">
        <div class="formContent border border-dark mt-5">
            <h2 class="my-3" style="font-size: 21px"> New user </h2>
            <form action="/add-user" method="post" id="myform">
                <div style="margin: 1rem">
                    <#if errors?? >
                        <#list errors as fieldError>
                            <strong><p style="color:#fd7777">${fieldError.defaultMessage!'-- no message --'}</p>
                            </strong>
                        </#list>
                    </#if>
                </div>
                <#if _csrf??>
                    <input type="hidden" class="field" name="${(_csrf.parameterName)!'csrf'}"
                           value="${(_csrf.token)!'--no-token--'}"/>
                </#if>
                <div>
                    <input id="name" type="text" class="fadeIn" name="name" placeholder="name" value="${userForm.name!''}" required>
                </div>
                <div>
                    <input id="surname" type="text" class="fadeIn" name="surname" placeholder="surname" required>
                </div>
                <div class="d-flex justify-content-center">
                    <div class="rounded py-3 birthdate">
                        <span class="py-2 px-auto my-2">Birthdate: <input id="birthdate" type="date" class="fadeIn"
                                                                          name="birthdate" required></span>
                    </div>
                </div>
                <div>
                    <input id="address" type="text" class="fadeIn" name="address" placeholder="address" required>
                </div>
                <div>
                    <input id="login" type="text" class="fadeIn" name="login" placeholder="login" required>
                </div>
                <div>
                    <input id="password" type="password" class="fadeIn" name="password" required
                           placeholder="enter password">
                </div>
<#--                <div>-->
<#--                    <input type="password" id="confirm-password" name="passwordConfirm" class="fadeIn" required-->
<#--                           placeholder="confirm password">-->
<#--                </div>-->

                <div class="d-flex justify-content-center">
                    <div class="rounded py-3 birthdate">
                        <#list roles as role>
                            <input type="radio" id="${role}" name="role" value="${role}"> <label for="${role}">${role}</label>
                        </#list>
                    </div>
                </div>


                <input type="submit" class="fadeIn" style="margin-bottom: 15px" value="Add">
            </form>

            <div id="formFooter" style="margin: 0; padding: 15px">
                <a class="underlineHover" style="font-size: 17px; text-decoration: none"
                   href="/users/${user.id}">Cancel</a>
            </div>

        </div>
    </div>
</@main.renderWith>