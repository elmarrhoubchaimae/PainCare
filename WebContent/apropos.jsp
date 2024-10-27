<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>A propos</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
<style>
  body {
    .testimonials .swiper-pagination .swiper-pagination-bullet {
      width: 10px;
      height: 10px;
      opacity: 1;
      border: none;
      background-color: #ff879a;
    }

    .testimonials .swiper-pagination .swiper-pagination-bullet-active {
      background-color: #7e9dd8;
    }

    @media (max-width: 767px) {
      .testimonials .testimonials-carousel,
      .testimonials .testimonials-slider {
        overflow: hidden;
      }

      .testimonials .testimonial-item {
        margin: 15px;
      }
    }
  }
</style>


</head>
<body class="index-page" data-bs-spy="scroll" data-bs-target="#navmenu">

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">
    <div class="container-fluid d-flex align-items-center justify-content-between">
  
        <a href="home.jsp" class="logo d-flex align-items-center me-auto me-xl-0">
          <!-- Uncomment the line below if you also wish to use an image logo -->
          <img src="assets/img/logo.png" alt="Custom Size" class="custom-size">
          <element class="pain">
          <h1 >Pain</h1>
          </element>
          <element class="care">
          <h1>Care</h1>
          </element>
          
          
        </a>
  
        <!-- Nav Menu -->
   <nav id="navmenu" class="navmenu">
        <ul>
          <li><a href="home.jsp">Accueil</a></li>
          <li class="dropdown has-dropdown"><a href="#"><span>Communauté</span> <i class="bi bi-chevron-down"></i></a>
            <ul class="dd-box-shadow">
              <li><a href="blogServlet?action=view">Discussions</a></li>
              <li><a href="blogServlet?action=create">Ajouter un blog</a></li>
            </ul>
          </li>
          <li><a href="SuiviSymptomForm.jsp">Suivi</a></li>
          <li><a href="calendar.html">Calendrier</a></li>
          <li class="dropdown has-dropdown"><a href="#"><span>Paramètres</span> <i class="bi bi-chevron-down"></i></a>
            <ul class="dd-box-shadow">
              <li><a href="apropos.jsp">A propos de nous</a></li>
              <li><a href="${pageContext.request.contextPath}/userProfile?action=delete">Supprimer mon compte</a></li>
            </ul>
          <li class="dropdown has-dropdown"><a href="#"><span>Mon profil</span> <i class="bi bi-chevron-down"></i></a>
            <ul class="dd-box-shadow">
              <li><a href="${pageContext.request.contextPath}/userProfile?action=view">Afficher profil</a></li>
              <li><a href="${pageContext.request.contextPath}/userProfile?action=update">Modifier profil</a></li>
            </ul>
          </li>



        </ul>

        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav><!-- End Nav Menu -->
  
        <a class="btn-getstarted" href="logoutServlet">Logout</a>
      </div>
    </header><!-- End Header -->


    <!-- Hero Section - Home Page -->



    <section id="hero" class="hero">

        <img src="assets\img\shutterstock_1863097447.jpg" alt="" data-aos="fade-in">    <section id="testimonials" class="testimonials">

      <div class="container">

        <div class="row align-items-center">

          <div class="col-lg-5 info" data-aos="fade-up" data-aos-delay="100">
            <h3 style="color:white;margin-top:-180px;font-size:40px">A propos de nous</h3>
          
          </div>

          <div class="col-lg-7" data-aos="fade-up" data-aos-delay="200">

            <div class="swiper">
              <template class="swiper-config">
                {
                "loop": true,
                "speed" : 600,
                "autoplay": {
                "delay": 5000
                },
                "slidesPerView": "auto",
                "pagination": {
                "el": ".swiper-pagination",
                "type": "bullets",
                "clickable": true
                }
                }
              </template>
              <div class="swiper-wrapper">

                <div class="swiper-slide">
                  <div class="testimonial-item">
                    <div class="d-flex">
                      <div>
                        <h3>Ressources Complètes et suivi personnalisé

                        </h3>
                       
                      </div>
                    </div>
                    <p>
                      <i class="bi bi-quote quote-icon-left"></i>
                      <span style="color:black;">La solution m-Health PainCare offre des ressources complètes et un suivi personnalisé pour soutenir les femmes confrontées à l'endométriose. Accès à des documents éducatifs, une communauté de soutien et un suivi personnalisé des symptômes. Notre engagement est d'apporter une réponse globale aux besoins spécifiques de chaque femme</span>
                      <i class="bi bi-quote quote-icon-right"></i>
                    </p>
                  </div>
                </div><!-- End testimonial item -->

                <div class="swiper-slide">
                  <div class="testimonial-item">
                    <div class="d-flex">
                      <div>
                        <h3>Outil Convivial pour la Gestion de la Douleur

                        </h3>
                        
                      </div>
                    </div>
                    <p>
                      <i class="bi bi-quote quote-icon-left"></i>
                      <span style="color:black">L'objectif principal est de mettre à la disposition des femmes atteintes d'endométriose un outil convivial et accessible. Cet outil facilite la gestion de la douleur, fournit des informations essentielles et offre un soutien émotionnel. Le but ultime est d'améliorer le bien-être global et la qualité de vie, y compris pour celles qui soupçonnent d'avoir la condition.</span>
                      <i class="bi bi-quote quote-icon-right"></i>
                    </p>
                  </div>
                </div><!-- End testimonial item -->

                <div class="swiper-slide">
                  <div class="testimonial-item">
                    <div class="d-flex">
                      <div>
                        <h3>Contrôle de la Condition et Amélioration du Bien-Être

                        </h3>
                        
                      </div>
                    </div>
                    <p>
                      <i class="bi bi-quote quote-icon-left"></i>
                      <span style="color:black;" >Chez PainCare, nous nous engageons à offrir plus qu'une simple gestion de l'endométriose. En permettant aux femmes de prendre le contrôle de leur condition, nous les guidons vers une vie plus épanouissante. Notre objectif est d'inspirer un changement positif, de la gestion de la douleur à une vie pleine de bonheur et de santé.</span>
                      <i class="bi bi-quote quote-icon-right"></i>
                    </p>
                  </div>
                </div><!-- End testimonial item -->


                

              </div>
              <div class="swiper-pagination"></div>
            </div>

          </div>

        </div>

      </div>

    </section><!-- End Testimonials Section -->
    </section>

   

  <!-- Scroll Top Button -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader">
    <div></div>
    <div></div>
    <div></div>
    <div></div>
  </div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>