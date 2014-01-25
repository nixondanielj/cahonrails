var app = angular.module('cah', []);

app.config(['$routeProvider', function($routeProvider){
    $routeProvider.
        otherwise({
            templateUrl: '../partials/home.html',
            controller: 'HomeCtrl'
        });
    }]);