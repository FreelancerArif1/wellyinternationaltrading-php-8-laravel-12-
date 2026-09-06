/**
 * NEWLEAD Homepage - Bootstrap 5 + jQuery
 */

$(function () {
  'use strict';

  // ---------- Solutions data ----------
const solutions = [
  { title: 'Truck Parts', icon: 'bi-truck' },
  { title: 'Industrial Heavy Equipment', icon: 'bi-gear-wide-connected' },
  { title: 'Commercial Vehicles', icon: 'bi-bus-front' },
  { title: 'Renewable Energy Solutions', icon: 'bi-sun' },
  { title: 'Lithium Battery', icon: 'bi-battery-charging' },
  { title: 'China Business Travel Services', icon: 'bi-airplane' },
  { title: 'Consulting Services', icon: 'bi-briefcase' },
  { title: 'Textile & Garment', icon: 'bi-scissors' },
  { title: 'Plastic Raw Materials', icon: 'bi-box-seam' },
  { title: 'Gold Jewelry', icon: 'bi-gem' }
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
