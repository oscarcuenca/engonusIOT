<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="robots" content="noindex, nofollow">

    <title>${msg("loginTitle",(realm.displayName!''))}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico"/>
    <link type="text/css" rel="stylesheet" href="${url.resourcesPath}/css/materialize.min.css" media="screen,projection"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css"/>
    <script type="text/javascript" src="${url.resourcesPath}/js/materialize.min.js"></script>
</head>

<body>
<div id="outer-wrapper">
    <div id="wrapper">
        <div class="row">
            <div class="col s10 m6 l4 offset-s1 offset-m3 offset-l4">
                <div class="row">
                    <div class="row">
                        <div class="col s12 center">
                            <div id="header-wrapper">
                                <img id="logo" src="${url.resourcesPath}/img/logo.png" alt="Logo"/>
                                <div class="left-align">
                                    <h5 id="header">${realm.displayName!''}</h5>
                                    <p id="sub-header">OpenRemote</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col s12">
                        <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="username"
                                           required
                                           class="validate ${properties.kcInputClass!}"
                                           name="username"
                                           value="${(login.username!'')}"
                                           type="text"
                                           autofocus
                                           autocomplete="off"/>
                                    <label for="username">${msg("username")}</label>
                                </div>

                                <div class="input-field col s12">
                                    <input id="password"
                                           required
                                           class="validate ${properties.kcInputClass!}"
                                           name="password"
                                           type="password"
                                           autocomplete="off"/>
                                    <label for="password">${msg("password")}</label>
                                </div>
                            </div>

                            <div class="col s12 center-align">
                                <button class="btn waves-effect waves-light ${properties.kcButtonClass!}" type="submit" name="login">
                                    ${msg("doLogIn")}
                                    <i class="material-icons right">send</i>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
