package telephonedirectory;

public class Phone {
	private String staff_number;
    private String name;
    private String grade;
    private String designation;
    private String department;
    private String location;
    private String controlling_officer;
    private String dept_HOD;
    private String email;
    private String current_mobile_no;
    private String current_resi_no;
    private String office_contact_no;
   // private byte[] photo_url; // New field for storing photo


    
 
        public void setstaff_number(String staff_number) {  this.staff_number=staff_number;  }
        public void setname(String name) { this.name = name; }
        public void setgrade(String grade) {this.grade=grade;}
        public void setdesignation (String designation) {this.designation=designation;}
        public void setdepartment (String department) { this.department=department;}
        public void setlocation (String location) { this.location=location;}
        public void setcontrolling_officer (String controlling_officer) {this.controlling_officer=controlling_officer;}
        public void setdept_HOD (String dept_HOD) {this.dept_HOD=dept_HOD;}
        public void setemail (String email) { this.email=email;}
        public void setcurrent_mobile_no (String current_mobile_no) { this.current_mobile_no=current_mobile_no;}
        public void setcurrent_resi_no (String current_resi_no) { this.current_resi_no=current_resi_no;}
        public void setoffice_contact_no (String office_contact_no) {this.office_contact_no=office_contact_no;}
      //  public void setphoto_url(byte[] photo_url) { this.photo_url = photo_url; }
        


public String getstaff_number() {
    return staff_number;
}
public String getname() {
    return name;
}
public String getgrade() {
    return grade;
}
public String getdesignation() {
    return designation;
}
public String getdepartment() {
    return department;
}
public String getlocation() {
    return location;
}
public String getcontrolling_officer() {
    return controlling_officer;
}
public String getdept_HOD() {
    return dept_HOD;
} 
public String getemail() {
    return email;
}
public String getcurrent_mobile_no() {
    return current_mobile_no;
}
public String getcurrent_resi_no() {
    return current_resi_no;
}

public String getoffice_contact_no() {
    return office_contact_no;
}
//public byte[] getphoto_url() {
	//return photo_url; 
	//}


}
