  <!-- ========== FOOTER ========== -->
  <footer class="bg-dark text-white-50 pb-2  pt-2 bg-welly">
    <div class="container pt-4">
      <div class="row g-4">
        <div class="col-lg-4">

        <a class="navbar-brand d-flex align-items-center nav_logo" href="/">
            <img src="{{ Helper::getSettings('site_logo') ? asset(Helper::getSettings('site_logo')) : '/logo.png' }}"
                alt="logo-image">
        </a>
         <p class="mt-3">
            {{ Str::words(Helper::getSettings('application_toll_free'), 25, '...') }}
        </p>
        </div>
        
        
        <div class="col-6 col-lg-2">
          <h6 class="text-white mb-3">Quick Links</h6>
          <ul class="list-unstyled">
              <li class="mb-2"><a href="/" class="text-white-50 text-decoration-none">Home</a></li>
              <li class="mb-2"><a href="/about-us" class="text-white-50 text-decoration-none">About Us</a></li>
              <li class="mb-2"><a href="#services" class="text-white-50 text-decoration-none">Our Services</a></li>
              <li class="mb-2"><a href="/news" class="text-white-50 text-decoration-none">News</a></li>
              <li class="mb-2"><a href="/contact-us" class="text-white-50 text-decoration-none">Contact Us</a></li>
            </ul>
        </div>
        <div class="col-6 col-lg-3">
          <h6 class="text-white mb-3">Solutions</h6>
          <ul class="list-unstyled">
              <li class="mb-2"><a href="#truck-parts" class="text-white-50 text-decoration-none">Truck Parts</a></li>
              <li class="mb-2"><a href="#industrial-heavy-equipment" class="text-white-50 text-decoration-none">Industrial Heavy Equipment</a></li>
              <li class="mb-2"><a href="#renewable-energy-solutions" class="text-white-50 text-decoration-none">Renewable Energy Solutions</a></li>
               <li class="mb-2"><a href="#china-business-travel-services" class="text-white-50 text-decoration-none">China Business Travel Services</a></li>
              <li class="mb-2"><a href="#consulting-services" class="text-white-50 text-decoration-none">Consulting Services</a></li>
              <!-- <li class="mb-2"><a href="#textile-garment" class="text-white-50 text-decoration-none">Textile &amp; Garment</a></li>
              <li class="mb-2"><a href="#plastic-raw-materials" class="text-white-50 text-decoration-none">Plastic Raw Materials</a></li> -->
            </ul>
        </div>


        <div class="col-lg-3">
          <h6 class="text-white mb-3">Contact</h6>
          <p class="small mb-1"><i class="bi bi-geo-alt me-2"></i>{{ Helper::getSettings('application_address') }}</p>
          <p class="small mb-1"><i class="bi bi-envelope me-2"></i>{{ Helper::getSettings('application_email') }}</p>
          <div class="mt-3">
            <a href="#" class="text-white-50 me-3"><i class="bi bi-facebook fs-5"></i></a>
            <a href="#" class="text-white-50 me-3"><i class="bi bi-twitter-x fs-5"></i></a>
            <a href="#" class="text-white-50 me-3"><i class="bi bi-linkedin fs-5"></i></a>
            <a href="#" class="text-white-50"><i class="bi bi-instagram fs-5"></i></a>
          </div>
        </div>
      </div>
      <hr class="border-secondary my-4">
      <div class="d-flex flex-column flex-md-row justify-content-between align-items-center">
        <p class="small mb-2 mb-md-0">&copy; 2026 Shanghai Welly International Trading Ltd.. All rights reserved.</p>
        <p class="small mb-0">Leaders in Mechanical &amp; Electrical Equipment</p>
      </div>
    </div>
  </footer>

  <!-- Bootstrap 5 JS Bundle -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  
  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
  
  <!-- Custom JS -->
<script src="/frontend/assets/js/theme.js" defer></script>





    <drawer-opener id="drawer-overlay"></drawer-opener>
    <scroll-top>
        <div class="scroll-to-top">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" d="m4.5 15.75 7.5-7.5 7.5 7.5" />
            </svg>
        </div>
    </scroll-top>
