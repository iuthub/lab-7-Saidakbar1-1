<?php
    $username="";
    $fullname="";
    $email="";
    $password="";
    $db = new PDO("mysql: host=localhost; dbname=blog", "saidakbar","lZ6pTPj7YuQhE0MT");
    $stmt = $db->prepare("INSERT INTO users(username, fullname, email, password)");
    $username=$_REQUEST["username"];
    $fullname=$_REQUEST["fullname"];
    $email=$_REQUEST["email"];
    $password=$_REQUEST["pwd"];
    $stmt->execute(array($username,$fullname,$email,$password));

?>