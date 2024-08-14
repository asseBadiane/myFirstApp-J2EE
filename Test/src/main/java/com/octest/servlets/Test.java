package com.octest.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Test() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("variable", "Bye mon coeur");
		request.setAttribute("person", "Gayin");
		String name = request.getParameter("name");
	    request.setAttribute("name", name);
		String[] noms = {"Mathieu", "Robert", "François"};
        request.setAttribute("noms", noms);
        
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("prenom")) {
                    request.setAttribute("prenom", cookie.getValue());
                }
            }
        }
		this.getServletContext().getRequestDispatcher("/WEB-INF/bonjour.jsp").forward(request, response);
		
	}

	  public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
	        String nom = request.getParameter("nom");
	        String prenom = request.getParameter("prenom");
	        
	        Cookie cookie = new Cookie("prenom", prenom);
	        cookie.setMaxAge(60 * 60 * 24 * 30);
	        response.addCookie(cookie);
	        
	        this.getServletContext().getRequestDispatcher("/WEB-INF/bonjour.jsp").forward(request, response);
	    }

}
