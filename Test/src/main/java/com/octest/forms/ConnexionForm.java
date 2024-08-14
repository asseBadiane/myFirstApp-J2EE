package com.octest.forms;

import javax.servlet.http.HttpServletRequest;

public class ConnexionForm {
	private String resultat;
	
	public void verifyIdentifiant(HttpServletRequest request) {
		String login = request.getParameter("login");
		String pass = request.getParameter("pass");
		
		if(pass.equals("login123")) {
			resultat = "Vous etes bien connecte avec success";
		} else {
			resultat = "Identifiants incorrect";
		}
	}

	public String getResultat() {
		return resultat;
	}

	public void setResultat(String resultat) {
		this.resultat = resultat;
	} 
	
	

}
