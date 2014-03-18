angular.module('airline',['ngRoute', 'airlineServices']).config(airlineRouter);


function airlineRouter($routeProvider) {
	$routeProvider.when('/', {
								 	templateUrl: 'partials/destinations.html',
								 	controller: 'DestinationsCtrl'})
								.when('/airports/:airportCode', {
									templateUrl: 'partials/airport.html',
									controller: 'AirportCtrl'})
								.when('/airports/:airport1/:airport2', {
									templateUrl: 'partials/two_airports.html'})
								.when('/flights', {
									templateUrl:'partials/flights.html',
								 	controller: 'FlightsCtrl'})
								.when('/reservations', {
									templateUrl:'partials/reservations',
								 	controller: 'ReservationsCtrl'});

}