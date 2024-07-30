<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>   
<%@page import="telephonedirectory.Phone" %>
<%ArrayList <Phone> ph =(ArrayList<Phone>)request.getAttribute("phoneData");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        color: #333;
    }

    h1 {
        text-align: center;
        color: #2c3e50;
    }

    .search-container {
        text-align: right;
        margin: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
        background-color: #fff;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 12px 15px;
        text-align: left;
        border: 1px solid #ddd;
    }

    th {
        background-color: #2980b9;
        color: #fff;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #dcdcdc;
    }

    tr td:nth-child(odd) {
        background-color: #e9f7f6;
    }

    tr:hover td:nth-child(odd) {
        background-color: #c1e7e4;
    }
</style>
<script>
function filterTable(columnIndex) {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("searchInput" + columnIndex);
    filter = input.value.toUpperCase();
    table = document.getElementById("directoryTable");
    tr = table.getElementsByTagName("tr");

    for (i = 2; i < tr.length; i++) { // Start from 2 to skip header and search row
        td = tr[i].getElementsByTagName("td")[columnIndex];
        if (td) {
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}

function globalFilterTable() {
    var input, filter, table, tr, td, i, j, txtValue, match;
    input = document.getElementById("globalSearchInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("directoryTable");
    tr = table.getElementsByTagName("tr");

    for (i = 2; i < tr.length; i++) { // Start from 2 to skip header and search row
        tr[i].style.display = "none";
        match = false;
        for (j = 0; j < tr[i].getElementsByTagName("td").length; j++) {
            td = tr[i].getElementsByTagName("td")[j];
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    match = true;
                    break;
                }
            }
        }
        if (match) {
            tr[i].style.display = "";
        }
    }
}
</script>
</head>
<body>
<h1>TELEPHONE DIRECTORY</h1>
<div class="search-container">
    <input type="text" id="globalSearchInput" onkeyup="globalFilterTable()" placeholder="Search">
</div>
<table id="directoryTable">
    <tr>
       <th>Staff number</th>
       <th>Name</th>
       <th>Grade</th>
       <th>Designation</th>
       <th>Department</th>
       <th>Location</th>
       <th>Controlling Officer</th>
       <th>Department HOD</th>
       <th>Email</th>
       <th>Current Mobile Number</th>
       <th>Current Resignation number</th>
       <th>Office Contact Number</th>
       <th>Photo</th>
    </tr>
    <tr>
       <td><input type="text" id="searchInput0" onkeyup="filterTable(0)" placeholder="Search Staff number"></td>
       <td><input type="text" id="searchInput1" onkeyup="filterTable(1)" placeholder="Search Name"></td>
       <td><input type="text" id="searchInput2" onkeyup="filterTable(2)" placeholder="Search Grade"></td>
       <td><input type="text" id="searchInput3" onkeyup="filterTable(3)" placeholder="Search Designation"></td>
       <td><input type="text" id="searchInput4" onkeyup="filterTable(4)" placeholder="Search Department"></td>
       <td><input type="text" id="searchInput5" onkeyup="filterTable(5)" placeholder="Search Location"></td>
       <td><input type="text" id="searchInput6" onkeyup="filterTable(6)" placeholder="Search Controlling Officer"></td>
       <td><input type="text" id="searchInput7" onkeyup="filterTable(7)" placeholder="Search Department HOD"></td>
       <td><input type="text" id="searchInput8" onkeyup="filterTable(8)" placeholder="Search Email"></td>
       <td><input type="text" id="searchInput9" onkeyup="filterTable(9)" placeholder="Search Mobile Number"></td>
       <td><input type="text" id="searchInput10" onkeyup="filterTable(10)" placeholder="Search Resignation number"></td>
       <td><input type="text" id="searchInput11" onkeyup="filterTable(11)" placeholder="Search Office Contact Number"></td>
    </tr>
    <% for(Phone p: ph) { %>
    <tr>
         
        <td><%= p.getstaff_number() %></td>
        <td><%= p.getname() %></td>
        <td><%= p.getgrade() %></td>
        <td><%= p.getdesignation() %></td>
        <td><%= p.getdepartment() %></td>
        <td><%= p.getlocation() %></td>
        <td><%= p.getcontrolling_officer() %></td>
        <td><%= p.getdept_HOD() %></td>
        <td><%= p.getemail() %></td>
        <td><%= p.getcurrent_mobile_no() %></td>
        <td><%= p.getcurrent_resi_no() %></td>
        <td><%= p.getoffice_contact_no() %></td>   
        <td> <img src="image.jpg" /> </td>
    </tr>
    <% } %>
</table>
</body>
</html>
