<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/0.13.3/ui-bootstrap-tpls.js"></script>

<script>
	var app = angular.module("myApp", ['ui.bootstrap']);
	app.filter('offset', function() {
	    return function(input, start) {
	    //alert(input+"  "+start);
	    	return input.slice(start);
	 	};
	})
	app.controller("myCtrl", function($scope, $http) {

		$scope.goTo = function() {
			
			$scope.currentPage = 1;
		    $scope.itemsPerPage = 5;
		    $scope.maxSize = 20;
		    $scope.totalItems = 20;

			var eachProduct = {
				"name" : "mi",
				"id" : 20,
				"category" : "mobile",
				"price" : 3000
			};

			alert("ganesh padala");
			alert("Stirng is : " + JSON.stringify(eachProduct));

			
			$http({
				method : 'POST',
				url : 'ajax',
				params : {
					data : JSON.stringify(eachProduct)
				}

			}).then(function(result) {
				console.log(result);
				alert(result.status+" "+result.statusText+" "+result.data);
				$scope.pom = result.data;
				console.log($scope.pom);
				$scope.pom1 = [ {
					"name" : "mi",
					"id" : 20,
					"category" : "mobile",
					"price" : 3000
				}, {
					"name" : "vivo",
					"id" : 21,
					"category" : "mobile",
					"price" : 6000
				}, {
					"name" : "oppo",
					"id" : 22,
					"category" : "mobile",
					"price" : 9000
				}, {
					"name" : "samsung",
					"id" : 23,
					"category" : "mobile",
					"price" : 12000
				}

				];
				console.log($scope.pom==$scope.pom1);
				console.log($scope.pom==$scope.pom);
			});
		}
	})
</script>

</head>
<body ng-app="myApp">
	<div ng-controller="myCtrl">
		<button ng-click="goTo()">hiii</button>
		
		<br>
		Limit:<input type="number" ng-model="itemsPerPage">

<br><br><br><br><br>
<table border="1">
<tr>
<th>Product Name</th>
<th>Product ID</th>
<th>Product CATEGORY</th>
<th>Product PRICE</th>
</tr>
<tr ng-repeat="p in pom | limitTo:itemsPerPage | offset: (currentPage - 1) * itemsPerPage">
			<td>{{p.name}}</td>
			<td>{{p.id}}</td>
			<td>{{p.category}}</td>
			<td>{{p.price}}</td>
</tr>
</table>
<br><br>
 <pagination  
        total-items="totalItems" 
        ng-model="currentPage"> 
    </pagination>

</body>
</html>