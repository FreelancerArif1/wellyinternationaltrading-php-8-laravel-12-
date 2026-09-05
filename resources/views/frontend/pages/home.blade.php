@extends('frontend.layouts.app')
@section('title', 'Home | ' . Helper::getSettings('application_name') ?? 'Livenza Group')
@section('content')
<main id="homepage" style="background-image: url(/frontend/assets/img/footer/footer-bg-larged.jpg)">

  


 <!-- ========== HERO SECTION ========== -->
  <section id="home" class="hero-section">
    <div class="container">
      <div class="row align-items-center min-vh-75">
        <div class="col-lg-8">
          <h1 class="hero-title display-2 fw-bold mb-3">
            <span class="text-dark">Single Screw</span><br>
            <span class="text-danger">to Turnkey Solutions</span>
          </h1>
          <p class="hero-subtitle lead text-muted mb-4 col-lg-10">
            Integrated MRO procurement, fixtures &amp; jigs, dispensing equipment, and industrial tools —serving SMT, 3C, automotive electronics, medical, home appliances &amp; semiconductors.
          </p>
          <div class="d-flex flex-wrap gap-3">
            <a href="#services" class="btn btn-danger btn-lg px-4">Explore Solutions</a>
            <a href="#contact" class="btn btn-outline-dark btn-lg px-4">Contact Us</a>
          </div>
        </div>
      </div>
    </div>
    <div class="hero-social d-none d-lg-flex">
      <a href="#" class="text-muted me-3">Facebook</a>
      <a href="#" class="text-muted me-3">Twitter</a>
      <a href="#" class="text-muted me-3">Dribbble</a>
      <a href="#" class="text-muted">Instagram</a>
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
        <!-- Items injected by JS -->
      </div>
    </div>
  </section>

  <!-- ========== PRODUCTS CATALOGUE ========== -->
  <section class="py-5">
    <div class="container py-4">
      <div class="text-center mb-5">
        <p class="text-uppercase text-danger fw-semibold small letter-spacing mb-2">our catalogue</p>
        <h2 class="display-5 fw-bold mb-3">Products<br>We Have</h2>
        <p class="text-muted col-lg-8 mx-auto">
          Every product we deliver is backed by engineering precision, global sourcing expertise, and on-site support—ensuring consistency from concept to completion.
        </p>
      </div>

      <div class="row g-4">
        <div class="col-md-6 col-lg-4">
          <a href="#" class="product-card card h-100 border-0 shadow-sm text-decoration-none">
            <div class="card-body p-4 d-flex justify-content-between align-items-start">
              <div>
                <h5 class="card-title text-dark fw-bold mb-1">Dispensing Equipment &amp; Accessories</h5>
              </div>
              <span class="badge bg-danger rounded-pill">01</span>
            </div>
          </a>
        </div>
        <div class="col-md-6 col-lg-4">
          <a href="#" class="product-card card h-100 border-0 shadow-sm text-decoration-none">
            <div class="card-body p-4 d-flex justify-content-between align-items-start">
              <div>
                <h5 class="card-title text-dark fw-bold mb-1">Engineering Fixtures &amp; Jigs</h5>
              </div>
              <span class="badge bg-danger rounded-pill">02</span>
            </div>
          </a>
        </div>
        <div class="col-md-6 col-lg-4">
          <a href="#" class="product-card card h-100 border-0 shadow-sm text-decoration-none">
            <div class="card-body p-4 d-flex justify-content-between align-items-start">
              <div>
                <h5 class="card-title text-dark fw-bold mb-1">Non-Standard Mechanical Components</h5>
              </div>
              <span class="badge bg-danger rounded-pill">03</span>
            </div>
          </a>
        </div>
        <div class="col-md-6 col-lg-4">
          <a href="#" class="product-card card h-100 border-0 shadow-sm text-decoration-none">
            <div class="card-body p-4 d-flex justify-content-between align-items-start">
              <div>
                <h5 class="card-title text-dark fw-bold mb-1">MRO (Maintenance, Repair &amp; Operations) Products</h5>
              </div>
              <span class="badge bg-danger rounded-pill">04</span>
            </div>
          </a>
        </div>
        <div class="col-md-6 col-lg-4">
          <a href="#" class="product-card card h-100 border-0 shadow-sm text-decoration-none">
            <div class="card-body p-4 d-flex justify-content-between align-items-start">
              <div>
                <h5 class="card-title text-dark fw-bold mb-1">Peripheral and Auxiliary Equipment</h5>
              </div>
              <span class="badge bg-danger rounded-pill">05</span>
            </div>
          </a>
        </div>
        <div class="col-md-6 col-lg-4">
          <a href="#" class="product-card card h-100 border-0 shadow-sm text-decoration-none">
            <div class="card-body p-4 d-flex justify-content-between align-items-start">
              <div>
                <h5 class="card-title text-dark fw-bold mb-1">Hardware &amp; Electronic Tools</h5>
              </div>
              <span class="badge bg-danger rounded-pill">06</span>
            </div>
          </a>
        </div>
        <div class="col-md-6 col-lg-4">
          <a href="#" class="product-card card h-100 border-0 shadow-sm text-decoration-none">
            <div class="card-body p-4 d-flex justify-content-between align-items-start">
              <div>
                <h5 class="card-title text-dark fw-bold mb-1">Chemical &amp; Plastic Products</h5>
              </div>
              <span class="badge bg-danger rounded-pill">07</span>
            </div>
          </a>
        </div>
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

  <!-- ========== INDUSTRIES WE SERVE ========== -->
  <section class="py-5 bg-light">
    <div class="container py-4">
      <div class="text-center mb-5">
        <p class="text-uppercase text-danger fw-semibold small letter-spacing mb-2">our portfolio</p>
        <h2 class="display-5 fw-bold mb-3">Industries<br>We Serve</h2>
        <p class="text-muted col-lg-8 mx-auto">
          From SMT lines to medical devices, we tailor fixtures, dispensing, and MRO to each workflow.
        </p>
      </div>

      <div class="row g-4">
        <div class="col-md-6 col-lg-4">
          <div class="industry-card card border-0 shadow-sm h-100 overflow-hidden">
            <img src="https://newlead.asia/wp-content/uploads/2024/05/Industriees-We-serve1-650x572.jpg" class="card-img-top" alt="Surface Mount Technology">
            <div class="card-body d-flex justify-content-between align-items-center">
              <h5 class="card-title mb-0 fw-bold">Surface Mount Technology</h5>
              <span class="badge bg-danger rounded-pill">01</span>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4">
          <div class="industry-card card border-0 shadow-sm h-100 overflow-hidden">
            <img src="https://newlead.asia/wp-content/uploads/2024/05/Industriees-We-serve2-1-650x572.jpg" class="card-img-top" alt="3C Electronics">
            <div class="card-body d-flex justify-content-between align-items-center">
              <h5 class="card-title mb-0 fw-bold">3C Electronics</h5>
              <span class="badge bg-danger rounded-pill">02</span>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4">
          <div class="industry-card card border-0 shadow-sm h-100 overflow-hidden">
            <img src="https://newlead.asia/wp-content/uploads/2024/05/Industriees-We-serve3-650x572.jpg" class="card-img-top" alt="Automotive Electronics">
            <div class="card-body d-flex justify-content-between align-items-center">
              <h5 class="card-title mb-0 fw-bold">Automotive Electronics</h5>
              <span class="badge bg-danger rounded-pill">03</span>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4">
          <div class="industry-card card border-0 shadow-sm h-100 overflow-hidden">
            <img src="https://newlead.asia/wp-content/uploads/2024/05/Industriees-We-serve4-650x572.jpg" class="card-img-top" alt="Medical Devices">
            <div class="card-body d-flex justify-content-between align-items-center">
              <h5 class="card-title mb-0 fw-bold">Medical Devices</h5>
              <span class="badge bg-danger rounded-pill">04</span>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4">
          <div class="industry-card card border-0 shadow-sm h-100 overflow-hidden">
            <img src="https://newlead.asia/wp-content/uploads/2024/05/Industriees-We-serve5-650x572.jpg" class="card-img-top" alt="Home Appliances">
            <div class="card-body d-flex justify-content-between align-items-center">
              <h5 class="card-title mb-0 fw-bold">Home Appliances</h5>
              <span class="badge bg-danger rounded-pill">05</span>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4">
          <div class="industry-card card border-0 shadow-sm h-100 overflow-hidden">
            <img src="https://newlead.asia/wp-content/uploads/2024/05/Industriees-We-serve6-650x572.jpg" class="card-img-top" alt="Semiconductors">
            <div class="card-body d-flex justify-content-between align-items-center">
              <h5 class="card-title mb-0 fw-bold">Semiconductors</h5>
              <span class="badge bg-danger rounded-pill">06</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- ========== TESTIMONIALS ========== -->
  <section class="py-5">
    <div class="container py-4">
      <div class="text-center mb-5">
        <h2 class="display-5 fw-bold">What Our Clients Say</h2>
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

  <!-- ========== CONTACT / CTA ========== -->
  <section id="contact" class="py-5 bg-danger text-white bg-welly2">
    <div class="container py-5 text-center">
      <p class="text-uppercase fw-semibold small letter-spacing mb-2 opacity-75">Contact us</p>
      <h2 class="display-4 fw-bold mb-3">Have a cool project?<br>Get in touch!</h2>
      <p class="lead mb-4 col-lg-6 mx-auto opacity-90">
        Ready to improve your production line? Reach out for a consultation or request a quote today.
      </p>
      <a href="mailto:sales@sz-newlead.com" class="btn btn-light btn-lg px-5 me-2 mb-2">Email Us</a>
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










</main>
@endsection
