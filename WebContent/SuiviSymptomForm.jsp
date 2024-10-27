<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Suivi </title>
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
  body{
    .ligne{
      display: flex;
      align-items: center;

    }
    .ligne input[type="checkbox"] {
      margin-left: 50px; /* Adjust the margin as needed */
    }
  }
  .label{
    padding:10px;
    font-weight: bold;
  
  }
  .boutton2{
  color:white;
  background-color: rgba(140,201,194,255);
  box-shadow: 0px 0px  10px  rgba(0, 0, 0, 0.2);
  border: none;
  border-radius: 15px;
  padding: 12px 20px;
}


.boutton2:hover{
  background-color: rgb(121, 177, 170);
}
</style>
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

        <a class="btn-getstarted" href="profil.html">Logout</a>
        </a>

      </div>
    </header><!-- End Header -->

  <main id="main">

    <div class="container">
      <div class="align-items-center justify-content-center " style="margin-left: 50px !important;">
          <div class="container text-center" style="  margin-bottom:20px; ">
            <div class="container section-title" data-aos="fade-up">
              <h2>Faire le Test</h2>
              <p><i>Veuillez répondre avec soin en vous basant sur votre ressenti de douleur pendant vos règles menstruelles.</i> </p>

            </div>

            
          </div>
          
      <form action="SuiviSymptomServlet" method="post" class="align-items-center justify-content-center" style=" padding:20px; border-radius: 10px; box-shadow: 5px 5px 20px rgba(0,0,0,0.15); margin-top:-60px  " >
          <!-- Localisation -->
      <label class="label" for="localisation" >Localisation de la douleur:</label>
      <input type="checkbox" name="localisation" value="ABDOMEN" id="abdomen"> <label for="abdomen">Abdomen</label>
      <input type="checkbox" name="localisation" value="DOS" id="dos"> <label for="dos">Dos</label>
      <input type="checkbox" name="localisation" value="TETE" id="tete"> <label for="tete">Tête</label>
      <input type="checkbox" name="localisation" value="POITRINE" id="poitrine"> <label for="poitrine">Poitrine</label>
      <input type="checkbox" name="localisation" value="COU" id="cou"> <label for="cou">Cou</label>
      <input type="checkbox" name="localisation" value="HANCHES" id="hanches"> <label for="hanches">Hanches</label>
      
      <br>
      
      
           <!-- Aggravation Douleur -->
      <label for="aggravationDouleur" class="label">La douleur s'aggrave si:</label>
      <input type="checkbox" name="aggravationDouleur" value="MANQUE_DE_SOMMEIL" id="manque_de_sommeil"> <label for="manque_de_sommeil">Manque de Sommeil</label>
      <input type="checkbox" name="aggravationDouleur" value="ASSIS" id="assis"> <label for="assis">Assise</label>
      <input type="checkbox" name="aggravationDouleur" value="DEBOUT" id="debout"> <label for="debout">Debout</label>
      <input type="checkbox" name="aggravationDouleur" value="STRESS" id="stress"> <label for="stress">Stress</label>
      <input type="checkbox" name="aggravationDouleur" value="MARCHE" id="marche"> <label for="marche">Marche</label>
      <input type="checkbox" name="aggravationDouleur" value="EXERCICE" id="exercice"> <label for="exercice">Exercice</label>
      <input type="checkbox" name="aggravationDouleur" value="MICTION" id="miction"> <label for="miction">Miction</label>
      <!-- Add other aggravation options as needed -->
      
      <br>
      

           <!-- Intensite -->
           <label for="intensite" class="label">Intensité:</label>
           <input type="number" name="intensite" id="intensite" required min="0" max="10">
           
      
           <br>
      
           <!-- Sentiments -->
      <label for="sentiments" class="label">Sentiments:</label>
      <input type="checkbox" name="sentiments" value="TRISTE" id="triste"> <label for="triste">Triste</label>
      <input type="checkbox" name="sentiments" value="DEPRIME" id="deprime"> <label for="deprime">Déprimée</label>
      <input type="checkbox" name="sentiments" value="ANXIEUX" id="anxieux"> <label for="anxieux">Anxieuse</label>
      <input type="checkbox" name="sentiments" value="ETOURDI" id="etourdi"> <label for="etourdi">Étourdie</label>
      <input type="checkbox" name="sentiments" value="IRRITEE" id="irritee"> <label for="irritee">Irritée</label>
      <input type="checkbox" name="sentiments" value="HEUREUSE" id="heureuse"> <label for="heureuse">Heureuse</label>
      <!-- Add other sentiment options as needed -->
      
      <br>
      
      
           <!-- Symptoms -->
      <label for="symptom" class="label">Symptômes:</label>
      <input type="checkbox" name="symptom" value="CRAMPES" id="crampes"> <label for="crampes">Crampes</label>
      <input type="checkbox" name="symptom" value="MAUX_DE_TETE" id="maux_de_tete"> <label for="maux_de_tete">Maux de Tête</label>
      <input type="checkbox" name="symptom" value="FATIGUE" id="fatigue"> <label for="fatigue">Fatigue</label>
      <input type="checkbox" name="symptom" value="SEINS_SENSIBLES" id="seins_sensibles"> <label for="seins_sensibles">Seins Sensibles</label>
      <input type="checkbox" name="symptom" value="ACNE" id="acne"> <label for="acne">Acné</label>
      <input type="checkbox" name="symptom" value="BALLONEMENT" id="ballonnement"> <label for="ballonnement">Ballonnement</label>
      <input type="checkbox" name="symptom" value="ENVIE_DE_MANGER" id="envie_de_manger"> <label for="envie_de_manger">Envie de Manger</label>
      <input type="checkbox" name="symptom" value="VOMISSEMENT" id="vomissement"> <label for="vomissement">Vomissement</label>
      <input type="checkbox" name="symptom" value="DIARHEE" id="diarhee"> <label for="diarhee">Diarrhée</label>
      <!-- Add other symptom options as needed -->
      
      <br>
      
      
           <!-- Add other fields as needed -->
      
           <br>
          <div class="container" >
           <button type="submit" class="boutton2 " style="text-align:center; justify">Enregistrer</button>
           </div>
       </form>
      
      </div>
  </div> <!-- End Contact Section -->






  </main>
  
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