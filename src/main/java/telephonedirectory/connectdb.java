package telephonedirectory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connectdb {


		private final String driver ="com.mysql.cj.jdbc.Driver";
	    private  final String url = "jdbc:mysql://localhost:3306/telephone_directory";
	    private  final String user= "root";
	    private final String password = "Root26";
	     Connection con;
	    public Connection getCon()throws ClassNotFoundException {
	    	try {
	    		Class.forName(driver);
	    		con= DriverManager.getConnection(url,user,password);
	    	}
	    	catch(SQLException ex) {
	    		
	    	}
	    	return con;
	    }
	}



