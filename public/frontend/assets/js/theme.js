/**
 * NEWLEAD Homepage - Bootstrap 5 + jQuery
 */

$(function () {
  'use strict';

  // ---------- Solutions data ----------
// const solutions = [
//   { title: 'Truck Parts', icon: '' },
//   { title: 'Industrial Heavy Equipment', icon: 'bi-gear-wide-connected' },
//   { title: 'Commercial Vehicles', icon: 'bi-bus-front' },
//   { title: 'Renewable Energy Solutions', icon: 'bi-sun' },
//   { title: 'Lithium Battery', icon: 'bi-battery-charging' },
//   { title: 'China Business Travel Services', icon: 'bi-airplane' },
//   { title: 'Consulting Services', icon: 'bi-briefcase' },
//   { title: 'Textile & Garment', icon: 'bi-scissors' },
//   { title: 'Plastic Raw Materials', icon: 'bi-box-seam' },
//   { title: 'Gold Jewelry', icon: 'bi-gem' }
// ];

//   // Render solutions grid
//   const $grid = $('#solutionsGrid');
//   solutions.forEach(function (item) {
//     const html = `
//       <div class="col-6 col-md-4 col-lg-3 col-xl-2">
//         <div class="solution-item">
//           <div class="icon-wrap">
//             <i class="bi ${item.icon}"></i>
//           </div>
//           <h6>${item.title}</h6>
//         </div>
//       </div>
//     `;
//     $grid.append(html);
//   });

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
  // const sections = $('section[id]');
  // $(window).on('scroll', function () {
  //   const scrollPos = $(this).scrollTop() + 100;
  //   sections.each(function () {
  //     const $sec = $(this);
  //     const top = $sec.offset().top;
  //     const bottom = top + $sec.outerHeight();
  //     const id = $sec.attr('id');
  //     if (scrollPos >= top && scrollPos < bottom) {
  //       $('.navbar-nav .nav-link').removeClass('active');
  //       $('.navbar-nav .nav-link[href="#' + id + '"]').addClass('active');
  //     }
  //   });
  // });

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
  // $('#contactFormEl').on('submit', function (e) {
  //   e.preventDefault();
  //   const name = $('#name').val().trim();
  //   const email = $('#email').val().trim();
  //   const message = $('#message').val().trim();

  //   if (!name || !email || !message) {
  //     alert('Please fill in all required fields.');
  //     return;
  //   }

  //   // Demo success
  //   $(this).html(
  //     '<div class="text-center py-4">' +
  //       '<i class="bi bi-check-circle-fill text-success" style="font-size:3rem;"></i>' +
  //       '<h4 class="mt-3 mb-2">Thank you!</h4>' +
  //       '<p class="text-muted mb-0">Your message has been received. We will get back to you shortly.</p>' +
  //     '</div>'
  //   );
  // });




$('#contactFormEl').on('submit', function (e) {
    e.preventDefault();

    const form = $(this);
    const action = form.attr('action');

    const name = $('#name').val().trim();
    const email = $('#email').val().trim();
    const message = $('#message').val().trim();

    if (!name || !email || !message) {
        alert('Please fill in all required fields.');
        return;
    }

    $.ajax({
        url: action,
        type: 'POST',
        data: form.serialize(),

        beforeSend: function () {
            form.find('button[type="submit"]')
                .prop('disabled', true)
                .text('Sending...');
        },

        success: function (response) {
            form.html(
                '<div class="text-center py-4">' +
                    '<i class="bi bi-check-circle-fill text-success" style="font-size:3rem;"></i>' +
                    '<h4 class="mt-3 mb-2">Thank you!</h4>' +
                    '<p class="text-muted mb-0">Your message has been received. We will get back to you shortly.</p>' +
                '</div>'
            );
        },

        error: function (xhr) {
            form.find('button[type="submit"]')
                .prop('disabled', false)
                .text('Send Message');

            alert('Something went wrong. Please try again.');
        }
    });
});



  // ---------- Close mobile menu on link click ----------
  $('.navbar-nav .nav-link').on('click', function () {
    const $collapse = $('.navbar-collapse');
    if ($collapse.hasClass('show')) {
      $collapse.collapse('hide');
    }
  });
});





