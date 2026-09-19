<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @include('backend.layouts.styles')
    <link rel="icon" type="image/png" href="{{ asset(Helper::getSettings('site_favicon')) }}?v={{ time() }}">
    <link rel="apple-touch-icon" href="{{ asset(Helper::getSettings('site_favicon')) }}?v={{ time() }}">


    <style>
        .loging_page_logo{
    height: 100px;
    width: 100px;
    background: #fff;
    border-radius: 50%;
    margin: 0 auto;
    border: 1px solid #ca9f3a;
    padding: 5px;
}
.loging_page_logo img{
    object-fit: contain;
}
.login-form a, .login-form p{
    color: #dbb652 !important;
}
 .btn-primary:hover, .login-form .btn {
    color: #fff !important;
    background: #dbb652 !important;
    border-color: #dbb652 !important;
}
    </style>
</head>

<body class="login">
    <div class="bg bg-image">
        <div class="bgoverlay">
            <div class="wrapper wrapper-login">
                <div class="container container-login animated fadeIn">
                    <!-- <h3 class="text-center">Login</h3> -->
                    <div class="row loging_page_logo text-center">
                        <img src="{{ Helper::getSettings('site_logo') }}" alt="">
                    </div>
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
