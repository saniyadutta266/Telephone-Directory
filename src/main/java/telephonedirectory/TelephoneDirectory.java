package telephonedirectory;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TelephoneDirectory
 */
@WebServlet("/TelephoneDirectory")
public class TelephoneDirectory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		out.println("Welcome to my servlet page");
		Connection con;
		Statement stmt;
		ResultSet rs;
		String query="select* from contacts";
		ArrayList<Phone>phoneList=new ArrayList<Phone>();
		
		connectdb db=new connectdb();
		try {
			con=db.getCon();
			if(con==null) 
				out.println("Failed with connection"+ con);
			else {
				out.println("Successfully connection" +con);
				stmt=con.createStatement();
				rs=stmt.executeQuery(query);
				while(rs.next()) {
					   // out.println(rs.getString("staff_number")+ "\t" + 
		                         //   rs.getString("name")+ "\t" +
		                          //  rs.getString("grade")+ "\t" +
		                          //  rs.getString("designation")+ "\t" +
		                          //  rs.getString("department")+ "\t" +
		                          //  rs.getString("location")+ "\t" +
	                              //  rs.getString("controlling_officer")+ "\t" +
		                           // rs.getString("dept_HOD")+ "\t" +
		                           // rs.getString("email")+ "\t" +
		                           // rs.getString("current_mobile_no")+ "\t" +
		                           // rs.getString("current_resi_no")+ "\t" +
		                          //  rs.getString("office_contact_no"));
					
					Phone pobj =new Phone();
					pobj.setstaff_number(rs.getString("staff_number"));
					pobj.setname(rs.getString("name"));
					pobj.setgrade(rs.getString("grade"));
					pobj.setdesignation(rs.getString("designation"));
					pobj.setdepartment(rs.getString("department"));
					pobj.setlocation(rs.getString("location"));
					pobj.setcontrolling_officer(rs.getString("controlling_officer"));
					pobj.setdept_HOD(rs.getString("dept_HOD"));
					pobj.setemail(rs.getString("email"));
					pobj.setcurrent_mobile_no(rs.getString("current_mobile_no"));
					pobj.setcurrent_resi_no(rs.getString("current_resi_no"));
					pobj.setoffice_contact_no(rs.getString("office_contact_no"));
					//pobj.setphoto_url(rs.getBytes("photo_url")); // Fetching photo
                   // byte[] photo_url = pobj.getphoto_url(); 
                    phoneList.add(pobj);
					}
				
				request.setAttribute("phoneData", phoneList);
				request.getRequestDispatcher("welcome.jsp").forward(request, response);
		}
			}
		catch(Exception ex) {
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
