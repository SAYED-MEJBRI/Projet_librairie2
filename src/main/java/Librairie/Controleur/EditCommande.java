package Librairie.Controleur;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditCommande
 */
@WebServlet("/EditCommande")
public class EditCommande extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditCommande() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id_commande= (String) request.getParameter("id_commande");
		String isbn=(request.getParameter("isbn"));
		String code_fournisseur= (String) request.getParameter("code_fournisseur");
		String data_achat=(request.getParameter("data_achat"));
		String prix_achat= (String) request.getParameter("prix_achat");
		String nb_exemplaires=(request.getParameter("nb_exemplaires"));
		request.setAttribute("id_commande", id_commande);
		request.setAttribute("isbn", isbn);
		request.setAttribute("code_fournisseur", code_fournisseur);
		request.setAttribute("data_achat", data_achat);
		request.setAttribute("prix_achat", prix_achat);
		request.setAttribute("nb_exemplaires", nb_exemplaires);
		request.setAttribute("page", "ModifierC");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
