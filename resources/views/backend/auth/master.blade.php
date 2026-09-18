<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @include('backend.layouts.styles')
    <link rel="icon" type="image/png" href="{{ asset(Helper::getSettings('site_favicon')) }}?v={{ time() }}">
    <link rel="apple-touch-icon" href="{{ asset(Helper::getSettings('site_favicon')) }}?v={{ time() }}">

</head>

<body class="login">
    <div class="bg bg-image">
        <div class="bgoverlay">
            <div class="wrapper wrapper-login">
                <div class="container container-login animated fadeIn">
                    <h3 class="text-center">Login</h3>
                    <div class="login-form">
                        @yield('content')
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('backend.layouts.scripts')

</body>

</html>
