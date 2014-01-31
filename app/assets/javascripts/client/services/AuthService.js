services.factory("AuthService", ['$http', function($http){
    return {
        login: function(credentials){
            return $http.post('/login', credentials);
        },
        logout: function(){
            return $http.get('/logout');
        }
    };
    }]);