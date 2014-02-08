@jojo_poems.controller "HomeCtrl", ['$scope', 'User', ($scope, Users) ->
    $scope.user = Users.query();
]
