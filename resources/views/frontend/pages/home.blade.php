@extends('frontend.layouts.app')
@section('title', 'Home | ' . Helper::getSettings('application_name') ?? 'Shanghai Welly International Trading Ltd ')
@section('content')
<main id="homepage" style="background-image: url(/frontend/assets/img/footer/footer-bg-larged.jpg)">

  


 <!-- ========== HERO SECTION ========== -->
  <section id="home" class="hero-section">
    <div class="container">
      <div class="row align-items-center min-vh-75">
        <div class="col-lg-8">
          <h1 class="hero-title display-2 fw-bold mb-3">
            <span class="text-dark">At welly trading</span><br>
            <span class="text-danger">Every trade will be <br>  welly done</span>
          </h1>
          <p class="hero-subtitle lead text-muted mb-4 col-lg-10">
            Shanghai Welly International Trading Ltd. is an international sourcing and trading company.
          </p>
          <div class="d-flex flex-wrap gap-3">
            <a href="#services" class="btn btn-danger btn-lg px-4">Explore Solutions</a>
            <a href="/contact-us" class="btn btn-outline-dark btn-lg px-4">Contact Us</a>
          </div>
        </div>
      </div>
    </div>
    <div class="hero-social d-none d-lg-flex">
      <div class="social_bar">
        <a href="{{ Helper::getSettings('facebook_link') ?: '#' }}" class="text-muted me-3"> <i class="fa fa-facebook" aria-hidden="true"></i></i> Facebook</a>
        <a href="{{ Helper::getSettings('linkedin_link') ?: '#' }}" class="text-muted me-3"> <i class="fa fa-linkedin" aria-hidden="true"></i> Linkedin </a>
        <a href="{{ Helper::getSettings('twitter_link') ?: '#' }}" class="text-muted me-3"> <i class="fa fa-twitter" aria-hidden="true"></i> Twitter</a>
        <a href="{{ Helper::getSettings('youtube_link') ?: '#' }}" class="text-muted me-3"> <i class="fa fa-youtube-play" aria-hidden="true"></i> Youtube</a>
      </div>
    </div>
  </section>




    <!-- ========== Company Introduction ========== -->
  <section id="introduction" class="py-5 bg-light">
    <div class="container py-4">
      <div class="text-center mb-5">
        <p class="text-uppercase text-danger fw-semibold small letter-spacing mb-2">Introduction</p>
        <h2 class="display-5 fw-bold mb-3">Explore our <br> Company Introduction</h2>
        <p class="text-muted col-lg-10 mx-auto company_introduction">
        {{ Helper::getSettings('application_toll_free') ?: '#' }}</p>
      </div>
    </div>
  </section>



  <!-- ========== CORE SOLUTIONS ========== -->
  <section id="services" class="py-5 bg-light">
    <div class="container py-4">
      <div class="text-center mb-5">
        <p class="text-uppercase text-danger fw-semibold small letter-spacing mb-2">Core Solutions</p>
        <h2 class="display-5 fw-bold mb-3">Explore our extensive<br>service offerings</h2>
        <p class="text-muted col-lg-8 mx-auto">
          Choose a partner that covers the full stack—fixtures, dispensing, and MRO—so you spend less time coordinating vendors and more time hitting yield, takt, and budget. We standardize what should be standard, and custom-engineer what must be bespoke.
        </p>
      </div>

      <div class="row g-4" id="solutionsGrid">
              
      @foreach($services as $service)
      <div class="col-6 col-md-4 col-lg-4 col-xl-2 service_single">
       
      <a href="/service/{{ $service->slug }}">
        <div class="solution-item">
          <div class="icon-wrap">
           {!! $service->icon !!}
          </div>
          <h6>{{ $service->title }}</h6>
        </div>
        </a>


      </div>
      @endforeach


      </div>
    </div>
  </section>



  


  <!-- ========== INTEGRATED SOLUTIONS / STATS ========== -->
  <section id="about" class="py-5 bg-dark text-white">
    <div class="container py-4">
      <div class="row align-items-center">
        <div class="col-lg-6 mb-4 mb-lg-0">
          <p class="text-uppercase text-danger fw-semibold small letter-spacing mb-2">Modern solutions</p>
          <h2 class="display-5 fw-bold mb-3">Integrated solutions<br>for manufacturing</h2>
          <p class="text-white-50 mb-4">
            We combine engineering fixtures &amp; jigs, precision dispensing, and MRO procurement to keep your production precise, scalable, and cost-efficient—with on-site, end-to-end service.
          </p>
          <a href="#about" class="btn btn-outline-light">About Us</a>
        </div>
        <div class="col-lg-6">
          <div class="row g-4 text-center">
            <div class="col-6">
              <div class="stat-box p-3">
                <h3 class="display-4 fw-bold text-danger mb-0 counter" data-target="15">0</h3>
                <p class="mb-0 text-white-50">Years in Operation</p>
              </div>
            </div>
            <div class="col-6">
              <div class="stat-box p-3">
                <h3 class="display-4 fw-bold text-danger mb-0 counter" data-target="5000">0</h3>
                <p class="mb-0 text-white-50">Products &amp; Variants</p>
              </div>
            </div>
            <div class="col-6">
              <div class="stat-box p-3">
                <h3 class="display-4 fw-bold text-danger mb-0 counter" data-target="1200">0</h3>
                <p class="mb-0 text-white-50">Projects Delivered</p>
              </div>
            </div>
            <div class="col-6">
              <div class="stat-box p-3">
                <h3 class="display-4 fw-bold text-danger mb-0 counter" data-target="350">0</h3>
                <p class="mb-0 text-white-50">Customers Served</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>




    <!-- ========== Our team ========== -->
    <section class="our-team-section">
        <div class="container">

          <div class="row">
            <div class="text-center mb-5">
              <p class="text-uppercase text-danger fw-semibold small letter-spacing mb-2">Members</p>
              <h2 class="display-5 fw-bold mb-3"> Company Members </h2>
            </div>
          </div>

            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="our-team">
                        <div class="pic">
                            <img src="/uploads/team/KageiHua.png">
                        </div>
                        <div class="team-content">
                            <h3 class="title">Kagei Hua</h3>
                            <span class="post">Chairman</span>
                        </div>
                        <ul class="social">
                            <li>
                                <a href="#"  target="_blank"class="fa fa-facebook"></a>
                            </li>
                            <li>
                                <a href="#" class="fa fa-twitter"></a>
                            </li>
                            <li>
                                <a href="#" class="fa fa-instagram"></a>
                                
                            </li>
                            <li>
                                <a href="#" class="fa fa-linkedin"></a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="our-team">
                        <div class="pic">
                            <img src="/uploads/team/ChrisWang.png">
                        </div>
                        <div class="team-content">
                            <h3 class="title">Chris Wang</h3>
                            <span class="post">Chief Executive Officer (CEO)</span>
                        </div>
                        <ul class="social">
                            <li>
                                <a href="#" class="fa fa-facebook"></a>
                            </li>
                            <li>
                                <a href="#" class="fa fa-twitter"></a>
                            </li>
                            <li>
                                <a href="#" class="fa fa-instagram"></a>
                            </li>
                            <li>
                                <a href="#" class="fa fa-linkedin"></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="our-team">
                        <div class="pic">
                            <img src="/uploads/team/VincentLiu.png">
                        </div>
                        <div class="team-content">
                            <h3 class="title">Vincent Liu</h3>
                            <span class="post">Chief Operational Officer (COO) </span>
                        </div>
                        <ul class="social">
                            <li>
                                <a href="#" class="fa fa-facebook"></a>
                            </li>
                            <li>
                                <a href="#" class="fa fa-twitter"></a>
                            </li>
                            <li>
                                <a href="#" class="fa fa-instagram"></a>
                            </li>
                            <li>
                                <a href="#" class="fa fa-linkedin"></a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="our-team">
                        <div class="pic">
                            <img src="/uploads/team/RosaHua.png">
                        </div>
                        <div class="team-content">
                            <h3 class="title">Rosa Hua</h3>
                            <span class="post">Executive Consultant (EC) </span>
                        </div>
                        <ul class="social">
                            <li>
                                <a href="#" class="fa fa-facebook"></a>
                            </li>
                            <li>
                                <a href="#" class="fa fa-twitter"></a>
                            </li>
                            <li>
                                <a href="#" class="fa fa-instagram"></a>
                            </li>
                            <li>
                                <a href="#" class="fa fa-linkedin"></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>


  <!-- ========== PRODUCTION SOLUTIONS ========== -->
  <section class="py-5">
    <div class="container py-4">
      <div class="row align-items-center">
        <div class="col-lg-6 mb-4 mb-lg-0">
          <p class="text-uppercase text-danger fw-semibold small letter-spacing mb-2">Our innovations</p>
          <h2 class="display-5 fw-bold mb-3">Production solutions<br>that actually last</h2>
          <p class="text-muted mb-4">
            We align fixtures &amp; jigs, precision dispensing, and one-stop MRO so your line runs faster, cleaner, and cheaper—without trading off quality. From pilot to volume, we standardize what should be standard and custom-engineer what must be bespoke.
          </p>
          <div class="row g-3">
            <div class="col-md-6">
              <ul class="list-unstyled">
                <li class="mb-2"><i class="bi bi-check-circle-fill text-danger me-2"></i>Inline dispensing</li>
                <li class="mb-2"><i class="bi bi-check-circle-fill text-danger me-2"></i>Laser auto-height</li>
                <li class="mb-2"><i class="bi bi-check-circle-fill text-danger me-2"></i>Auto weighing</li>
              </ul>
            </div>
            <div class="col-md-6">
              <ul class="list-unstyled">
                <li class="mb-2"><i class="bi bi-check-circle-fill text-danger me-2"></i>Vision alignment</li>
                <li class="mb-2"><i class="bi bi-check-circle-fill text-danger me-2"></i>Jet valve options</li>
                <li class="mb-2"><i class="bi bi-check-circle-fill text-danger me-2"></i>On-site service</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <img src="https://newlead.asia/wp-content/uploads/2025/10/Home-3.jpg" alt="Production Solutions" class="img-fluid rounded-3 shadow">
        </div>
      </div>
    </div>
  </section>








  <!-- ========== TESTIMONIALS ========== -->
  <section class="py-5">
    <div class="container py-4">
      <div class="text-center mb-5">
        <p class="text-uppercase text-danger fw-semibold small letter-spacing mb-2">Testimonial</p>
        <h2 class="display-5 fw-bold mb-3">What Our Clients Say</h2>
        
      </div>
      <div class="row g-4">
        <div class="col-md-4">
          <div class="testimonial-card card border-0 shadow-sm h-100">
            <div class="card-body p-4">
              <div class="mb-3 text-warning">
                <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
              </div>
              <p class="card-text text-muted mb-4">"Their attention to detail and commitment to quality set them apart in the industry."</p>
              <div class="d-flex align-items-center">
                <div class="flex-shrink-0">
                  <div class="avatar bg-danger text-white rounded-circle d-flex align-items-center justify-content-center" style="width:48px;height:48px;">NA</div>
                </div>
                <div class="ms-3">
                  <h6 class="mb-0 fw-bold">Nguyễn Minh Anh</h6>
                  <small class="text-muted">Operations Director · Client</small>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="testimonial-card card border-0 shadow-sm h-100">
            <div class="card-body p-4">
              <div class="mb-3 text-warning">
                <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
              </div>
              <p class="card-text text-muted mb-4">"Impressed by their dedication to excellence. Would not hesitate to work with them again."</p>
              <div class="d-flex align-items-center">
                <div class="flex-shrink-0">
                  <div class="avatar bg-danger text-white rounded-circle d-flex align-items-center justify-content-center" style="width:48px;height:48px;">AL</div>
                </div>
                <div class="ms-3">
                  <h6 class="mb-0 fw-bold">Adrian Lim</h6>
                  <small class="text-muted">Production Manager · Partner</small>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="testimonial-card card border-0 shadow-sm h-100">
            <div class="card-body p-4">
              <div class="mb-3 text-warning">
                <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
              </div>
              <p class="card-text text-muted mb-4">"Outstanding craftsmanship and reliability define this company. Thank you!"</p>
              <div class="d-flex align-items-center">
                <div class="flex-shrink-0">
                  <div class="avatar bg-danger text-white rounded-circle d-flex align-items-center justify-content-center" style="width:48px;height:48px;">PC</div>
                </div>
                <div class="ms-3">
                  <h6 class="mb-0 fw-bold">Paula Carson</h6>
                  <small class="text-muted">Client</small>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>



 <!-- ========== GALLERY ========== -->
  <section id="introduction" class="py-5 bg-light">
    <div class="container py-4">
      <div class="text-center mb-5">
        <p class="text-uppercase text-danger fw-semibold small letter-spacing mb-2">Gallery</p>
        <h2 class="display-5 fw-bold mb-3">Explore our  Gallery</h2>
          <div class="row mt-5 mb-5 gallery_images">
              <div class="col-12">
                  <div class="d-flex flex-wrap justify-content-center gap-2" id="category-filters">
                      <button type="button" 
                              class="btn btn-outline-primary active filter-btn" 
                              data-filter="all">
                          All
                      </button>

                      @foreach($categories as $category)
                          <button type="button" 
                                  class="btn btn-outline-primary filter-btn" 
                                  data-filter="{{ Str::slug($category->id) }}">
                              {{ $category->title }}
                          </button>
                      @endforeach
                  </div>
              </div>
          </div>
          <div class="row g-4" id="gallery">
              @forelse($images as $image)
                  <div class="col-sm-6 col-md-4 col-lg-3 gallery-item" 
                        data-category="{{ Str::slug($image->slier_for) }}">
                      <div class="card h-100 border-0 shadow-sm overflow-hidden">
                          <div class="ratio ratio-4x3">
                              <img src="{{ $image->image }}" 
                                    class="card-img-top object-fit-cover" 
                                    alt="{{ $image->title }}"
                                    loading="lazy">
                          </div>
                          <div class="card-body">
                              <h6 class="card-title mb-1">{{ $image->title }}</h6>
                                <!-- @foreach($categories as $category)
                                @if($category->id == $image->slier_for)
                                  <small class="text-muted">{{ $category->title }}</small> 
                              @endif
                              @endforeach -->
                          </div>
                      </div>
                  </div>
              @empty
                  <div class="col-12 text-center py-5">
                      <p class="text-muted">No images found.</p>
                  </div>
              @endforelse
          </div>
      </div>
    </div>
  </section>







  <!-- ========== CONTACT / CTA ========== -->
  <section id="contact" class="py-5 bg-danger text-white bg-welly2">
    <div class="container py-5 text-center">
      <p class="text-uppercase fw-semibold small letter-spacing mb-2 opacity-75">Contact us</p>
      <h2 class="display-4 fw-bold mb-3">Have a cool project?<br>Get in touch!</h2>
      <p class="lead mb-4 col-lg-6 mx-auto opacity-90">
        Ready to improve your production line? Reach out for a consultation or request a quote today.
      </p>
      <a href="mailto: wellytradingltd3@gmail.com" class="btn btn-light btn-lg px-5 me-2 mb-2">Email Us</a>
      <a href="#contact-form" class="btn btn-outline-light btn-lg px-5 mb-2" data-bs-toggle="collapse" data-bs-target="#contactForm">Send Message</a>
      
      <div class="collapse mt-5" id="contactForm">
        <div class="row justify-content-center">
          <div class="col-lg-8">
            <form id="contactFormEl" class="text-start bg-white text-dark p-4 p-md-5 rounded-3 shadow">
              <div class="row g-3">
                <div class="col-md-6">
                  <label for="name" class="form-label">Your Name</label>
                  <input type="text" class="form-control" id="name" required>
                </div>
                <div class="col-md-6">
                  <label for="email" class="form-label">Email Address</label>
                  <input type="email" class="form-control" id="email" required>
                </div>
                <div class="col-12">
                  <label for="subject" class="form-label">Subject</label>
                  <input type="text" class="form-control" id="subject">
                </div>
                <div class="col-12">
                  <label for="message" class="form-label">Message</label>
                  <textarea class="form-control" id="message" rows="4" required></textarea>
                </div>
                <div class="col-12">
                  <button type="submit" class="btn btn-danger w-100 py-2">Send Message</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>



<script>
  document.addEventListener('DOMContentLoaded', () => {
    const filterButtons = document.querySelectorAll('.filter-btn');
    const galleryItems = document.querySelectorAll('.gallery-item');

    filterButtons.forEach(button => {
        button.addEventListener('click', () => {
            // Remove active class from all buttons
            filterButtons.forEach(btn => btn.classList.remove('active'));
            // Add active class to clicked button
            button.classList.add('active');

            const selectedFilter = button.getAttribute('data-filter');

            galleryItems.forEach(item => {
                const itemCategory = item.getAttribute('data-category');

                if (selectedFilter === 'all' || selectedFilter === itemCategory) {
                    item.style.display = 'block';
                } else {
                    item.style.display = 'none';
                }
            });
        });
    });
});
</script>



</main>
@endsection

