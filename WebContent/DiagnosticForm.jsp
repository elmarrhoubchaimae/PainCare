<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Formulaire de diagnostic</title>
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
    <header id="header" class="header sticky-top d-flex align-items-center">
      <div class="container-fluid d-flex align-items-center justify-content-between">
  
        <a href="index.html" class="logo d-flex align-items-center me-auto me-xl-0">
          <!-- Uncomment the line below if you also wish to use an image logo -->
          <img src="assets/img/logo.png" alt="Custom Size" class="custom-size">
          <element class="pain">
          <h1 >Pain</h1>
          </element>
          <element class="care">
          <h1>Care</h1>
          </element>
          
          
        </a>
  
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

    <section id="contact" class="contact">

      <!--  Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>Test de diagnostic</h2>
        <p><i>Répondez aux questions ci-dessous pour évaluer votre risque de développer l'endométriose, classifié comme <strong>faible</strong>, <strong>modéré</strong>, ou <strong>élevé</strong>.</i> </p>
      </div><!-- End Section Title -->

      <div class="container" data-aos="fade-up" data-aos-delay="100" >

        

        <div class="container-fluid">
            <form action="DiagnosticServlet" method="post" class="php-email-form" data-aos="fade-up" data-aos-delay="200" style="background-color: white !important;">
                <div class="row">

                    <div class="col-md-3 mb-5">
                        <label for="agePuberte" style="margin-bottom: 10px;">Âge de la Puberté:</label>
                        <input type="number" id="agePuberte" name="agePuberte" class="form-control" required>
                    </div>
                
                    <div class="col-md-3 mb-5">
                        <label for="debutMenstruation"style="margin-bottom: 10px;">Début de menstruation:</label>
                        <select id="debutMenstruation" name="debutMenstruation" class="form-control" required>
                            <option value="AVANT_11_ANS">Avant 11 ans</option>
                            <option value="APRES_11_ANS">Après 11 ans</option>
                        </select>
                    </div>
                
                    <div class="col-md-3 mb-5">
                        <label for="douleurRapports"style="margin-bottom: 10px;">Douleur pendant les rapports:</label>
                        <select id="douleurRapports" name="douleurRapports" class="form-control" required>
                            <option value="OUI">Oui</option>
                            <option value="NON">Non</option>
                        </select>
                    </div>
                    <div class="col-md-3 mb-5">
                        <label for="aggravation"style="margin-bottom: 10px;">Ce qui les aggrave:</label>
                        <select id="aggravation" name="aggravation" class="form-control" required>
                            <option value="Mvt_Intestinaux">Mouvement Intestinaux</option>
                            <option value="Vessie">La vessie pleine</option>
                            <option value="Orgasme">L'orgasme</option>
                            <option value="Miction">La miction</option> 
                            <option value="Aucune">Aucune des réponses</option>  
                        </select>
                    </div>
                </div>
                <div class="row">

                    <div class="col-md-3 mb-5">
                        <label for="accouchee"style="margin-bottom: 10px;">Avez-vous dèja accouchée?</label>
                        <select id="accouchee" name="accouchee" class="form-control" required>
                            <option value="OUI">Oui</option>
                            <option value="NON">Non</option>
                        </select>
                    </div>
                
                    <div class="col-md-3 mb-5 ">
                        <label for="antecedentsFamiliaux"style="margin-bottom: 10px;">Antécédents Familiaux:</label>
                        <select id="antecedentsFamiliaux" name="antecedentsFamiliaux" class="form-control" required>
                            <option value="OUI">Oui</option>
                            <option value="NON">Non</option>
                        </select>
                    </div>
                
                    <div class="col-md-3 mb-5">
                        <label for="dureeCycle"style="margin-bottom: 10px;">Durée du Cycle:</label>
                        <select id="dureeCycle" name="dureeCycle" class="form-control" required>
                            <option value="MOINS_DE_27_JOURS">Moins de 27 jours</option>
                            <option value="PLUS_DE_27_JOURS">Plus de 27 jours</option>
                            <option value="PAS_SUR">Pas sur</option>
                        </select>
                    </div>
                
                    <div class="col-md-3 mb-5">
                        <label for="difficulteConception"style="margin-bottom: 10px;">Difficulté de Conception:</label>
                        <select id="difficulteConception" name="difficulteConception" class="form-control" required>
                            <option value="OUI">Oui</option>
                            <option value="NON">Non</option>
                        </select>
                    </div>
                
                    <div class="col-md-3 mb-5">
                        <label for="poids"style="margin-bottom: 10px;">Poids (en kg):</label>
                        <input type="number" id="poids" name="poids" class="form-control" required oninput="calculateBMI()">
                    </div>
                
                    <div class="col-md-3 mb-5">
                        <label for="taille"style="margin-bottom: 10px;">Taille (en cm):</label>
                        <input type="number" id="taille" name="taille" class="form-control" required oninput="calculateBMI()">
                    </div>
                
                    <div class="col-md-3 mb-5">
                        <label for="bmi"style="margin-bottom: 10px;">BMI:</label>
                        <input type="number" id="bmi" name="bmi" class="form-control" readonly>
                    </div>
                
                    <div class="col-md-3 mb-5">
                        <label for="intensiteDouleursAbdominales" style="margin-bottom: 10px;">Intensité des douleurs:</label>
                        <div class="slider-container">
                            <input type="range" id="intensiteDouleursAbdominales" name="intensiteDouleursAbdominales" class="form-control" min="1" max="10" step="1" oninput="updateSliderValue(this.value)" required>
                            <span id="sliderValue">5</span>
                        </div>
                    </div>
                </div>
                    <div class="row ">

                    <div class="col-md-3 mb-5">
                        <label for="periodeDouleursAbdominales"style="margin-bottom: 10px;">Période Douleurs Abdominales:</label>
                        <select id="periodeDouleursAbdominales" name="periodeDouleursAbdominales" class="form-control" required>
                            <option value="LIER_AUX_PERIODES_MENSTRUELLES">Lier aux périodes menstruelles</option>
                            <option value="LIER_AUX_OVULATIONS">Lier aux ovulations</option>
                            <option value="SANS_LIEN_AVEC_LA_PERIODE_MENTRUELLE_OU_LA_PERIODE_OVULATION">Sans lien avec la période menstruelle ou la période d'ovulation</option>
                        </select>
                    </div>
                
                    <div class="col-md-3 mb-5">
                        <label for="dureeRegles"style="margin-bottom: 10px;">Durée des Règles:</label>
                        <select id="dureeRegles" name="dureeRegles" class="form-control" required>
                            <option value="PAS_SUR">Pas sûr</option>
                            <option value="MOINS_DE_7_JOURS">Moins de 7 jours</option>
                            <option value="_7_JOURS_OU_PLUS">7 jours ou plus</option>
                        </select>
                    </div>
                
                    <div class="col-md-3 mb-5">
                        <label for="natureMenstruation"style="margin-bottom: 10px;">Nature Menstruation:</label>
                        <select id="natureMenstruation" name="natureMenstruation" class="form-control" required>
                            <option value="ABONDANTES">Abondantes</option>
                            <option value="MODEREES">Modérées</option>
                            <option value="LEGERES">Légères</option>
                        </select>
                    </div>
                </div>
                    <div class="col-md-12 mb-5 text-center justify-content-center">
                        <button type="submit" class="btn btn-primary" style="background-color:#ff879a !important ;color:white !important" style="color:white !important" >Générer le diagnostic</button>
                    </div>
                
                </form>
                
                
          </div><!-- End Contact Form -->

        </div>

      </div>

    </section><!-- End Contact Section -->






  </main>
  <script>
    function calculateBMI() {
        var poids = document.getElementById("poids").value;
        var tailleCm = document.getElementById("taille").value;

        // Convertir la taille de centimètres en mètres
        var tailleMetres = tailleCm / 100;

        if (poids && tailleMetres) {
            var bmi = (poids / (tailleMetres * tailleMetres)).toFixed(2);
            document.getElementById("bmi").value = bmi;
        }
    }
    </script>
    <script>
        function updateSliderValue(value) {
            document.getElementById('sliderValue').textContent = value;
        }
    </script>
    <style>
        .slider-container {
            display: flex;
            align-items: center;
        }
    
        .slider-container input[type="range"] {
            flex: 1;
            margin-right: 10px;
        }
    
        #sliderValue {
            font-weight: bold;
        }
    </style>

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


  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
