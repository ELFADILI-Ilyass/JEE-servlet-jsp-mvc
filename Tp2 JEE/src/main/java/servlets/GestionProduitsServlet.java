package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import beans.Produit;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/GestionProduitsServlet")
public class GestionProduitsServlet extends HttpServlet {

    @Override
    public void init() {
        // liste en mémoire dans le contexte application (partagée)
        List<Produit> produits = new ArrayList<>();
        produits.add(new Produit(1, "Clavier", 199));
        produits.add(new Produit(2, "Souris", 99));
        produits.add(new Produit(3, "Ecran", 1500));
        getServletContext().setAttribute("produits", produits);
    }

    @SuppressWarnings("unchecked")
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        List<Produit> produits = (List<Produit>) getServletContext().getAttribute("produits");

        if (action == null) action = "lister";

        try {
            switch (action) {
                case "ajouter" -> {
                    int id = Integer.parseInt(request.getParameter("idProduit"));
                    String nom = request.getParameter("nomProduit");
                    double prix = Double.parseDouble(request.getParameter("prixProduit"));

                    produits.add(new Produit(id, nom, prix));
                }
                case "supprimer" -> {
                    int id = Integer.parseInt(request.getParameter("idProduit"));
                    produits.removeIf(p -> p.getIdProduit() == id);
                }
                default -> { /* lister */ }
            }
            request.setAttribute("listeProduits", produits);
            request.getRequestDispatcher("listeProduits.jsp").forward(request, response);

        } catch (Exception e) {
            request.setAttribute("erreur", "Erreur: " + e.getMessage());
            request.setAttribute("listeProduits", produits);
            request.getRequestDispatcher("listeProduits.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
