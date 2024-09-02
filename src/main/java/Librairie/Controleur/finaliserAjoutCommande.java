package Librairie.Controleur;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class finaliserAjoutCommande
 */
@WebServlet("/finaliserAjoutCommande")
public class finaliserAjoutCommande extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public finaliserAjoutCommande() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String codes=(String)request.getParameter("codes");
		int codes1=Integer.parseInt(codes);
		String isbns=(String)request.getParameter("isbns");
		long isbns1=Long.parseLong(isbns);
		String data_achat=(String)request.getParameter("data_achat");
		String prix_achat=(String)request.getParameter("prix_achat");
		double prix=Double.parseDouble(prix_achat);
		String nb_exemplaires=(String)request.getParameter("nb_exemplaires");
		int nb_exemplaires1= Integer.parseInt(nb_exemplaires);
		request.setAttribute("codes1", codes1);
		request.setAttribute("isbns1", isbns1);
		request.setAttribute("data_achat", data_achat);
		request.setAttribute("prix", prix);
		request.setAttribute("nb_exemplaires1", nb_exemplaires1);
//		System.out.println(data_achat+codes1+isbns1+prix+nb_exemplaires1 );
		request.setAttribute("page", "finaliserAjoutCommande");
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
