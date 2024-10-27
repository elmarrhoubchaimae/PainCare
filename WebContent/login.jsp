<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.JAVA.Beans.User" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <meta content="" name="description">
  <meta content="" name="keywords">
  <title>login</title>
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
  <style>
    /* Set a specific width and height */
    .custom-size {
      width: 65px;
      height: 60px;
    }
</style>
</head>

<body class="blog-page" data-bs-spy="scroll" data-bs-target="#navmenu">

  <!-- ======= Header ======= -->
  <header id="header" class="header sticky-top d-flex align-items-center">
    <div class="container-fluid d-flex align-items-center justify-content-between" style="margin-bottom: -10px; ">

        <a href="home.jsp" class="logo d-flex align-items-center me-auto me-xl-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <element class="pain">
        <h1 >Pain</h1>
        </element>
        <element class="care">
        <h1>Care</h1>
        </element>
        
        
      </a>

      <!-- Nav Menu -->
      <nav id="navmenu" class="navmenu">
        
        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav><!-- End Nav Menu -->

      <a class="btn-getstarted" href="register.jsp">Get Started</a>

    </div>
  </header><!-- End Header -->
 <!--Login form -->
 <section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100">
      <div class="col-md-8 col-lg-7 col-xl-6" style="margin-top: -80px; border-radius:60px">
        <img src="assets\img\login.jpg"
          class="img-fluid" alt="Phone image">
      </div>
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
        
        <form class="formclass" action="loginServlet" method="post">
          <div style ="text-align: center; display: flex; align-items: center; justify-content: center; padding-bottom: 20px;">
            <div style="color: #b1ded8 !important ; font-size: 35px; font-weight: bold;" >LogIn to&nbsp;  </div>
            <div style="color:#ff879a !important ; font-size: 35px; font-weight: bold;">PainCare </div>
          </div>
          <!-- Email input -->
          <div class="form-outline mb-4">
            <label class="form-label" for="form1Example13">Email address</label>
            <input type="email" id="email" name="email" class="form-control form-control-lg" placeholder="Email address.." style="font-size:14px; color: rgba(0, 0, 0, 0.1);"/>
            
          </div>

          <!-- Password input -->
          <div class="form-outline mb-4">
            <label class="form-label" for="form1Example23">Password</label>
            <input type="password" id="password" name="password" class="form-control form-control-lg" placeholder="Password.."style="font-size:14px; color: rgba(0, 0, 0, 0.5);"/>
            
          </div>

          

          <!-- Submit button -->
          <button type="submit" class="btn btn-primary btn-lg btn-getstarted" value="Se connecter" style=" margin-left:190px">Log In</button>

         

          <br>
          <div style="text-align: center; display: flex; align-items: center; justify-content: center;">
        
        </form>
      </div>
    </div>
  </div>
</section>
   






  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">


    <div class="container copyright text-center mt-4">
      <p>&copy; <span>Copyright</span> <strong class="px-1">PainCare</strong> <span>All Rights Reserved</span></p>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you've purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: [buy-url] -->
        Designed by <a href="https://bootstrapmade.com/">PainCare</a>
      </div>
    </div>

  </footer><!-- End Footer -->
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