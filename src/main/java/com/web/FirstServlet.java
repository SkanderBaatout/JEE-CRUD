package com.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.GestionProduitImp;
import com.dao.IGestionProduit;
import com.dao.Produit;

@WebServlet("/listeProduits")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public FirstServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	IGestionProduit gestion;
    
	
	
	public void init() throws ServletException {
		gestion = new GestionProduitImp();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Produit> liste=gestion.getAllProduits();
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<table border=1>");
		for(Produit p:liste) {
			out.print("<tr><td>"+p.getId()+"</td><td>"+p.getNom()+"</td><td>"+p.getPrix()+"</td><td>"+p.getQuantite()+	"</td></tr>");
		}
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
