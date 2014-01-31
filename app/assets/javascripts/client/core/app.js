var services = angular.module('cahServices', []);

var app = angular.module('cah', ['ngRoute', 'cahServices']);

app.config(['$routeProvider', function($routeProvider){
    $routeProvider.
        otherwise({
            templateUrl: '../partials/home.html',
            controller: 'HomeCtrl'
        });
    }]);


