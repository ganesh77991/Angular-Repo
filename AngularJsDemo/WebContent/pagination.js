var app = angular.module('myApp', ['ui.bootstrap']);

app.filter('offset', function() {
    return function(input, start) {
    	return input.slice(start);
 	};
})

app.controller('someController', function($scope, $filter) {
    $scope.currentPage = 1;
    $scope.itemsPerPage =5;
    $scope.maxSize = 20;
    $scope.totalItems = 14;
    
    
    	$scope.countries =[
    		{ name: 'country ' },
    		{ name: 'country1 ' },
    		{ name: 'country2 ' },
    		{ name: 'country3 ' },
    		{ name: 'country4 ' },
    		{ name: 'country5 ' },
    		{ name: 'country6 ' },
    		{ name: 'country7 ' },
    		{ name: 'country8 ' },
    		{ name: 'country9 ' },
    		{ name: 'country10 ' },
    		{ name: 'country11' },
    		{ name: 'country12' },
    		{ name: 'country13' },
    		];
});