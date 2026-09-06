  <!-- ========== NAVBAR ========== -->
  <nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top shadow-sm">
    <div class="container">
        <a class="navbar-brand d-flex align-items-center nav_logo" href="/">
            <img src="{{ Helper::getSettings('site_logo') ? asset(Helper::getSettings('site_logo')) : '/logo.png' }}"
                alt="logo-image">
        </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNav" aria-controls="mainNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="mainNav">
        <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active fw-medium" href="/">HOME</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fw-medium" href="/about-us">ABOUT US</a>
          </li>



          <li class="nav-item dropdown hover-dropdown custom-corner-item">
            <a class="nav-link fw-medium dropdown-toggle" href="#services" id="servicesDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              OUR SERVICES
            </a>
            <ul class="dropdown-menu top-pointer-dropdown" aria-labelledby="servicesDropdown">
              <li><a class="dropdown-item" href="#truck-parts">Truck parts</a></li>
              <li><a class="dropdown-item" href="#industrial-heavy-equipment">Industrial heavy equipment</a></li>
              <li><a class="dropdown-item" href="#commercial-vehicles">Commercial vehicles</a></li>
              <li><a class="dropdown-item" href="#renewable-energy-solutions">Renewable Energy Solutions</a></li>
              <li><a class="dropdown-item" href="#lithium-battery">Lithium Battery</a></li>
              <li><a class="dropdown-item" href="#china-business-travel-services">China Business Travel Services</a></li>
              <li><a class="dropdown-item" href="#consulting-services">Consulting Services</a></li>
              <li><a class="dropdown-item" href="#textile-garment">Textile & Garment</a></li>
              <li><a class="dropdown-item" href="#plastic-raw-materials">Plastic Raw Materials</a></li>
              <li><a class="dropdown-item" href="#gold-jewelry">Gold Jewelry</a></li>
            </ul>
          </li>

          <li class="nav-item">
            <a class="nav-link fw-medium" href="/news">NEWS</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fw-medium" href="/contact-us">CONTACT US</a>
          </li>


        </ul>
        <a href="/contact-us" class="btn btn-danger px-4 rounded-1">Request a Quote</a>
      </div>
    </div>
  </nav>