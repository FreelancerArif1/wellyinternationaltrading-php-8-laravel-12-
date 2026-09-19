@php
    use App\Models\Service;
    $services = Service::where('status', 1)->select('title', 'slug')->orderBy('serial', 'asc')->get();
@endphp
<style>
   
</style>
<nav id="mainvanbar" class="navbar navbar-expand-lg navbar-light bg-white sticky-top shadow-sm">
    <div class="container">
        <a class="navbar-brand d-flex align-items-center nav_logo" href="/">
            <img src="{{ Helper::getSettings('site_logo') ? asset(Helper::getSettings('site_logo')) : '/logo.png' }}" alt="logo-image">
        </a>

        <!-- Custom Toggle Button -->
        <button class="navbar-toggler welly_toggle_btn" type="button" aria-controls="mainNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="mainNav">
            <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link {{ request()->routeIs('home') ? 'active' : '' }} fw-medium" href="{{ route('home') }}">
                        HOME
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link {{ request()->routeIs('about') ? 'active' : '' }} fw-medium" href="/#about-us">
                        ABOUT US
                    </a>
                </li>

                <!-- Dropdown Item -->
                <li class="nav-item dropdown hover-dropdown custom-corner-item">
                    <a class="nav-link fw-medium dropdown-toggle-changed welly_service_btn {{ request()->is('service/*') ? 'active' : '' }}"
                       id="servicesDropdown"
                       href="javascript:void(0);"
                       role="button">
                        OUR SERVICES
                    </a>

                    <ul class="dropdown-menu top-pointer-dropdown" aria-labelledby="servicesDropdown">
                        @foreach($services as $service)
                            <li>
                                <a class="dropdown-item" href="/service/{{ $service->slug }}">
                                    {{ $service->title }}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </li>

                <li class="nav-item">
                    <a class="nav-link {{ request()->routeIs('news') ? 'active' : '' }} fw-medium" href="{{ route('news') }}">
                        NEWS
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link {{ request()->routeIs('contact') ? 'active' : '' }} fw-medium" href="{{ route('contact') }}">
                        CONTACT US
                    </a>
                </li>
            </ul>
            <a href="/contact-us" class="btn btn-danger px-4 rounded-1">Request a Quote</a>
        </div>
    </div>
</nav>

<script>
    $(document).ready(function () {
    // 1. Navbar Toggler Button Logic
    $('.welly_toggle_btn').on('click', function (e) {
        e.preventDefault();

        var $nav = $('#mainNav');

        // Check navbar state after 2 seconds
        setTimeout(function () {
            if ($nav.hasClass('welly_open')) {
                $nav.removeClass('welly_open');
                // Also hide dropdown if navbar is closed
                $nav.find('.dropdown-menu').removeClass('welly_dropdown_open');
            } else {
                $nav.addClass('welly_open');
            }
        }, 10); // 2-second delay
    });

    // 2. "OUR SERVICES" Click Logic (Mobile Only)
    $('.welly_service_btn').on('click', function (e) {
        if ($(window).width() < 992) {
            e.preventDefault();
            // Toggle dropdown open/close state when clicking Our Services
            $(this).siblings('.dropdown-menu').toggleClass('welly_dropdown_open');
        }
    });
});
</script>