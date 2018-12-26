<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Angular JS</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script src="angularjsDemo.js"></script>
</head>
<body ng-app="myApp" ng-controller="myCtrl">
<h2>Angular Js Page</h2>
<div >
Welcome {{ message }}

<br/><br/><br/>

UserName:<input type="text" ng-model="user"><br/>
Password:<input type="password" ng-model="pass"><br/>
<button ng-click="login()">LogIn</button><br/>
Employee  {{myWelcome}}

<div ng-repeat="wel in myWelcome">
{{wel}}
</div>
</div>
</body>
</html>