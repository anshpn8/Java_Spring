package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import com.helper.FactoryProvider;
import com.myNote.Note;
import org.hibernate.Transaction;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.hibernate.Session;

import java.lang.Exception;

/**
 * Servlet implementation class SaveNoteServlet
 */
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			
			Note note=new Note(title, content, new Date());
			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			s.save(note);
			tx.commit();
			
			s.close();
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<h1 style='text-align:center'>Note is added Successfully</h1>");
			out.println("<h1 style='text-align:center'><a href='all_notes.jsp'>View All notes</a></h1>");
			
			}catch(Exception e) {
			e.printStackTrace();
		}
		//doGet(request, response);
	}

}
