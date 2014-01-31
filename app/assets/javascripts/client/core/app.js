var app = angular.module('cah', ['ngRoute', 'cahServices']);

app.config(['$routeProvider', function($routeProvider){
    $routeProvider.
        otherwise({
            templateUrl: '../partials/home.html',
            controller: 'HomeCtrl'
        });
    }]);

var services = angular.module('cahServices', ['ngResource']);
