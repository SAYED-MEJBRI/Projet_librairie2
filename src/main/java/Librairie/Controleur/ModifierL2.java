package Librairie.Controleur;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class ModifierL2
 */
@WebServlet("/ModifierL2")
public class ModifierL2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierL2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String isbn = request.getParameter("isbn");
		long isbn1=Long.parseLong(isbn);
		String nom = request.getParameter("name");
		String theme = request.getParameter("theme");
		String nb_page = request.getParameter("nb_page");
		int nb_page1=Integer.parseInt(nb_page);
		String editeur = request.getParameter("editeur");
		String prix = request.getParameter("prix");
		double prix1=Double.parseDouble(prix);
		String a_name = request.getParameter("a_name");
		System.out.println(a_name);
		
		request.setAttribute("isbn1", isbn1);
		request.setAttribute("nom", nom);
		request.setAttribute("nb_page1", nb_page1);	
		request.setAttribute("editeur", editeur);
		request.setAttribute("prix1", prix1);
		request.setAttribute("a_name", a_name);
		request.setAttribute("theme", theme);	
		request.setAttribute("page", "finaliserModifeirLivre");
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
