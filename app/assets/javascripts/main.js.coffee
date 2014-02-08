@jojo_poems = angular.module('jojo_poems', ['ngRoute', 'userServices'])

@jojo_poems.config(['$routeProvider', ($routeProvider) ->
    $routeProvider.
        when('/poem/create', {
            templateUrl: '../templates/poem/create.html',
            controller: 'PoemCreateCtrl'
        }).
        otherwise({
            templateUrl: '../templates/home.html',
            controller: 'HomeCtrl'
        })
])
