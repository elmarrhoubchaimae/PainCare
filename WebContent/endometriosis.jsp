<%@ page import="java.nio.file.Paths, java.nio.file.Files, java.nio.charset.StandardCharsets, java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.JAVA.DAO.EndometriosisInfo" %>
<%@ page import="java.util.regex.Matcher, java.util.regex.Pattern" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%! 
    private String extractValue(String input, String key) {
        String pattern = "\"" + key + "\":\\s*\"(.*?)\"";
        Pattern r = Pattern.compile(pattern);
        Matcher m = r.matcher(input);
        
        if (m.find()) {
            return m.group(1);
        } else {
            return "";
        }
    }
%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Endometriose Articles</title>
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
  <link href="assets\css\main.css" rel="stylesheet">
    <!-- Ajoutez ici vos liens vers les feuilles de style CSS nécessaires -->
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
  
<div class="container section-title" style="margin-top:30px">
        <h2>Liste des articles sur l'endométriose</h2>
      </div>        

        <div class="row">
            <% 
                // Obtenir le chemin absolu du fichier JSON
                String jsonFilePath = application.getRealPath("scraped_articles.json");

                // Lire le contenu JSON en une chaîne
                String jsonContent = new String(Files.readAllBytes(Paths.get(jsonFilePath)), StandardCharsets.UTF_8);

                // Transformer la chaîne JSON en une liste d'objets Java (vous devrez créer une classe pour représenter les données)
                List<EndometriosisInfo> endometriosisInfos = new ArrayList<>();
                
                // Parsez la chaîne JSON manuellement et ajoutez les objets à la liste
                String[] articles = jsonContent.split("\\},\\s*\\{");
                for (String article : articles) {
                    // Remplacez avec la logique réelle pour extraire les valeurs du JSON
                    String title = extractValue(article, "title");
                    String link = extractValue(article, "link");
                    String description = extractValue(article, "description");
                    String image = extractValue(article, "image");

                    EndometriosisInfo info = new EndometriosisInfo();
                    info.setTitle(title);
                    info.setLink(link);
                    info.setDescription(description);
                    info.setImage(image);

                    endometriosisInfos.add(info);
                }
            %>

        
            
            
            
            
        </div>
    </div>
    
    
    

             

          
<!--ARTICLE 1-->
            <% for (EndometriosisInfo endometriosisInfo : endometriosisInfos) { %>
<div class="container">
        <div class="row gy-4 posts-list"> 

 <!--IMAGE BLOG-->             
<!--TITRE BLOG-->              
              <h2 class="post-category">
                <a href='<%= endometriosisInfo.getLink() %>'target="_blank"><%= endometriosisInfo.getTitle() %></a>
              </h2>
              <p class="post-category"><%= endometriosisInfo.getDescription() %></p>

              <div class="d-flex align-items-center">
                <div class="post-meta">
<!--NOM USER-->                  
                 
           
                </div>
              </div>
<!--DELETE-->              
              
          </div>
          </div>              
           <% } %> 

                             
               
               
          End post list item -->
<!--article2-->          
   

        

        </div><!-- End blog posts list -->
    
     <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
    
    

    <!-- Ajoutez ici vos scripts JavaScript ou liens vers les fichiers JavaScript nécessaires -->
</body>
</html>
