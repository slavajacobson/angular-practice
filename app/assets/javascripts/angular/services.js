angular.module('airlineServices', ['ngResource'])
	.factory('Airport', function ($resource) {
		return $resource('/api/airports/:airportCode');
	})
	.factory('Flights',function($resource){
		return $resource('/api/flights');
	}).factory('Reservations',function($resource){
		return $resource('/api/reservations');
	});