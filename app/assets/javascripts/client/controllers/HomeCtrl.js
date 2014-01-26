app.controller('HomeCtrl', ['$scope', '$http', function($scope, $http){
    $scope.loginFM = new LoginFM();
    $scope.login = function(){
        alert($scope.token);
        $http.post('login', $scope.loginFM, $scope.token).success(function(){
            alert('success');
        });
    };
    }]);