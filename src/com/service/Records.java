/**
 * 
 */
package com.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import com.model.NewRecord;
import com.util.CommonConstants;
import com.util.QueryUtil;
import com.util.connectionDB;

/**
 * @author user
 *
 */
public class Records implements IRecords {
	/** Initialize logger */
	public static final Logger log = Logger.getLogger(Records.class.getName());

	private static Connection connection;

	private static Statement statement;

	static{
		//create table or drop if exist
		//createLockerTable();
	}
	private PreparedStatement preparedStatement;

	/**
	 * This method initially drop existing Employees table in the database and
	 * recreate table structure to insert employee entries
	 * 
	 * @throws SQLException
	 *             - Thrown when database access error occurs or this method is
	 *             called on a closed connection
	 * @throws ClassNotFoundException
	 *             - Thrown when an application tries to load in a class through
	 *             its string name using
	 * @throws SAXException
	 *             - Encapsulate a general SAX error or warning
	 * @throws IOException
	 *             - Exception produced by failed or interrupted I/O operations.
	 * @throws ParserConfigurationException
	 *             - Indicates a serious configuration error
	 * @throws NullPointerException
	 *             - Service is not available
	 * 
	 */
	public static void createLockerTable() {

		try {
			connection = connectionDB.getConnection();
			statement = connection.createStatement();
			// Drop table if already exists and as per SQL query available in
			// Query.xml
			statement.executeUpdate(QueryUtil.queryByID(CommonConstants.QUERY_ID_DROP_TABLE_RECORD));
			// Create new employees table as per SQL query available in
			// Query.xml
			statement.executeUpdate(QueryUtil.queryByID(CommonConstants.QUERY_ID_CREATE_TABLE_RECORD));

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	}

	
	/**
	 * Add set of records for as a batch from the selected record List
	 * 
	 * @throws SQLException
	 *             - Thrown when database access error occurs or this method is
	 *             called on a closed connection
	 * @throws SAXException
	 *             - Encapsulate a general SAX error or warning
	 * @throws IOException
	 *             - Exception produced by failed or interrupted I/O operations.
	 * @throws ParserConfigurationException
	 *             - Indicates a serious configuration error.
	 * 
	 */
	@Override
	public void addRecord(NewRecord record) {
		// TODO Auto-generated method stub
		//String lockerID = CommonUtil.generateIDs(getLockerIDs());
		
		try {
			connection = connectionDB.getConnection();
			/*
			 * Query is available in EmployeeQuery.xml file and use
			 * insert_employee key to extract value of it
			 */
			preparedStatement = connection
					.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_INSERT_RECORDS));
			connection.setAutoCommit(false);
			
			//Generate record IDs
			//locker.setLockerID(lockerID);
			/*
			 * preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE,
			 * record.getId());
			 * preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO,
			 * record.getFirstname());
			 * preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE,
			 * record.getLastname());
			 * preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR,
			 * record.getCompanyName());
			 * preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE,
			 * record.getPhone());
			 * preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX,
			 * record.getEmail());
			 * preparedStatement.setString(CommonConstants.COLUMN_INDEX_SEVEN,
			 * record.getAddress());
			 * preparedStatement.setString(CommonConstants.COLUMN_INDEX_EIGHT,
			 * record.getUsername());
			 * preparedStatement.setString(CommonConstants.COLUMN_INDEX_NINE ,
			 * record.getPassword());
			 * preparedStatement.setBlob(CommonConstants.COLUMN_INDEX_TEN ,
			 * record.getFile());
			 */
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, record.getIdentification());
			  preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, record.getId());
			  preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, record.getFirstname());
			  preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, record.getLastname());
			  preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, record.getCompanyName());
			  preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX, record.getPhone());
			  preparedStatement.setString(CommonConstants.COLUMN_INDEX_SEVEN, record.getEmail());
			  preparedStatement.setString(CommonConstants.COLUMN_INDEX_EIGHT, record.getAddress());
			  preparedStatement.setString(CommonConstants.COLUMN_INDEX_NINE, record.getUsername());
			  preparedStatement.setString(CommonConstants.COLUMN_INDEX_TEN , record.getPassword());
			  preparedStatement.setBinaryStream(CommonConstants.COLUMN_INDEX_ELEVEN , record.getFile());
		
			// Add record
			preparedStatement.execute();
			connection.commit();

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}

	}
	
	
	/**
	 *
	 * @return ArrayList<String> Array of record id list will be return
	 * 
	 * @throws SQLException
	 *             - Thrown when database access error occurs or this method is
	 *             called on a closed connection
	 * @throws ClassNotFoundException
	 *             - Thrown when an application tries to load in a class through
	 *             its string name using
	 * @throws SAXException
	 *             - Encapsulate a general SAX error or warning
	 * @throws IOException
	 *             - Exception produced by failed or interrupted I/O operations.
	 * @throws ParserConfigurationException
	 *             - Indicates a serious configuration error.
	 * @throws NullPointerException
	 *             - Service is not available
	 */
	private ArrayList<String> getRecordIDs(){
		
		ArrayList<String> arrayList = new ArrayList<String>();
		/*
		 * List of record IDs will be retrieved from Query.xml
		 */
		try {
			connection = connectionDB.getConnection();
			preparedStatement = connection
					.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_GET_RECORD_IDS));
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				arrayList.add(resultSet.getString(CommonConstants.COLUMN_INDEX_ONE));
			}
		} catch (SQLException | SAXException | IOException | ParserConfigurationException
				| ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return arrayList;
	}

	

	/**
	 * Record details can be retrieved based on the provided recordID
	 * 
	 * @paramrecordID
	 *            - Record details are filtered based on the ID
	 * 
	 * @see #actionOnRecords()
	 */ 

	@Override
	public NewRecord getRecordByID(String recordID) {
		return actionOnRecords(recordID).get(0);
	}

	
	/**
	 * Get all list of records
	 * 
	 * @return ArrayList<Employee> 
	 * 						- Array of record list will be return
	 * 
	 * @see #actionOnRecords()
	 */
	@Override
	public ArrayList<NewRecord> getRecords() {
		return actionOnRecords(null);
	}
	
	/**
	 * This performs GET record by ID and Display all records
	 * 
	 * @param ID
	 *            ID of the record to remove or select from the list

	 * @return ArrayList<NewRecord> Array of record list will be return
	 * 
	 * @throws SQLException
	 *             - Thrown when database access error occurs or this method is
	 *             called on a closed connection
	 * @throws ClassNotFoundException
	 *             - Thrown when an application tries to load in a class through
	 *             its string name using
	 * @throws SAXException
	 *             - Encapsulate a general SAX error or warning
	 * @throws IOException
	 *             - Exception produced by failed or interrupted I/O operations.
	 * @throws ParserConfigurationException
	 *             - Indicates a serious configuration error.
	 * @throws NullPointerException
	 *             - Service is not available
	 * 
	 * @see #getRecords()
	 * @see #getRecordByID(String)
	 */
	private ArrayList<NewRecord> actionOnRecords(String ID) {

		ArrayList<NewRecord> recordList = new ArrayList<NewRecord>();
		try {
			connection = connectionDB.getConnection();
			/*
			 * Before fetching employee it checks whether employee ID is
			 * available
			 */
			if (ID != null && !ID.isEmpty()) {
				/*
				 * Get employee by ID query will be retrieved from
				 * Query.xml
				 */
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_GET_RECORD));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, ID);
			}
			/*
			 * If employee ID is not provided for get employee option it display
			 * all employees
			 */
			else {
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryByID(CommonConstants.QUERY_ID_ALL_RECORDS));
			}
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				NewRecord record = new NewRecord();
				record.setIdentification(resultSet.getString(CommonConstants.COLUMN_INDEX_ONE));
				record.setId(resultSet.getString(CommonConstants.COLUMN_INDEX_TWO));
				record.setFirstname(resultSet.getString(CommonConstants.COLUMN_INDEX_THREE));
				record.setLastname(resultSet.getString(CommonConstants.COLUMN_INDEX_FOUR));
				record.setCompanyName(resultSet.getString(CommonConstants.COLUMN_INDEX_FIVE));
				record.setPhone(resultSet.getString(CommonConstants.COLUMN_INDEX_SIX));
				record.setEmail(resultSet.getString(CommonConstants.COLUMN_INDEX_SEVEN));
				record.setAddress(resultSet.getString(CommonConstants.COLUMN_INDEX_EIGHT));
				record.setUsername(resultSet.getString(CommonConstants.COLUMN_INDEX_NINE));
				record.setPassword(resultSet.getString(CommonConstants.COLUMN_INDEX_TEN));
				record.setFile(resultSet.getBinaryStream(CommonConstants.COLUMN_INDEX_ELEVEN));
				recordList.add(record);
		
			}

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return recordList;
	}

	

}
