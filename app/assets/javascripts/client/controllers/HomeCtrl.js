app.controller('HomeCtrl', ['$scope', '$http', function($scope, $http){
    $scope.loginFM = new LoginFM();
    $scope.login = function(){
        $http.post('login', $scope.loginFM).success(function(){
            alert('success');
        });
    };
    }]);