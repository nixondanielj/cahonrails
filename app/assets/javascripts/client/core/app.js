var app = angular.module('cah', ['ngRoute']);

app.config(['$routeProvider', function($routeProvider){
    $routeProvider.
        otherwise({
            templateUrl: '../partials/home.html',
            controller: 'HomeCtrl'
        });
    }]);