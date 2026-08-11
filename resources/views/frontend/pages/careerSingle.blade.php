@extends('frontend.layouts.app')
@section('title', 'Careers | ' . Helper::getSettings('application_name') ?? 'Livenza Group')
@section('content')
    <style>
        .section-padding {
            --padding-top: 50px;
            --padding-bottom: 50px;
        }

        .button {
            font-size: 14px;
            padding: 2px 10px 2px 30px;
            min-height: 50px !important;
        }

        .button .svg-wrapper {
            min-width: 30px;
            height: 30px;
        }

        /* .button--secondary {
                                                                                                                                                                                    color: #fff;
                                                                                                                                                                                    background-color: rgb(8 68 186);
                                                                                                                                                                                }

                                                                                                                                                                                .button--secondary .svg-wrapper {
                                                                                                                                                                                    color: #fff;
                                                                                                                                                                                } */
    </style>
    <main id="career_page">
        <div class="page-banner overlay">
            <div class="media media-bg">
                @if ($career?->banner_video)
                    <video class="full-video" autoplay muted loop playsinline>
                        <source src="{{ $career?->banner_video }}" type="video/mp4">
                    </video>
                @else
                    <img src="{{ $career?->banner_image }}" width="1920" height="520" loading="eager"
                        alt="Page Banner Image">
                @endif

            </div>
            <div class="page-banner-content">
                <div class="container text-left">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="left_side_about">
                                @if ($career?->banner_title)
                                    <h3 class="heading text-40 fw-700 text-uppercase mb-4" data-aos="fade-up">
                                        {{ $career?->banner_title }}
                                    </h3>
                                @endif
                                @if ($career?->banner_description)
                                    <div class="about_main_paragraph" data-aos="fade-up" data-aos-delay="200">
                                        {!! $career?->banner_description !!}
                                    </div>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6"></div>
                    </div>
                </div>
            </div>
        </div>



        <!-- Contact Form -->
        <div class="section-contact-form section-padding">
            <div class="container">
                <div class="contact-box radius18">
                    <div class="row product-grid justify-content-between">
                        <div class="col-12 col-lg-6 col-contact-content">
                            <div class="section-headings">

                                <h4 class="heading text-20" data-aos="fade-up">
                                    {{ $singlecircular->job_title }}
                                </h4>
                                <p class="text text-18" data-aos="fade-up">
                                    {!! $singlecircular->job_description !!}
                                </p>
                                <br>
                                <h4 class="heading text-20" data-aos="fade-up">
                                    Optional Notes:
                                </h4>
                                <p class="text text-18" data-aos="fade-up">
                                    {!! $singlecircular->developer_note !!}
                                </p>

                            </div>
                        </div>
                        <div class="col-12 col-lg-6 col-contact-form">
                            <div class="contact-form-wrap radius18">
                                <div class="contact-form-headings text-center">
                                    {{-- <h4 class="heading text-32" data-aos="fade-up">
                                        APPLY
                                    </h4> --}}
                                    {{-- <p class="text text-16" data-aos="fade-up">
                                        Feel free to contact with us, we don't spam your email
                                    </p> --}}
                                </div>
                                <form action="{{ route('career.submit') }}" method="POST" class="mt-0 form contact-form"
                                    enctype="multipart/form-data" data-aos="fade-up">
                                    @csrf
                                    <div class="field">
                                        <label for="ContactForm-name" class="visually-hidden">
                                            Your Name
                                        </label>
                                        <input id="ContactForm-name" class="text-16" type="text"
                                            placeholder="Your Name *" name="name" data-required>
                                    </div>
                                    <div class="field">
                                        <label for="ContactForm-name" class="visually-hidden">
                                            Phone
                                        </label>
                                        <input id="ContactForm-name" class="text-16" type="text"
                                            placeholder="Your phone *" name="phone" data-required>
                                    </div>
                                    <div class="field">
                                        <label for="ContactForm-email" class="visually-hidden">
                                            Email Here
                                        </label>
                                        <input id="ContactForm-email" class="text-16" type="text"
                                            placeholder="Email Here *" name="email" data-required>
                                    </div>
                                    <div class="field">
                                        <label for="ContactForm-service" class="visually-hidden">
                                            Subject
                                        </label>
                                        <select name="job_id" id="ContactForm-service"
                                            class="text-16 select select_option">
                                            <option disabled selected>--Select Position--</option>
                                            @if ($positions)
                                                @foreach ($positions as $circular)
                                                    <option @if ($singlecircular?->id && $singlecircular?->id == $circular->id) selected @endif
                                                        value="{{ $circular->id }}">{{ $circular->job_title }}
                                                    </option>
                                                @endforeach
                                            @endif
                                        </select>
                                    </div>
                                    <div class="field">
                                        <label for="ContactForm-body" class="visually-hidden">
                                            Your Comment
                                        </label>
                                        <textarea id="ContactForm-body" class="text-16" rows="4" placeholder="Your cover later *" name="cover_later"
                                            data-required></textarea>
                                    </div>

                                    <div class="field">
                                        <b style="color: #fff;">
                                            Resume
                                        </b>
                                        <label for="ContactForm-email" class="visually-hidden">
                                            Resume
                                        </label>
                                        <input id="ContactForm-email" class="text-16" type="file"
                                            placeholder="Email Here *" name="cv" accept=".pdf, .doc, .docx"
                                            data-required>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            @if ($errors->any())
                                                <div class="alert alert-danger">
                                                    <ul class="mb-0">
                                                        @foreach ($errors->all() as $error)
                                                            <li>{{ $error }}</li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            @endif
                                            @if (session('success'))
                                                <div class="alert alert-success">{{ session('success') }}</div>
                                            @endif

                                        </div>
                                    </div>


                                    <div class="form-button">
                                        <button type="submit" class="button button--secondary" aria-label="Send Message">
                                            Send Message
                                            <span class="svg-wrapper">
                                                <svg class="icon-20" width="20" height="20" viewBox="0 0 20 20"
                                                    fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M13.3365 7.84518L6.16435 15.0173L4.98584 13.8388L12.158 6.66667H5.83652V5H15.0032V14.1667H13.3365V7.84518Z"
                                                        fill="currentColor"></path>
                                                </svg>
                                            </span>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




    </main>

    {{-- <script src="/frontend/assets/js/main.js" defer></script> --}}
@endsection
