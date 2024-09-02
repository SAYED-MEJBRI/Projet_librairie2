package Librairie.Controleur;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class EnregiterFournisseur
 */
@WebServlet("/EnregiterFournisseur")
public class EnregiterFournisseur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnregiterFournisseur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String code = request.getParameter("code");
		int code1=Integer.parseInt(code);
		String raison = request.getParameter("raison");
		String localite = request.getParameter("localite");
		String pays = request.getParameter("pays");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		request.setAttribute("page", "finaliserAjoutFourn");
		request.setAttribute("code1", code1);
		request.setAttribute("raison", raison);
		request.setAttribute("localite", localite);	
		request.setAttribute("pays", pays);
		request.setAttribute("mobile", mobile);
		request.setAttribute("email", email);
			
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
