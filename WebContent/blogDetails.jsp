<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
                  
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>${blog.title}</title>

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
</head>

<body class="blog-details-page" data-bs-spy="scroll" data-bs-target="#navmenu">

  <!-- ======= Header ======= -->

  <body class="blog-page" data-bs-spy="scroll" data-bs-target="#navmenu">
    <header id="header" class="header sticky-top d-flex align-items-center">
      <div class="container-fluid d-flex align-items-center justify-content-between">
  
        <a href="home.jsp" class="logo d-flex align-items-center me-auto me-xl-0">
          <img src="assets/img/logo.png" alt="Custom Size" class="custom-size">
          <element class="pain">
            <h1>Pain</h1>
          </element>
          <element class="care">
            <h1>Care</h1>
          </element>
        </a>
  
        <!-- Nav Menu -->
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
    </header><!-- End Header -->
    <!-- Blog-details Section - Blog Details Page -->
    <section id="blog-details" class="blog-details" style="width: 1500px;">

        <div class="row g-5">

          <div class="col-lg-8">
            <!--DEBUT ARTICLE-->
            <article class="article">
              <h2 class="title">${blog.title} 
               
              </h2>

              <div class="post-img">
                <img src="data:image/jpeg;base64,${blog.pictureBase64}" alt="" class="img-fluid">
              </div>
<div class="content">
                <p>${blog.description}</p>   
              </div>
              <div class="meta-top">
                <ul>
                  <li class="d-flex align-items-center"><i class="bi bi-clock"></i><time datetime="2020-01-01">${blog.publicationDate}</time></li>
                </ul>
              </div><!-- End meta top -->

              <!-- End post content -->
            </article><!-- End post article -->

           

            <div class="comments">
<!--COMMENTAIRES-->
            <c:forEach var="comment" items="${comments}"> 
              <div id="comment-2" class="comment">
               
                <div >
                  <div class="d-flex align-items-center" >
                    <h5><a href="">${comment.user.name}</a></h5>
                    <c:if test="${comment.user.id eq sessionScope.user.id}">
                      <form action="${pageContext.request.contextPath}/commentServlet" method="post">
                        <input type="hidden" name="action" value="deleteComment">
                        <input type="hidden" name="commentId" value="${comment.commentId}">
                        <button type="submit" style="background: none; border: none; margin-right: 10px;" onclick="deleteItem()">
                            <i class="bi bi-trash"></i> 
                        </button>
                    </form>
                  </c:if>
                  </div>   
<!--date-->                    
                 <time datetime="2020-01-01">${comment.commentDate}</time>
                   
<!--comment content-->                 <p>${comment.content}      </p>
                  </div>
                  </div>
                  </c:forEach>
                </div>
                
             <c:if test="${not empty newComment}">
              <div id="comment-2" class="comment">
                
                 <div >
                   <div class="d-flex align-items-center" >
                     <h5><a href="">${comment.user.name}</a></h5>
                     <c:if test="${newComment.user.id eq sessionScope.user.id}">
                       <form action="${pageContext.request.contextPath}/commentServlet" method="post">
                         <input type="hidden" name="action" value="deleteComment">
                         <input type="hidden" name="commentId" value="${newComment.commentId}">
                         <button type="submit" style="background: none; border: none; margin-right: 10px;" onclick="deleteItem()">
                             <i class="bi bi-trash"></i> 
                         </button>
                     </form>
                   </c:if>
                   </div>   
 <!--date-->                    
                  <time datetime="2020-01-01">${comment.commentDate}</time>
                    
 <!--comment content-->                 <p>${comment.content}      </p>
                   </div>
                   </div>
                   </c:if>
                 </div>
                


                </div> <div class="reply-form" >
                <h4 class="com">Laisser un commentaire</h4>
                <form action="${pageContext.request.contextPath}/commentServlet" method="post">
                  <input type="hidden" name="action" value="addComment">
                  <input type="hidden" name="blogId" value="${blog.blogId}">
                  <div class="row">
                  
                  <div class="row">
                    <div class="col form-group">
                      <textarea name="content" id="content" rows="4" required class="form-control" ></textarea>
                    </div>
                  </div>

                  <div class="text-center">
                    <button type="submit" class="btn btn-primary" style="background-color:#ff879a">Publier</button>
                  </div>

                </form>

              </div>

              </div><!-- End comment #2-->



              </div><!-- End comment #4 -->

             

            </div><!-- End blog comments -->

          </div>

         

    </section><!-- End Blog-details Section -->

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
