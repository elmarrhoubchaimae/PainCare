<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Evolution de la Douleur</title>
	<!--  <script src="${pageContext.request.contextPath}/node_modules/chart.js/dist/Chart.min.js"></script> 
	-->
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<!-- Include moment.js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
	
	<!--Ajoutez le script de html2canvas à votre page HTML  -->
	
	<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
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
	
	
    <!-- Vous devez inclure ces bibliothèques pour que les graphiques fonctionnent -->
    
    <style>
        .chart-container {
            width: 80%;
            max-width: 400px; /* Adjust the maximum width as needed */
            margin: auto;
        }
        .chart-line-container {
            width: 80%;
            max-width: 800px; /* Adjust the maximum width as needed */
            margin: auto;
        }
        h5{
        margin-left:40px}
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
        }
    </style>
</head>
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
<!--  Section Title -->
	<div id="capture-container">
      <div class="container section-title" style="margin-top:30px">
        <h2>Evolution de la douleur</h2>
      </div>
       <div class="container section-title" style="margin-top:30px">
<h5>Pain average<p>${averageIntensity}</p> </h5>
      </div>
    <div class="d-flex justif-content-center align-items-center text-center" style="margin-bottom:140px">
    <h5 >L'intensité de la douleur en fonction de la date</h5>
  
<div class="chart-line-container">
        <canvas id="intensityChart"></canvas>
    </div>
    </div>

<script>
    // Récupérer les données du servlet et les convertir en JavaScript
	var dates = [${dates}];  // Dates are already formatted as strings in Java
    var intensities = ${intensities};

    // Configuration du graphique en ligne
    var ctx = document.getElementById('intensityChart').getContext('2d');
    var intensityChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: dates,
            datasets: [{
                label: 'Intensité de la Douleur',
                data: intensities,
                borderColor: '#fd879d',
                borderWidth: 2,
                fill: false
            }]
        },
        options: {
            scales: {
            	x: {
                    position: 'bottom'
                },
                y: {
                    type: 'linear',
                    position: 'left', 
                    suggestedMin: 0,
                    suggestedMax: 10
                }
            },
            
        }
    });
</script>
    
	    <!-- 3. Localisation des douleurs (Graphique en secteurs - Pie chart) -->
	    <div class="d-flex justif-content-center align-items-center text-center" style="margin-bottom:140px">
	    <h5 >La localisation des douleurs</h5>
	    <!-- Include the chart here with data from the server -->
	<div class="chart-container">
	        <canvas id="locationChart"></canvas>
	    </div>
	</div>
	<script>
	    // Récupérer les données du servlet et les convertir en JavaScript
	    var locationLabels = ${locationLabels};  // List of location labels from the server
	    var locationData = ${locationData};      // List of location data from the server
	
	 
	    // Configuration du graphique en secteurs (Pie chart)
	    var ctxLocation = document.getElementById('locationChart').getContext('2d');
	    var locationChart = new Chart(ctxLocation, {
	        type: 'pie',
	        data: {
	            labels: locationLabels,
	            datasets: [{
	                data: locationData,
	                backgroundColor:[
	                    '#FF0000', // Red
	                    '#0000FF', // Blue
	                    '#8A2BE2', // Blue Violet
	                    '#1E90FF', // Dodger Blue
	                    '#800080', // Purple
	                    '#000080', // Navy
	                    '#FF1493', // Deep Pink
	                    '#4169E1', // Royal Blue
	                    '#9400D3', // Dark Violet
	                ],

	                borderColor: [
	                	'#ffadad', '#9bf6ff','#ffd6a5', '#fdffb6', '#caffbf',  '#a0c4ff', '#bdb2ff', '#ffc6ff', '#e5e5e5',
	                ],
	                borderWidth: 1
	            }]
	        }
	    
	    
	    });
	</script>

    <div class="d-flex justif-content-center align-items-center text-center "style="margin-bottom:140px">
	<h5>Les facteurs aggravant la douleur</h5>
	<!-- Include the chart here with data from the server -->
		<div class="chart-container">
			<canvas id="aggravationChart" ></canvas>
		</div>
		</div>
		
	<script>
	    // Récupérer les données du servlet et les convertir en JavaScript
	    var aggravationLabels = ${aggravationLabels};  // List of aggravation labels from the server
	    var aggravationData = ${aggravationData};      // List of aggravation data from the server
	
	    // Configuration du graphique en secteurs (Pie chart)
	    var ctxAggravation = document.getElementById('aggravationChart').getContext('2d');
	    var aggravationChart = new Chart(ctxAggravation, {
	        type: 'pie',
	        data: {
	            labels: aggravationLabels,  // Enclose labels in quotes
	            datasets: [{
	                data: aggravationData,
	                backgroundColor:[
	                    '#FF0000', // Red
	                    '#0000FF', // Blue
	                    '#8A2BE2', // Blue Violet
	                    '#1E90FF', // Dodger Blue
	                    '#800080', // Purple
	                    '#000080', // Navy
	                    '#FF1493', // Deep Pink
	                    '#4169E1', // Royal Blue
	                    '#9400D3', // Dark Violet
	                ],
	                borderColor: [
	                	'#ffadad', '#9bf6ff','#ffd6a5', '#fdffb6', '#caffbf',  '#a0c4ff', '#bdb2ff', '#ffc6ff', '#e5e5e5',
	                ],
	                borderWidth: 1
	            }]
	        }
	    });
	</script>
    <div class="d-flex justif-content-center align-items-center text-center"style="margin-bottom:140px">
	<h5>Les sentiments ressentis pendant cette période</h5>
	<!-- Include the chart here with data from the server -->
		<div class="chart-container">
			<canvas id="sentimentChart"></canvas>
		</div>
	</div>
