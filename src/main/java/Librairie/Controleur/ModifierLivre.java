package Librairie.Controleur;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ModifierLivre
 */
@WebServlet("/ModifierLivre")
public class ModifierLivre extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierLivre() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String isbn= (String) request.getParameter("isbn");
		String name=(request.getParameter("titre_livre"));

		String nb_page= (String) request.getParameter("nbpage");
		String theme=(request.getParameter("theme_livre"));
	
		String auteur= (String) request.getParameter("auteur");
		String editeur=request.getParameter("editeur");
		
		String prix=request.getParameter("prix");
		
		
		request.setAttribute("isbn", isbn);
		request.setAttribute("name", name);
		request.setAttribute("nb_page", nb_page);
		request.setAttribute("theme", theme);
		request.setAttribute("auteur", auteur);
		request.setAttribute("editeur", editeur);
		request.setAttribute("prix", prix);
		request.setAttribute("page", "ModifierL");
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
