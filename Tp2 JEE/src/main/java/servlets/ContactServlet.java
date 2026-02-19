package servlets;

import java.io.IOException;

import beans.ContactBean;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nom = request.getParameter("nom");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        ContactBean bean = new ContactBean();
        bean.setNom(nom);
        bean.setEmail(email);
        bean.setMessage(message);

        request.setAttribute("contact", bean);

        request.getRequestDispatcher("contactForm.jsp").forward(request, response);
    }
}
