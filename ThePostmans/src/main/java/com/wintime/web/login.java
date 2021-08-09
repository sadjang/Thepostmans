package com.wintime.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wintime.dao.ConnectionForm;

/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String page=request.getParameter("page");
         
         if (page.equalsIgnoreCase("1")) {
           request.setAttribute("userbd", "fastandfree");
           request.setAttribute("page", page);
           this.getServletContext().getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
        } else {
            if (page.equalsIgnoreCase("2")) {
               
            	request.setAttribute("userbd", "fastandfree");
            	 request.setAttribute("page", page);
                 this.getServletContext().getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
            } else {
                if (page.equalsIgnoreCase("3")) {
                 
                	request.setAttribute("userbd", "fastandfree");
                	 request.setAttribute("page", page);
                     this.getServletContext().getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
                } else {
                    if (page.equalsIgnoreCase("4")) {
                       
                    	request.setAttribute("userbd", "fastandfree");
                    	 request.setAttribute("page", page);
                         this.getServletContext().getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
                    } else {
                    	 request.setAttribute("page", page);
                         this.getServletContext().getRequestDispatcher("/WEB-INF/404.jsp").forward(request, response);
                    }
                }
            }
        }
         
           
    }

    
    protected void processRequestPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ConnectionForm form = new ConnectionForm();
        form.verifierIdentifiants(request);
       
		if (form.getResultat() != null) {// connexion
			 System.out.println("resultat");
		        System.out.println(form.getMessage());
		    // request.setAttribute("form", form);
		    // this.getServletContext().getRequestDispatcher("/WEB-INF/main.jsp").forward(request, response);
		    write(response, form.getMessage());
		} else {

		    request.setAttribute("form", form);
		    // this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
		    write(response, form.getMessage());
		}

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 processRequest(request, response);
		// this.getServletContext().getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 processRequestPost(request, response);
	}

    private void write(HttpServletResponse response, String resultat) throws IOException {
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        final String output = String.valueOf(resultat);

        response.setContentLength(output.length());
        //And write the string to output.

        response.getOutputStream().write(output.getBytes());
        response.getOutputStream().flush();
        response.getOutputStream().close();
    }
}
