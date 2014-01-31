app.controller('HomeCtrl', ['$scope', 'AuthService', function($scope, authService){
    $scope.loginFM = new LoginFM();
    $scope.login = function(){
        alert(JSON.stringify($scope.loginFM));
        authService.login($scope.loginFM).success(function(){
            alert('success');
        }).error(function(data, status){
            alert('failed ' + status);
        });
    };
    }]);