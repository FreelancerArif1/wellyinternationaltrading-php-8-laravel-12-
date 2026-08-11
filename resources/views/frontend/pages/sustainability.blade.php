@extends('frontend.layouts.app')
@section('title', 'Sustainability | ' . Helper::getSettings('application_name') ?? 'Livenza Group')
@section('content')
    <style>
        .section-padding {
            --padding-top: 50px;
            --padding-bottom: 50px;
        }
    </style>
    <main id="sustainability_page">
        <div class="page-banner overlay">
            <div class="media media-bg">
                @if ($sustainability?->banner_video)
                    <video class="full-video" autoplay muted loop playsinline>
                        <source src="{{ $sustainability?->banner_video }}" type="video/mp4">
                    </video>
                @else
                    <img src="{{ $sustainability?->banner_image }}" width="1920" height="520" loading="eager"
                        alt="Page Banner Image">
                @endif

            </div>
            <div class="page-banner-content">
                <div class="container text-left">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="left_side_about">
                                @if ($sustainability?->banner_title)
                                    <h3 class="heading text-40 fw-700 text-uppercase mb-4" data-aos="fade-up">
                                        {{ $sustainability?->banner_title }}
                                    </h3>
                                @endif
                                @if ($sustainability?->banner_description)
                                    <div class="about_main_paragraph" data-aos="fade-up" data-aos-delay="200">
                                        {!! $sustainability?->banner_description !!}
                                    </div>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6"></div>
                    </div>
                </div>
            </div>
        </div>

        @if ($sustainability?->block_one_title)
            <div class="image-text image-text-video section-padding overflow-x-hidden">
                <div class="container">
                    <div class="section-content">
                        <div class="row product-grid align-items-xl-center">
                            <div class="col-lg-5 col-12">
                                <modal-video class="video-wrap height-100">
                                    <div class="image radius18 height-100" data-aos="fade-right">
                                        <img src="{{ $sustainability?->block_one_image }}" width="1000" height="742"
                                            loading="lazy" alt="Image">
                                        @if ($sustainability?->block_one_video)
                                            <div class="content-absolute">
                                                <div
                                                    class="flex-banner height-inherit d-flex align-items-center justify-content-center">
                                                    <div class="content-box">
                                                        <div class="button button--secondary open-video">
                                                            <svg class="icon-24" viewBox="0 0 12 12" fill="none"
                                                                xmlns="http://www.w3.org/2000/svg">
                                                                <path
                                                                    d="M10.858 5.1281C11.5377 5.51041 11.5377 6.48895 10.858 6.87125L2.04588 11.8281C1.37927 12.203 0.555618 11.7213 0.555618 10.9565V1.04285C0.555618 0.278027 1.37928 -0.203685 2.04588 0.171279L10.858 5.1281Z"
                                                                    fill="currentColor" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif
                                    </div>
                                    <div class="video-modal">
                                        <div class="video-modal-inner">
                                            <span class="close">
                                                <svg class="icon-18" xmlns="http://www.w3.org/2000/svg" fill="none"
                                                    viewBox="0 0 24 24" stroke="currentColor">
                                                    <path d="M6 18 18 6M6 6l12 12" />
                                                </svg>
                                            </span>
                                            <video class="video-frame" width="100%" height="100%" controls>
                                                <source src="{{ $sustainability?->block_one_video }}" type="video/mp4">
                                            </video>
                                        </div>
                                    </div>
                                </modal-video>

                            </div>
                            <div class="col-lg-7 col-12">
                                <div class="px-lg-4 section-headings" data-aos="fade-left">
                                    <h4 class="heading text-40 fw-700 text-uppercase" data-aos="fade-up">
                                        {{ $sustainability?->block_one_title }}
                                    </h4>
                                    <div class="text text-18">
                                        {!! $sustainability?->block_one_description !!}
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif

        @if ($sustainability?->block_two_title)
            <div class="image-text image-text-video section-padding overflow-x-hidden">
                <div class="container">
                    <div class="section-content">
                        <div class="row product-grid align-items-xl-center">
                            <div class="col-lg-7 col-12">
                                <div class="px-lg-4 section-headings" data-aos="fade-left">
                                    <h4 class="heading text-40 fw-700 text-uppercase" data-aos="fade-up">
                                        {{ $sustainability?->block_two_title }}
                                    </h4>
                                    <div class="text text-18">
                                        {!! $sustainability?->block_two_description !!}
                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-5 col-12">
                                <modal-video class="video-wrap height-100">
                                    <div class="image radius18 height-100" data-aos="fade-right">
                                        <img src="{{ $sustainability?->block_two_image }}" width="1000" height="742"
                                            loading="lazy" alt="Image">
                                        @if ($sustainability?->block_two_video)
                                            <div class="content-absolute">
                                                <div
                                                    class="flex-banner height-inherit d-flex align-items-center justify-content-center">
                                                    <div class="content-box">
                                                        <div class="button button--secondary open-video">
                                                            <svg class="icon-24" viewBox="0 0 12 12" fill="none"
                                                                xmlns="http://www.w3.org/2000/svg">
                                                                <path
                                                                    d="M10.858 5.1281C11.5377 5.51041 11.5377 6.48895 10.858 6.87125L2.04588 11.8281C1.37927 12.203 0.555618 11.7213 0.555618 10.9565V1.04285C0.555618 0.278027 1.37928 -0.203685 2.04588 0.171279L10.858 5.1281Z"
                                                                    fill="currentColor" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif
                                    </div>
                                    <div class="video-modal">
                                        <div class="video-modal-inner">
                                            <span class="close">
                                                <svg class="icon-18" xmlns="http://www.w3.org/2000/svg" fill="none"
                                                    viewBox="0 0 24 24" stroke="currentColor">
                                                    <path d="M6 18 18 6M6 6l12 12" />
                                                </svg>
                                            </span>
                                            <video class="video-frame" width="100%" height="100%" controls>
                                                <source src="{{ $sustainability?->block_two_video }}" type="video/mp4">
                                            </video>
                                        </div>
                                    </div>
                                </modal-video>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        @endif

        @if ($sustainability?->block_three_title)
            <div class="image-text image-text-video section-padding overflow-x-hidden">
                <div class="container">
                    <div class="section-content">
                        <div class="row product-grid align-items-xl-center">
                            <div class="col-lg-5 col-12">
                                <modal-video class="video-wrap height-100">
                                    <div class="image radius18 height-100" data-aos="fade-right">
                                        <img src="{{ $sustainability?->block_three_image }}" width="1000"
                                            height="742" loading="lazy" alt="Image">
                                        @if ($sustainability?->block_three_video)
                                            <div class="content-absolute">
                                                <div
                                                    class="flex-banner height-inherit d-flex align-items-center justify-content-center">
                                                    <div class="content-box">
                                                        <div class="button button--secondary open-video">
                                                            <svg class="icon-24" viewBox="0 0 12 12" fill="none"
                                                                xmlns="http://www.w3.org/2000/svg">
                                                                <path
                                                                    d="M10.858 5.1281C11.5377 5.51041 11.5377 6.48895 10.858 6.87125L2.04588 11.8281C1.37927 12.203 0.555618 11.7213 0.555618 10.9565V1.04285C0.555618 0.278027 1.37928 -0.203685 2.04588 0.171279L10.858 5.1281Z"
                                                                    fill="currentColor" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif
                                    </div>
                                    <div class="video-modal">
                                        <div class="video-modal-inner">
                                            <span class="close">
                                                <svg class="icon-18" xmlns="http://www.w3.org/2000/svg" fill="none"
                                                    viewBox="0 0 24 24" stroke="currentColor">
                                                    <path d="M6 18 18 6M6 6l12 12" />
                                                </svg>
                                            </span>
                                            <video class="video-frame" width="100%" height="100%" controls>
                                                <source src="{{ $sustainability?->block_three_video }}" type="video/mp4">
                                            </video>
                                        </div>
                                    </div>
                                </modal-video>

                            </div>
                            <div class="col-lg-7 col-12">
                                <div class="px-lg-4 section-headings" data-aos="fade-left">
                                    <h4 class="heading text-40 fw-700 text-uppercase" data-aos="fade-up">
                                        {{ $sustainability?->block_three_title }}
                                    </h4>
                                    <div class="text text-18">
                                        {!! $sustainability?->block_three_description !!}
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif

        @if ($sustainability?->block_four_title)
            <div class="image-text image-text-video section-padding overflow-x-hidden">
                <div class="container">
                    <div class="section-content">
                        <div class="row product-grid align-items-xl-center">
                            <div class="col-lg-7 col-12">
                                <div class="px-lg-4 section-headings" data-aos="fade-left">
                                    <h4 class="heading text-40 fw-700 text-uppercase" data-aos="fade-up">
                                        {{ $sustainability?->block_four_title }}
                                    </h4>
                                    <div class="text text-18">
                                        {!! $sustainability?->block_four_description !!}
                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-5 col-12">
                                <modal-video class="video-wrap height-100">
                                    <div class="image radius18 height-100" data-aos="fade-right">
                                        <img src="{{ $sustainability?->block_four_image }}" width="1000"
                                            height="742" loading="lazy" alt="Image">
                                        @if ($sustainability?->block_four_video)
                                            <div class="content-absolute">
                                                <div
                                                    class="flex-banner height-inherit d-flex align-items-center justify-content-center">
                                                    <div class="content-box">
                                                        <div class="button button--secondary open-video">
                                                            <svg class="icon-24" viewBox="0 0 12 12" fill="none"
                                                                xmlns="http://www.w3.org/2000/svg">
                                                                <path
                                                                    d="M10.858 5.1281C11.5377 5.51041 11.5377 6.48895 10.858 6.87125L2.04588 11.8281C1.37927 12.203 0.555618 11.7213 0.555618 10.9565V1.04285C0.555618 0.278027 1.37928 -0.203685 2.04588 0.171279L10.858 5.1281Z"
                                                                    fill="currentColor" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif
                                    </div>
                                    <div class="video-modal">
                                        <div class="video-modal-inner">
                                            <span class="close">
                                                <svg class="icon-18" xmlns="http://www.w3.org/2000/svg" fill="none"
                                                    viewBox="0 0 24 24" stroke="currentColor">
                                                    <path d="M6 18 18 6M6 6l12 12" />
                                                </svg>
                                            </span>
                                            <video class="video-frame" width="100%" height="100%" controls>
                                                <source src="{{ $sustainability?->block_four_video }}" type="video/mp4">
                                            </video>
                                        </div>
                                    </div>
                                </modal-video>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        @endif

        @if ($sustainability?->block_five_title)
            <div class="image-text image-text-video section-padding overflow-x-hidden">
                <div class="container">
                    <div class="section-content">
                        <div class="row product-grid align-items-xl-center">
                            <div class="col-lg-5 col-12">
                                <modal-video class="video-wrap height-100">
                                    <div class="image radius18 height-100" data-aos="fade-right">
                                        <img src="{{ $sustainability?->block_five_image }}" width="1000"
                                            height="742" loading="lazy" alt="Image">
                                        @if ($sustainability?->block_five_video)
                                            <div class="content-absolute">
                                                <div
                                                    class="flex-banner height-inherit d-flex align-items-center justify-content-center">
                                                    <div class="content-box">
                                                        <div class="button button--secondary open-video">
                                                            <svg class="icon-24" viewBox="0 0 12 12" fill="none"
                                                                xmlns="http://www.w3.org/2000/svg">
                                                                <path
                                                                    d="M10.858 5.1281C11.5377 5.51041 11.5377 6.48895 10.858 6.87125L2.04588 11.8281C1.37927 12.203 0.555618 11.7213 0.555618 10.9565V1.04285C0.555618 0.278027 1.37928 -0.203685 2.04588 0.171279L10.858 5.1281Z"
                                                                    fill="currentColor" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif
                                    </div>
                                    <div class="video-modal">
                                        <div class="video-modal-inner">
                                            <span class="close">
                                                <svg class="icon-18" xmlns="http://www.w3.org/2000/svg" fill="none"
                                                    viewBox="0 0 24 24" stroke="currentColor">
                                                    <path d="M6 18 18 6M6 6l12 12" />
                                                </svg>
                                            </span>
                                            <video class="video-frame" width="100%" height="100%" controls>
                                                <source src="{{ $sustainability?->block_five_video }}" type="video/mp4">
                                            </video>
                                        </div>
                                    </div>
                                </modal-video>

                            </div>
                            <div class="col-lg-7 col-12">
                                <div class="px-lg-4 section-headings" data-aos="fade-left">
                                    <h4 class="heading text-40 fw-700 text-uppercase" data-aos="fade-up">
                                        {{ $sustainability?->block_five_title }}
                                    </h4>
                                    <div class="text text-18">
                                        {!! $sustainability?->block_five_description !!}
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif

    </main>

    {{-- <script src="/frontend/assets/js/main.js" defer></script> --}}
@endsection
