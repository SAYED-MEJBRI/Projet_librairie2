package Librairie.Controleur;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditFourn
 */
@WebServlet("/EditFourn")
public class EditFourn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditFourn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String code_fournisseur= (String) request.getParameter("code_fournisseur");
		String raison_social=(request.getParameter("raison_social"));
		String localite= (String) request.getParameter("localite");
		String pays=(request.getParameter("pays"));
		String tel_fournisseur= (String) request.getParameter("tel_fournisseur");
		String email_fournisseur=(request.getParameter("email_fournisseur"));
		request.setAttribute("code_fournisseur", code_fournisseur);
		request.setAttribute("raison_social", raison_social);
		request.setAttribute("localite", localite);
		request.setAttribute("pays", pays);
		request.setAttribute("tel_fournisseur", tel_fournisseur);
		request.setAttribute("email_fournisseur", email_fournisseur);
		request.setAttribute("page", "ModifierF");
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