</div>
		


	<script>
	    // Récupérer les données du servlet et les convertir en JavaScript
	    var sentimentLabels = ${sentimentLabels};  // List of sentiment labels from the server
	    var sentimentData = ${sentimentData};      // List of sentiment data from the server
	
	    // Configuration du graphique en secteurs (Pie chart)
	    var ctxSentiment = document.getElementById('sentimentChart').getContext('2d');
	    var sentimentChart = new Chart(ctxSentiment, {
	        type: 'pie',
	        data: {
	            labels: sentimentLabels,  // Enclose labels in quotes
	            datasets: [{
	                data: sentimentData,
	                backgroundColor:[
	                    '#FF0000', // Red
	                    '#0000FF', // Blue
	                    '#8A2BE2', // Blue Violet
	                    '#1E90FF', // Dodger Blue
	                    '#800080', // Purple
	                    '#000080', // Navy
	                    '#FF1493', // Deep Pink
	                    '#4169E1', // Royal Blue
	                    '#9400D3', // Dark Violet
	                ],


	                borderColor: [
	                	'#ffadad', '#9bf6ff','#ffd6a5', '#fdffb6', '#caffbf',  '#a0c4ff', '#bdb2ff', '#ffc6ff', '#e5e5e5',
	                ],
	                borderWidth: 1
	            }]
	        }
	    });
	</script>

		<!-- Telecharger  -->
	 
	 	<button id="downloadPageButton"     class="boutton2" style="margin-left:750px;margin-botto:20px;background-color:#fd879d !important">Télécharger la page</button>
     <script>

      // Récupérez la référence du bouton et de la page
      var downloadPageButton = document.getElementById('downloadPageButton');
      
      // Attachez un gestionnaire d'événements au clic du bouton
      downloadPageButton.addEventListener('click', function() {
          // Utilisez html2canvas pour prendre une capture d'écran du conteneur spécifique
          html2canvas(document.getElementById('capture-container'), { 
              scale: 2,
              height: document.getElementById('capture-container').scrollHeight
          }).then(function(canvas) {
              // Convertissez la capture d'écran en données d'URL au format PNG
              var dataUrl = canvas.toDataURL('image/png');
  
              // Créez un lien de téléchargement avec la capture d'écran en tant que données d'URL
              var downloadLink = document.createElement('a');
              downloadLink.href = dataUrl;
              downloadLink.download = 'page_screenshot.png';
  
              // Ajoutez le lien au document et déclenchez le téléchargement
              document.body.appendChild(downloadLink);
              downloadLink.click();
              document.body.removeChild(downloadLink);
          });
      });
  </script>
  
  
</div>
	 			 		
	 		
	 	

</body>
</html>
