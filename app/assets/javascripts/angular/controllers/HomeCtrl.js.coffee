@jojo_poems.controller "HomeCtrl", ['$scope', 'User', ($scope, Users) ->
    $scope.users = Users.query();
]