document.addEventListener('DOMContentLoaded', () => {
    // Dynamic Modal Elements
    const modal = document.getElementById('imgSliderModal');
    const modalImg = document.getElementById('imgSliderActiveImg');
    const modalCaption = document.getElementById('imgSliderCaption');
    const modalCounter = document.getElementById('imgSliderCounter');
    const btnClose = document.getElementById('imgSliderClose');
    const btnPrev = document.getElementById('imgSliderPrev');
    const btnNext = document.getElementById('imgSliderNext');

    let visibleItems = [];
    let currentIndex = 0;

    // Helper: Refresh list of currently visible gallery items (handles category filtering automatically)
    function updateVisibleGallery() {
        visibleItems = Array.from(document.querySelectorAll('.gallery-item'))
            .filter(item => item.style.display !== 'none');
    }

    // Function to render the popup content at current index
    function showImage(index) {
        if (visibleItems.length === 0) return;

        // Wrap around limits
        if (index < 0) currentIndex = visibleItems.length - 1;
        else if (index >= visibleItems.length) currentIndex = 0;
        else currentIndex = index;

        const currentItem = visibleItems[currentIndex];
        const imgEl = currentItem.querySelector('.img-popup-target');
        const titleEl = currentItem.querySelector('.img-popup-title');

        modalImg.src = imgEl ? imgEl.src : '';
        modalCaption.textContent = titleEl ? titleEl.textContent : '';
        modalCounter.textContent = `${currentIndex + 1} / ${visibleItems.length}`;
    }

    // Open Modal Function
    function openModal(itemElement) {
        updateVisibleGallery();
        currentIndex = visibleItems.indexOf(itemElement);
        if (currentIndex === -1) currentIndex = 0;

        showImage(currentIndex);
        modal.classList.add('active');
        document.body.style.overflow = 'hidden'; // Prevent page scroll
    }

    // Close Modal Function
    function closeModal() {
        modal.classList.remove('active');
        document.body.style.overflow = '';
    }

    // Bind Click Listener on Gallery Items
    document.querySelectorAll('.gallery-item').forEach(item => {
        const trigger = item.querySelector('.img-popup-trigger');
        if (trigger) {
            trigger.addEventListener('click', () => openModal(item));
        }
    });

    // Control Event Listeners
    btnClose.addEventListener('click', closeModal);
    btnNext.addEventListener('click', () => showImage(currentIndex + 1));
    btnPrev.addEventListener('click', () => showImage(currentIndex - 1));

    // Close Modal when clicking background overlay
    modal.addEventListener('click', (e) => {
        if (e.target === modal) closeModal();
    });

    // Keyboard Navigation (Esc, Left Arrow, Right Arrow)
    document.addEventListener('keydown', (e) => {
        if (!modal.classList.contains('active')) return;
        if (e.key === 'Escape') closeModal();
        if (e.key === 'ArrowRight') showImage(currentIndex + 1);
        if (e.key === 'ArrowLeft') showImage(currentIndex - 1);
    });

    // Category Filtering Logic
    const filterButtons = document.querySelectorAll('.filter-btn');
    const galleryItems = document.querySelectorAll('.gallery-item');

    filterButtons.forEach(btn => {
        btn.addEventListener('click', () => {
            filterButtons.forEach(b => b.classList.remove('active'));
            btn.classList.add('active');

            const filter = btn.getAttribute('data-filter');

            galleryItems.forEach(item => {
                const category = item.getAttribute('data-category');
                if (filter === 'all' || category === filter) {
                    item.style.display = '';
                } else {
                    item.style.display = 'none';
                }
            });

            // Update visible list for popup slider
            updateVisibleGallery();
        });
    });
});