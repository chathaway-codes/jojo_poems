@userServices = angular.module('userServices', ['ngResource'])

@userServices.factory('User', ['$resource', ($resource) ->
    return $resource('users/:userId.json', {}, {
        query: {method: "GET", params: {userId: ""}, isArray: false}
    })
])
