
<head>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.3/angular.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/0.13.3/ui-bootstrap-tpls.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"></script>
<script src="pagination.js"></script>
</head>

<body ng-app="myApp">
	<div ng-controller="someController">
		<p>
			<select name="tablepress-37_length" aria-controls="tablepress-37"
				class="" ng-model="itemsPerPage"><option value="1">1</option>
				<option value="5">25</option>
				<option value="10">45</option>
				<option value="50">50</option>
				<option value="100">100</option></select>
				<!--  <input type="number"
				ng-model="itemsPerPage" step="5" min="1" max="20"> -->
		</p>
		<pagination total-items="totalItems" items-per-page="itemsPerPage"
			ng-model="currentPage" class="pagination-sm"> </pagination>

		<div
			ng-repeat="country in countries | offset: (currentPage - 1) * itemsPerPage | limitTo:itemsPerPage">
			{{country.name}}</div>

	</div>
</body>