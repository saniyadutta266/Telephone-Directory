<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
  }
  h1 {
    text-align: center;
    color: #333;
    margin-top: 50px;
  }
  form {
    display: flex;
    justify-content: center;
    margin-top: 20px;
  }
  button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  button:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>
  <h1>BHEL PEM TELEPHONE DIRECTORY</h1>
  <form action="TelephoneDirectory" method="post">
    <button type="submit">
      VIEW
    </button>
  </form>
</body>
</html>
