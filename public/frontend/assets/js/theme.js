/**
 * NEWLEAD Homepage - Bootstrap 5 + jQuery
 */

$(function () {
  'use strict';

  // ---------- Solutions data ----------
  const solutions = [
    { title: 'Ball Bearings', icon: 'bi-circle' },
    { title: 'Packaging Materials', icon: 'bi-box-seam' },
    { title: 'Handheld Tools', icon: 'bi-tools' },
    { title: 'Metal Working Tools', icon: 'bi-gear' },
    { title: 'Industrial Parts', icon: 'bi-cpu' },
    { title: 'Measurement Tools', icon: 'bi-rulers' },
    { title: 'Material Handling', icon: 'bi-truck' },
    { title: 'Personal Safety Equipment', icon: 'bi-shield-check' },
    { title: 'Cleaning Supplies & Chemicals', icon: 'bi-droplet' },
    { title: 'Lighting & Ventilation', icon: 'bi-lightbulb' },
    { title: 'Cutting Tools', icon: 'bi-scissors' },
    { title: 'Electrical Switches', icon: 'bi-toggle-on' },
    { title: 'Rivet & Combination Screw', icon: 'bi-nut' },
    { title: 'Tape Supplies', icon: 'bi-tape' },
    { title: 'Stretch Film', icon: 'bi-layers' },
    { title: 'Grinding & Abrasive Tools', icon: 'bi-disc' },
    { title: 'Welding & Soldering Tools', icon: 'bi-fire' },
    { title: 'Pneumatic Tools', icon: 'bi-wind' },
    { title: '3C Manual Fixture', icon: 'bi-phone' },
    { title: '3C Pneumatic Fixtures', icon: 'bi-phone-vibrate' },
    { title: 'Welding Carriers', icon: 'bi-box' },
    { title: 'High-Precision Fixtures', icon: 'bi-precision' },
    { title: 'MTF Testing System', icon: 'bi-graph-up' },
    { title: 'Active Alignment (AA) Assembly Equipment', icon: 'bi-bullseye' },
    { title: 'Mobile AAA Assembly Equipment', icon: 'bi-phone' },
    { title: 'iPhone HDP/CDP Dispenser Machine', icon: 'bi-phone' },
    { title: 'iPhone Battery Cell Assembly Line', icon: 'bi-battery-charging' },
    { title: 'Automotive Component Assembly Line', icon: 'bi-car-front' },
    { title: 'Complex Shape Dispenser Machine', icon: 'bi-droplet-half' },
    { title: 'Vacuum Potting Machine', icon: 'bi-moisture' }
  ];

  // Render solutions grid
  const $grid = $('#solutionsGrid');
  solutions.forEach(function (item) {
    const html = `
      <div class="col-6 col-md-4 col-lg-3 col-xl-2">
        <div class="solution-item">
          <div class="icon-wrap">
            <i class="bi ${item.icon}"></i>
          </div>
          <h6>${item.title}</h6>
        </div>
      </div>
    `;
    $grid.append(html);
  });

  // ---------- Sticky navbar shadow ----------
  const $navbar = $('.navbar');
  $(window).on('scroll', function () {
    if ($(this).scrollTop() > 40) {
      $navbar.addClass('scrolled');
    } else {
      $navbar.removeClass('scrolled');
    }
  });

  // ---------- Smooth active nav link ----------
  const sections = $('section[id]');
  $(window).on('scroll', function () {
    const scrollPos = $(this).scrollTop() + 100;
    sections.each(function () {
      const $sec = $(this);
      const top = $sec.offset().top;
      const bottom = top + $sec.outerHeight();
      const id = $sec.attr('id');
      if (scrollPos >= top && scrollPos < bottom) {
        $('.navbar-nav .nav-link').removeClass('active');
        $('.navbar-nav .nav-link[href="#' + id + '"]').addClass('active');
      }
    });
  });

  // ---------- Counter animation ----------
  function animateCounters() {
    $('.counter').each(function () {
      const $this = $(this);
      const target = parseInt($this.data('target'), 10);
      if ($this.hasClass('counted')) return;

      const observer = new IntersectionObserver(function (entries) {
        if (entries[0].isIntersecting) {
          $this.addClass('counted');
          $({ count: 0 }).animate(
            { count: target },
            {
              duration: 2000,
              easing: 'swing',
              step: function (now) {
                $this.text(Math.floor(now) + '+');
              },
              complete: function () {
                $this.text(target + '+');
              }
            }
          );
          observer.disconnect();
        }
      }, { threshold: 0.5 });

      observer.observe(this);
    });
  }
  animateCounters();

  // ---------- Contact form (demo) ----------
  $('#contactFormEl').on('submit', function (e) {
    e.preventDefault();
    const name = $('#name').val().trim();
    const email = $('#email').val().trim();
    const message = $('#message').val().trim();

    if (!name || !email || !message) {
      alert('Please fill in all required fields.');
      return;
    }

    // Demo success
    $(this).html(
      '<div class="text-center py-4">' +
        '<i class="bi bi-check-circle-fill text-success" style="font-size:3rem;"></i>' +
        '<h4 class="mt-3 mb-2">Thank you!</h4>' +
        '<p class="text-muted mb-0">Your message has been received. We will get back to you shortly.</p>' +
      '</div>'
    );
  });

  // ---------- Close mobile menu on link click ----------
  $('.navbar-nav .nav-link').on('click', function () {
    const $collapse = $('.navbar-collapse');
    if ($collapse.hasClass('show')) {
      $collapse.collapse('hide');
    }
  });
});
