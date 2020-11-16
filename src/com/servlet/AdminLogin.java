package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.NewRecord;
import com.service.IRecords;
import com.service.Records;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html");
		
		

		try {
			String email = (request.getParameter("email"));
			String pass = (request.getParameter("pass"));
			System.out.println(pass);
			
			String recordID = pass.substring(0, 5);
			IRecords iRecords = new Records();
			System.out.println(".....................");
			NewRecord record = iRecords.getRecordByID(recordID);
			System.out.println(recordID);
			System.out.println(".....................");
			System.out.println(record.getEmail());
			System.out.println(",,,,,,,,,,,,,,,,,,,,,,,,");
			
			
			System.out.println(pass);
				if(email.equals("admin@evigilant.com") && pass.equals("00001101942"))
				{
					
//					response.sendRedirect("AdminForm.jsp");
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AdminForm.jsp");
					dispatcher.forward(request, response);

				}
				else if(email.equals(record.getEmail()) && pass.equals(record.getPassword()))
				{
					request.setAttribute("record", record);
//					response.sendRedirect("ClientForm.jsp");
					/*
					 * RequestDispatcher dispatcher =
					 * getServletContext().getRequestDispatcher("/ClientForm.jsp");
					 * dispatcher.forward(request, response);
					 */
					
					String status = "-";
					
					if (record.getStatus().equals(status)) {
						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ClientForm.jsp");
						dispatcher.forward(request, response);
					}
					else {
						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ClientSummary.jsp");
						dispatcher.forward(request, response);
					}
					
				}
				else
				{
					
					
					System.out.println("Invalid username or password");
					response.sendRedirect("Login1.jsp");
				}
		}	
		catch(Exception e) 
		
		{
			System.out.println(e);	
		}
	}

	

}
