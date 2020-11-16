package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.NewRecord;
import com.service.IRecords;
import com.service.Records;

/**
 * Servlet implementation class ChangeRecord
 */
@WebServlet("/ChangeRecord")
public class ChangeRecord extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeRecord() {
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

		HttpSession session = request.getSession();
		String RecordID = (String) session.getAttribute("RecordID");
		
		System.out.println(RecordID);
		NewRecord record = new NewRecord();
		System.out.println(request.getParameter("contract"));
		
		if (request.getParameter("contract") != null) {
			
			if (request.getParameter("contract").equals("Disagree")) {
				record.setStatus("Disagree");
			}
			else if (request.getParameter("contract").equals("Agree")) {
				record.setStatus("Agree");
			}
		}
		
		record.setReason(request.getParameter("area"));
		if (request.getParameter("area") == null) {
			record.setReason("-");
		}
		System.out.println("...."+request.getParameter("area"));
		
		
		IRecords iRecords = new Records();
		iRecords.updateRecord(RecordID, record);
		
		//Access databse values
		NewRecord clientdetails = iRecords.getRecordByID(RecordID);
		
		Records records = new Records();
		records.SendMail(clientdetails.getFirstname(), clientdetails.getLastname(), clientdetails.getCompanyName(), record.getStatus(), record.getReason());
		 
		
		//Send record values to jsp page
		request.setAttribute("record", clientdetails);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ClientSummary.jsp");
		dispatcher.forward(request, response);
	}

}
