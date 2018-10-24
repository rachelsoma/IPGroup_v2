<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<div class="container">
    <form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
       <p style="color:red;"><?php echo $errorMessage;?></p>
       <div class="input-box">
         <label for="username">User name:</label>
         <input type="text" name="username" maxlength="50" id="username">
       </div>
       <div class="input-box">
         <label for="pword">Password:</label>
         <input type="password" name="pword" maxlength="20" id="pword">
       </div>
       <div class="input-box">
         <input type="submit" value="Login" name="submit">
       </div>
    </form>

    <p>For testing purposes here are some user credentials:</p>
    <p>Staff User</p>
    <p>User name: <code>staff_user</code></p>
    <p>Password: <code>staffuser</code></p>
    <p>General User</p>
    <p>User name: <code>general_user</code></p>
    <p>Password: <code>generaluser</code></p>
</div>
</body>
</html>