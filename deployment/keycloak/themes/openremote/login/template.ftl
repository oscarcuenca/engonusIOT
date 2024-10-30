<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sign in</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico">
    <style>
        body {
            background: #ffffff;
            margin: 0;
            padding: 0;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
        }

        .login-container {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            padding: 20px;
        }

        .login-box {
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        .logo {
            width: 150px; /* Tamaño reducido del logo */
            height: auto;
            margin-bottom: 40px;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-input {
            width: 100%;
            padding: 8px 12px;
            border: none;
            border-bottom: 2px solid #ddd;
            font-size: 16px;
            transition: all 0.3s;
            background: transparent;
            box-sizing: border-box;
        }

        .form-input:focus {
            outline: none;
            border-bottom-color: #00BFFF;
        }

        .form-label {
            display: block;
            margin-bottom: 8px;
            color: #666;
            font-size: 14px;
        }

        .submit-button {
            padding: 10px 30px;
            background-color: #00BFFF !important;
            border: none;
            border-radius: 4px;
            color: white;
            font-weight: 500;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            width: auto;
            min-width: 120px;
        }

        .submit-button:hover {
            background-color: #00ace6 !important;
        }

        .input-group {
            position: relative;
            margin-bottom: 30px;
        }

        .input-line {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 2px;
            background-color: #00BFFF;
            transition: width 0.3s;
        }

        .form-input:focus ~ .input-line {
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-box">
            <img src="${url.resourcesPath}/img/logo.png" alt="Logo" class="logo">
            <form id="kc-form-login" action="${url.loginAction}" method="post">
                <div class="input-group">
                    <input id="username" name="username" type="text" class="form-input" autofocus autocomplete="off" required />
                    <label for="username" class="form-label">Username</label>
                    <div class="input-line"></div>
                </div>
                <div class="input-group">
                    <input id="password" name="password" type="password" class="form-input" required />
                    <label for="password" class="form-label">Password</label>
                    <div class="input-line"></div>
                </div>
                <button type="submit" class="submit-button" name="login">Sign In</button>
            </form>
        </div>
    </div>
</body>
</html>
