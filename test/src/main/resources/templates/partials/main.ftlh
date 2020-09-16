<#macro renderWith title="Test-NEWS!" scripts=[] styles=[]>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

        <title>${title}</title>

        <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
              integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
              crossorigin="anonymous"/>

        <#list styles as styleSource>
            <link rel="stylesheet" href="${styleSource}"/>
        </#list>
    </head>

    <body>

    <header class="header border-bottom border-dark">
        <div class="container">
            <#if user??>
                <div class="row py-2">
                    <a href="/" class="btn mr-2 border rounded btn-light">Home</a>
                    <a class="btn btn-light border rounded text-capitalize" href="/users/${user.id}">${user.name}</a>
                    <form action="/logout" method="post" class="exit-form ml-auto">
                        <#if _csrf??>
                            <input type="hidden" name="${(_csrf.parameterName)!'csrf'}"
                                   value="${(_csrf.token)!'--no-token--'}"/>
                        </#if>
                        <button type="submit" class="btn mx-auto border rounded btn-light">Logout</button>
                    </form>
                </div>
            <#else >
                <div class="row py-2">
                    <a href="/" class="btn mr-auto border rounded btn-light">Home</a>

                    <a href="/login" class="btn ml-auto border rounded btn-light">Sign in</a>
                </div>
            </#if>
        </div>
    </header>

    <#list scripts as scriptSource>
        <script src="${scriptSource}"></script>
    </#list>

    <div class="container">
        <#nested>
    </div>

    </body>

    <footer class="footer mt-5 py-1 border-top border-dark">
        <div class="container mt-3 text-right">
            <p class="">kadyrbek.mavlyanov@gmail.com</p>
        </div>
    </footer>

    </html>

</#macro>
