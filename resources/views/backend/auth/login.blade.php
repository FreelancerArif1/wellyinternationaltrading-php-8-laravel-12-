@extends('backend.auth.master')
{{-- {{ Helper::getSettings('site_logo') ? asset(Helper::getSettings('site_logo')) : asset('assets/img/favicon.png') }} --}}
@section('content')
    <form method="POST" action="{{ url('login-post') }}">
        @csrf

        <div class="form-group">
            <label for="email"><b>@lang('Email')</b></label>
            <input id="email" name="email" type="text" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="password"><b>@lang('Password')</b></label>
            <a href="#" class="link float-end">@lang('Forgot Password') ?</a>
            <div class="position-relative">
                <input id="password" name="password" type="password" class="form-control" required>
                <div class="show-password">
                    <i class="icon-eye"></i>
                </div>
                {{-- <x-validation key="password" /> --}}
            </div>
        </div>

        <div class="form-group form-action-d-flex mb-3">
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="rememberme" name="remember">
                <label class="custom-control-label m-0" for="rememberme">@lang('Remember Me')</label>
            </div>
            <button class="btn btn-primary col-md-5 float-end mt-3 mt-sm-0 fw-bold">@lang('Sign In')</button>
        </div>
    </form>
@endsection
