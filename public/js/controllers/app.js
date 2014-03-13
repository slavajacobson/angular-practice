function AppCtrl ($scope) {
  $scope.airportTemplate = 'partials/airport.html';

  $scope.setActive = function(type) {
    $scope.destinationsActive = '';
    $scope.flightsActive = '';
    $scope.reservationsActive = '';

    $scope[type + 'Active'] = 'active';


  }

  


  
  $scope.editing = null;


  $scope.editURL = 'partials/edit_airport.html'
  
  $scope.editAirport = function(code) {
    $scope.editing = $scope.airports[code];
  };
}