package Librairie.Controleur;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ModifierCommande
 */
@WebServlet("/ModifierCommande")
public class ModifierCommande extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierCommande() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id_commande = request.getParameter("id_commande");
		int id_commande1=Integer.parseInt(id_commande);
		String data_achat = request.getParameter("data_achat");
		String prix_achat = request.getParameter("prix_achat");
		double prix_achat1= Double.parseDouble(prix_achat);
		String nb_exemplaires = request.getParameter("nb_exemplaires");
		int nb_exemplaires1=Integer.parseInt(nb_exemplaires);
		
		
		request.setAttribute("page", "finaliserModifeirfCom");
		request.setAttribute("id_commande1", id_commande1);
		request.setAttribute("prix_achat1", prix_achat1);
		request.setAttribute("data_achat", data_achat);
		//request.setAttribute("localite", localite);	
		request.setAttribute("nb_exemplaires1", nb_exemplaires1);
		
		request.getRequestDispatcher("index.jsp").forward(request, response);;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
