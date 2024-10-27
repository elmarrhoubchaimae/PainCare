<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>PainCare</title>
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
  <title>Ecrire un blogs</title>
  <!-- =======================================================
  * Template Name: Append
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/append-bootstrap-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body class="blog-page" data-bs-spy="scroll" data-bs-target="#navmenu">
  <header id="header" class="header sticky-top d-flex align-items-center">
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

  <main id="main">

    <!-- Blog Details Page Title & Breadcrumbs -->
    <div data-aos="fade" class="page-title" style="margin-top:-60px">
      <div class="heading">
        <div class="container">
          <div class="row d-flex justify-content-center text-center">
            <div class="col-lg-8">
              <h1>Publier un blog</h1>
            </div>
          </div>
        </div>
      </div>
     
    </div><!-- End Page Title -->

    <!-- Blog-details Section - Blog Details Page -->
    <section id="blog-details" class="blog-details" style="margin-top: -100px;margin-left:330px;">

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="row g-5">

          <div class="col-lg-8">

            <article class="article">
              <div class="reply-form">

<!--FOOOOOOOOOOOOORM-->  
<form action="blogServlet" method="post" enctype="multipart/form-data">
  <input type="hidden" name="action" value="create">

  <div class="row">

    <div class="col-md-6 form-group">
      <input type="text" class="form-control" id="title" name="title" placeholder="Titre" required>
  </div>
                    
                  </div>
                 
                  <div class="row" style="margin-top: 40px;">

                    <div class="col form-group">
                      <textarea class="form-control" id="description" name="description"  placeholder="Description" required></textarea>
                  </div>

                  </div>
                  <div class="row" style="margin-top: 50px;">

                    <div class="col form-group" style="margin-top:-80px;">
                      <label for="picture" class="boutton">Télécharger une photo</label>
                      <input type="file" id="picture" name="picture" accept="image/*" style="display: none;
                      background: #58a6bea8!important;" required/>
                </div>

                  <div class="text-center" style="margin-left:-20px">
                    <button type="submit" class="btn1">Publier</button>
                  </div>
                 

                </form>

              </div>

            </div><!-- End blog comments -->
                 
                  
          </div>

         

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