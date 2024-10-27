<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Profile</title>
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

  <!-- =======================================================
  * Template Name: Append
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/append-bootstrap-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body class="blog-page" data-bs-spy="scroll" data-bs-target="#navmenu">
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
 
    <!-- Faq Section - Home Page -->
    <section id="faq" class="faq">
      <div class="container section-title" data-aos="fade-up" style="margin-top:20px;color: #ff879a;
      ">
        <h2>Mon profil</h2>
      </div><!-- End Section Title -->
   
      <div class="container" style="margin-top:100px">

        <div class="row gy-4">
          <c:if test="${requestScope.userProfile ne null}">
          <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="content px-xl-5">
              <div class="member-img">

<!--image user-->  
<c:choose>
  <c:when test="${not empty userProfile.pictureBase64}">              
              <img src="data:image/png;base64,${userProfile.pictureBase64}" alt="User Picture" class="img-fluid"  style="margin-top:-140px;margin-left:-50px; ">
            </c:when>
            <c:otherwise>
                <!-- Affichez une image par défaut ou un message indiquant qu'aucune image n'est disponible -->
                <img src="images1/01.png" alt="Default Profile Picture" class="img-fluid"  style="margin-top:-140px;margin-left:-50px; "/>
            </c:otherwise>
        </c:choose>
      </c:if>     
              </div>
            </div>
          </div>

          <div class="col-lg-8" data-aos="fade-up" data-aos-delay="200" style="margin-top: -60px;">

            <div class="faq-container">

              <div class="faq-item">
<!--nom user-->                <h3><span>${userProfile.name}</span></h3>
              </div><!-- End Faq item-->

              <div class="faq-item">
<!--email-->                <h3><span>${userProfile.email}</span></h3>
              </div><!-- End Faq item-->

           

            </div>

          </div>
        </div>

      </div>

    </section><!-- End Faq Section -->

    <!-- Team Section - Home Page -->
  

 

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