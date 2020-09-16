<#import "partials/main.ftlh" as main />

<@main.renderWith title="converter" styles=["/css/login.css"]>
    <div class="container">
        <div class="alert alert-danger text-center" role="alert" style="margin-top: 20px; align-content: center">
            <div style="max-width: 300px;" class="text-left">
                <p>ADMIN : login: admin, password: 11111111 </p>
                <p>USER: login: user, password: 11111111</p>
            </div>
        </div>
        <div class="wrapper fadeInDown">
            <div id="formContent" class="border border-dark">
                <form action="/login" method="post">
                    <div style="margin: 1rem">
                        <#if error!false >
                            <p style="color:#fd7777"><strong>Wrong login or password!</strong></p>
                        </#if>
                    </div>
                    <#if _csrf??>
                        <input type="hidden" name="${(_csrf.parameterName)!'csrf'}"
                               value="${(_csrf.token)!'--no-token--'}"/>
                    </#if>
                    <input type="text" id="login" class="fadeIn" name="username" placeholder="login" autofocus required>
                    <input type="password" id="password" class="fadeIn" name="password" placeholder="password" required>
                    <input type="submit" class="fadeIn" value="Sign in">
                </form>

            </div>
        </div>
    </div>
</@main.renderWith>