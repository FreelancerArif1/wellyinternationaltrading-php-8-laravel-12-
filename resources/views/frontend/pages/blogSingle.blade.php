@extends('frontend.layouts.app')
@section('title', 'News | ' . Helper::getSettings('application_name') ?? 'Livenza Group')
@section('content')
    <main id="blog_page">
        <div class="page-banner overlay">
            <div class="media media-bg">
                <img src="/uploads/about/692c50dc5a42c_1764511964.jpg" width="1920" height="520" loading="eager"
                    alt="Page Banner Image">
            </div>
            <div class="page-banner-content">
                <div class="container text-left">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="left_side_about">

                                <h3 class="heading text-40 fw-700 text-uppercase mb-4" data-aos="fade-up">
                                    News
                                </h3>
                                <div class="about_main_paragraph" data-aos="fade-up" data-aos-delay="200">
                                    Short description introducing Livenza Group: “Uniting clean energy, EV mobility,
                                    sustainable manufacturing, and industrial retail for multi-sector growth.”
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6"></div>
                    </div>
                </div>
            </div>
        </div>





        <!-- Blog List -->
        <div class="page-blog-details section-padding">
            <div class="container">
                <drawer-opener class="open-sidebar svg-wrapper text text-20 fw-500 d-lg-none"
                    data-drawer=".drawer-blog-sidebar" data-aos="fade-up">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M12 3c2.755 0 5.455.232 8.083.678.533.09.917.556.917 1.096v1.044a2.25 2.25 0 0 1-.659 1.591l-5.432 5.432a2.25 2.25 0 0 0-.659 1.591v2.927a2.25 2.25 0 0 1-1.244 2.013L9.75 21v-6.568a2.25 2.25 0 0 0-.659-1.591L3.659 7.409A2.25 2.25 0 0 1 3 5.818V4.774c0-.54.384-1.006.917-1.096A48.32 48.32 0 0 1 12 3Z" />
                    </svg>
                    Filter
                </drawer-opener>
                <div class="row">
                    <div class="col-12 col-lg-7">
                        <div class="blog-details">
                            <div class="card-blog-list" data-aos="fade-up">
                                <div class="card-blog-list-media radius18">
                                    <div class="media">
                                        <img src="{{ $single->image }}" alt="blog image" width="1000" height="707"
                                            loading="lazy">
                                    </div>
                                </div>

                                <div class="card-blog-content">
                                    <div class="card-blog-meta">
                                        <div class="card-blog-meta-item text text-18">
                                            <svg width="18" height="20" viewBox="0 0 18 20" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M9.00098 0.650391C11.499 0.650391 13.5437 2.69437 13.5439 5.19238C13.5439 7.69056 11.4992 9.73535 9.00098 9.73535C6.50299 9.73517 4.45898 7.69045 4.45898 5.19238C4.45919 2.69448 6.50308 0.650569 9.00098 0.650391Z"
                                                    stroke="currentColor" stroke-width="1.3" />
                                                <path
                                                    d="M5.2041 11.4092C5.22954 11.4041 5.2933 11.4126 5.34375 11.4502L5.34863 11.4531C6.41552 12.2405 7.68474 12.6464 8.99902 12.6465C10.3135 12.6465 11.5834 12.2407 12.6504 11.4531L12.6553 11.4502C12.6717 11.4383 12.7412 11.4086 12.8506 11.418C14.4691 11.6454 15.9118 12.559 16.8516 13.9482L16.8555 13.9531C17.0155 14.1843 17.152 14.4246 17.2607 14.6719C17.1428 14.8756 17.0147 15.073 16.8711 15.2705L16.7158 15.4775L16.708 15.4883C16.4195 15.8798 16.0836 16.2387 15.7285 16.5938C15.4317 16.8905 15.0922 17.1871 14.7559 17.4395C13.0785 18.6922 11.0607 19.3506 8.97656 19.3506C6.89732 19.3505 4.88498 18.6944 3.20996 17.4473C2.84577 17.1514 2.51261 16.8807 2.22559 16.5938L2.21875 16.5859L2.21094 16.5801L1.95215 16.3242C1.69963 16.0639 1.46736 15.7886 1.24609 15.4883L1.24316 15.4834L0.944336 15.0703C0.86428 14.9535 0.788425 14.8348 0.71875 14.7178C0.835661 14.4569 0.982086 14.185 1.14258 13.9531L1.14355 13.9541L1.15137 13.9424C2.06835 12.5567 3.53571 11.6401 5.16504 11.416L5.18457 11.4131L5.2041 11.4092Z"
                                                    stroke="currentColor" stroke-width="1.3" />
                                            </svg>
                                            {{ $single->created_by }}
                                        </div>
                                        <div class="card-blog-meta-item text text-18">
                                            <svg width="18" height="16" viewBox="0 0 18 16" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path d="M1.125 1.25H16.875V11.375H9L4.5 15.3125V11.375H1.125V1.25Z"
                                                    stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" />
                                            </svg>
                                            {{ \Carbon\Carbon::parse($single->updated_at)->format('F j, Y') }}
                                        </div>

                                    </div>

                                    <h4 class="card-blog-heading heading text-30">
                                        {{ $single->title }}
                                    </h4>

                                    <div class="blog-description">
                                        {!! $single->description !!}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-5">
                        <div class="sidebar-filter drawer-blog-sidebar">
                            <div class="drawer-headings d-lg-none" data-aos="fade-up">
                                <div class="heading text-24">Filter</div>
                                <drawer-opener class="svg-wrapper menu-close" data-drawer=".drawer-blog-sidebar">
                                    <svg width="30px" height="30px" viewBox="0 0 24 24" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M8.00386 9.41816C7.61333 9.02763 7.61334 8.39447 8.00386 8.00395C8.39438 7.61342 9.02755 7.61342 9.41807 8.00395L12.0057 10.5916L14.5907 8.00657C14.9813 7.61605 15.6144 7.61605 16.0049 8.00657C16.3955 8.3971 16.3955 9.03026 16.0049 9.42079L13.4199 12.0058L16.0039 14.5897C16.3944 14.9803 16.3944 15.6134 16.0039 16.0039C15.6133 16.3945 14.9802 16.3945 14.5896 16.0039L12.0057 13.42L9.42097 16.0048C9.03045 16.3953 8.39728 16.3953 8.00676 16.0048C7.61624 15.6142 7.61624 14.9811 8.00676 14.5905L10.5915 12.0058L8.00386 9.41816Z"
                                            fill="currentColor"></path>
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M23 12C23 18.0751 18.0751 23 12 23C5.92487 23 1 18.0751 1 12C1 5.92487 5.92487 1 12 1C18.0751 1 23 5.92487 23 12ZM3.00683 12C3.00683 16.9668 7.03321 20.9932 12 20.9932C16.9668 20.9932 20.9932 16.9668 20.9932 12C20.9932 7.03321 16.9668 3.00683 12 3.00683C7.03321 3.00683 3.00683 7.03321 3.00683 12Z"
                                            fill="currentColor"></path>
                                    </svg>
                                </drawer-opener>
                            </div>
                            <aside class="blog-sidebar">

                                <div class="sidebar-widget radius18" data-aos="fade-up">
                                    <h2 class="sidebar-heading heading text-24">Recent Post</h2>
                                    <ul class="recent-post list-unstyled">
                                        @if ($news)
                                            @foreach ($news as $item)
                                                <li>
                                                    <div class="card-blog-list">
                                                        <div class="card-blog-list-media">
                                                            <div class="media">
                                                                <img src="{{ $item->image }}" alt="blog image"
                                                                    width="1000" height="707" loading="lazy">
                                                            </div>
                                                        </div>

                                                        <div class="card-blog-content">
                                                            <div class="card-blog-meta">
                                                                <div class="card-blog-meta-item text text-12">
                                                                    {{ \Carbon\Carbon::parse($item->updated_at)->format('F j, Y') }}
                                                                </div>
                                                            </div>

                                                            <h5 class="card-blog-heading heading text-15">
                                                                <a href="/news/{{ $item->slug }}"
                                                                    class="heading text-15">
                                                                    {{ $item->title }}
                                                                </a>
                                                            </h5>
                                                        </div>
                                                    </div>
                                                </li>
                                            @endforeach
                                        @endif
                                    </ul>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </main>
@endsection
