/**
 * 
 */
package com.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;


import com.service.IRecords;

/**
 * @author user
 *
 */
public class CommonUtil {
	
	/** Initialize logger */
	public static final Logger log = Logger.getLogger(IRecords.class.getName());

	public static final Properties properties = new Properties();

	static {
		try {
			
			// Read the property only once when load the class
			properties.load(QueryUtil.class.getResourceAsStream(CommonConstants.PROPERTY_FILE));
			
		} catch (IOException e) {
			log.log(Level.SEVERE, e.getMessage());
		}
	}

	/**
	 * Add new Seller ID
	 * 
	 * @param arrayList
	 * @return
	 */
//	public static String generateIDs(ArrayList<String> arrayList) {
//
//		String id;
//		int next = arrayList.size();
//		next++;
//		id = CommonConstants.PICKUP_ID_PREFIX + next;
//		while (arrayList.contains(id)) {
//			next++;
//			id = CommonConstants.PICKUP_ID_PREFIX + next;
//		}
//		return id;
//	}
//	
//	public static int generateIds(ArrayList<String> list) {
//		int id;
//		int next = list.size();
//		next++;
//		
//		id =  next;
//		while(list.contains(CommonConstants.ROOM_RESERVATION_ID + id)) {
//			next++;
//			id =  next;
//		}
//		
//		return id;
//		
//	}
//	
//public static String generateIDs1(ArrayList<String> arrayList) {
//		
//		
//		
//		String id1;
//		int next = arrayList.size();
//		next++;
//		id1 = CommonConstants.SALARY_ID_PREFIX + next;
//		
//		while(arrayList.contains(id1)) {
//			next++;
//			id1 = CommonConstants.SALARY_ID_PREFIX + next;
//			
//		}
//		
//		
//		
//		return id1;
//		
//		
//		
//	}
//
//
//public static String generateHIDs(ArrayList<String> arrayList) {
//
//	String id;
//	int next = arrayList.size();
//	next++;
//	id = CommonConstants.HISTORY_ID_PREFIX + next;
//	if (arrayList.contains(id)) {
//		next++;
//		id = CommonConstants.HISTORY_ID_PREFIX + next;
//	}
//	return id;
//}


}



