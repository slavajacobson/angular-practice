angular.module('airlineServices', ['ngResource'])
	.factory('Airport', function ($resource) {
		return $resource('/api/airports/:code');
	});