/**
 * 
 */
package com.service;

import java.util.ArrayList;
import java.util.logging.Logger;

import com.model.NewRecord;

/**
 * @author user
 *
 */
public interface IRecords {
	
	/** Initialize logger */
	public static final Logger log = Logger.getLogger(IRecords.class.getName());
	
	/**
	 * Add records for records table
	 * @param record
	 */
	public void addRecord(NewRecord record);

	/**
	 * Get a particular NewRecord
	 * 
	 * @param recordID
	 * @return NewReocrd
	 */
	public NewRecord getRecordByID(String recordID);
	
	/**
	 * Get all list of records
	 * 
	 * @return ArrayList<NewRecord>
	 */
	public ArrayList<NewRecord> getRecords();
	
	/**
	 * Update existing record
	 * @param recordID
	 * @param newRecord
	 * 
	 * @return
	 */
	public NewRecord updateRecord(String recordID, NewRecord newRecord);

}
