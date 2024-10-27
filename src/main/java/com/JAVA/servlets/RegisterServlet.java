package com.JAVA.servlets;

import java.io.IOException;

import com.JAVA.Beans.User;
import com.JAVA.DAO.DAOException;
import com.JAVA.DAO.DAOFactory;
import com.JAVA.DAO.UserDaoImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    // ... (imports and other servlet annotations)

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Récupérer les paramètres du formulaire
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        if (password.equals(confirmPassword)) {
            // Créer un objet User
            User user = new User();
            user.setName(name);
            user.setEmail(email);
            user.setPassword(password);

            // Utiliser le DAO pour ajouter l'utilisateur à la base de données
            UserDaoImpl userDao = new UserDaoImpl(DAOFactory.getInstance()); // Remplacez DAOFactory() par votre propre initialisation
            try {
                userDao.addUser(user);
            } catch (DAOException e) {
                // Gérer les erreurs liées à la base de données
                e.printStackTrace(); // À remplacer par une gestion appropriée des erreurs
            }

            // Stocker l'utilisateur dans la session
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            // Rediriger vers la page home.jsp après un enregistrement réussi
            response.sendRedirect("login.jsp");
        } else {
            // Les mots de passe ne correspondent pas, gérer cela en conséquence
            request.setAttribute("error", "Les mots de passe ne correspondent pas");
            RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
        }
    }
}

