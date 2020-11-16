package com.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.model.NewRecord;
import com.service.IRecords;
import com.service.Records;

/**
 * Servlet implementation class AddRecord
 */
@WebServlet("/AddRecord")
@MultipartConfig
public class AddRecord extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddRecord() {
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
		InputStream inputStream = null; // input stream of the upload file
		
		final Part filePart = request.getPart("fileName");
		
		if (!filePart.getContentType().equals("application/pdf"))
        {
                   System.out.println("Invalid File");
                   return;
        }

       if (filePart.getSize()>80000000 ) { //10mb
         
          System.out.println("File size too big");
          return;
          
       }
		
		  if (filePart != null) {
	            // prints out some information for debugging
	            System.out.println(filePart.getName());
	            System.out.println(filePart.getSize());
	            System.out.println(filePart.getContentType());
	             
	            // obtains input stream of the upload file
	            inputStream = filePart.getInputStream();
	            System.out.println("record"+inputStream);
	        }
		  
		  Random rand = new Random();
          int  n = rand.nextInt(9999) + 1;
          String idTemp=(String.valueOf(n));

		NewRecord record = new NewRecord();
//		System.out.println("redirected");
		
		record.setId(idTemp);
		String ID = request.getParameter("idNum");
		record.setIdentification(request.getParameter("idNum"));
		record.setFirstname(request.getParameter("fName"));
		record.setLastname(request.getParameter("lName"));
		record.setCompanyName(request.getParameter("cName"));
		record.setPhone(request.getParameter("pNum"));
		record.setAddress(request.getParameter("cAddress"));
		record.setEmail(request.getParameter("email"));
//		record.setUsername(request.getParameter("uName"));
//		record.setPassword(request.getParameter("pWord"));
		record.setUsername(ID + idTemp);
		record.setPassword(ID + idTemp + request.getParameter("pNum").substring(request.getParameter("pNum").length() - 2));
		record.setStatus("-");
		record.setReason("-");
		record.setFile(inputStream);
		System.out.println(ID);
	
	IRecords iRecords = new Records();
	iRecords.addRecord(record);
	
	
	javax.servlet.RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/RecordList.jsp");
	dispatcher.forward(request, response);
		
	}

}
