var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope,$http) {
   $scope.message = "Hello World...1111";
    alert("raja");
    $scope.obj={"id":10,"name":"raja","age":23};
    
    $scope.login=function(){
    	
    	alert("logined..");
    	$http({
        method : "GET",
        url : "/AngularJsDemo/angular"
        
      }).then(function mySuccess(response) {
          $scope.myWelcome = response.data;
          console.log(myWelcome);
        }, function myError(response) {
          $scope.myWelcome = response.statusText;
      });
    }
    
});