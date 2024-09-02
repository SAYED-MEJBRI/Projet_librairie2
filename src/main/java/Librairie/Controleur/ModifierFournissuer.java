package Librairie.Controleur;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class ModifierFournissuer
 */
@WebServlet("/ModifierFournissuer")
public class ModifierFournissuer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierFournissuer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String code_fournisseur = request.getParameter("code_fournisseur");
		int code_fournisseur1=Integer.parseInt(code_fournisseur);
		String raison_social = request.getParameter("raison_social");
		String localite = request.getParameter("localite");
		String pays = request.getParameter("pays");
		
		String tel_fournisseur = request.getParameter("tel_fournisseur");
		String email_fournisseur = request.getParameter("email_fournisseur");
		
		request.setAttribute("page", "finaliserModifeirfourn");
		request.setAttribute("code_fournisseur1", code_fournisseur1);
		request.setAttribute("raison_social", raison_social);
		request.setAttribute("localite", localite);	
		request.setAttribute("pays", pays);
		request.setAttribute("tel_fournisseur", tel_fournisseur);
		request.setAttribute("email_fournisseur", email_fournisseur);
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
