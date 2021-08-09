package com.wintime.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.google.gson.reflect.TypeToken;
import com.google.gson.Gson;
import com.wintime.model.Userlocal;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

import static com.wintime.Security.SecUtil.getDroit;

/**
 * Servlet implementation class main
 */
public class main extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Userlocal user;
	int i = 0;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public main() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sessionuser = request.getSession();
		Gson gson = new Gson();
		String stringuser = (String) sessionuser.getAttribute("user");
		Type listOfTestObject = new TypeToken<Userlocal>() {
		}.getType();
		user = gson.fromJson(stringuser, listOfTestObject);
		if (user != null) {
        
			if (user.getCode() != null) {
				
				getDroit(sessionuser, user.getCode());
				request.setAttribute("user", user);
				this.getServletContext().getRequestDispatcher("/WEB-INF/main.jsp").forward(request, response);
			} else {
				response.sendRedirect("index");
			}
		} else {
			response.sendRedirect("index");
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	protected void processRequestPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Map<String, Object> map = new HashMap<String, Object>();
		String usecode = request.getParameter("codeuser");
		if (usecode != null) {
			write(response, map);
		}

	}

	private void write(HttpServletResponse response, Map<String, Object> map) throws IOException {
		/*
		 * response.setContentType("application/json");
		 * response.setCharacterEncoding("UTF-8"); ElementMain resultat=new
		 * ElementMain(); SimpleDateFormat df = new SimpleDateFormat("dd-mm-yyyy");
		 * String datedepart = df.format(Calendar.getInstance().getTimeInMillis());
		 * String datefin = df.format(Calendar.getInstance().getTimeInMillis()); if
		 * (datedepart != null && datefin != null) {
		 * 
		 * int nbruser =new Dao().listAlluser("true").size(); int nbrfichier =new
		 * Fichiers.Dao().totalfichierLut(datefin,datefin,"true");
		 * 
		 * Elements listcompte = new Compte.Dao().listAllcompte("true");
		 * ElementTransaction element = new
		 * Prelevement.Dao().listAllPrelevement(datefin, datefin,"ALL","1");
		 * 
		 * int reclamation =new Reclamation.Dao().listeofReclamtion( datefin, datefin);
		 * resultat.setNomrbrereclamation(reclamation);
		 * resultat.setListTransaction(element.getListeElement());
		 * resultat.setListeCompte(listcompte); resultat.setNombreFichier(nbrfichier);
		 * resultat.setNombreUser(nbruser);
		 * resultat.setNombreTransaction(element.getTotalElement().getNombredetrasaction
		 * ()); }
		 * 
		 * String json = new Gson().toJson(resultat); response.getWriter().write(json);
		 * response.getWriter().flush(); response.getWriter().close();
		 * 
		 */

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequestPost(request, response);
	}

}
