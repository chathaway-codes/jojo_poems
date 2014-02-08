@feedServices = angular.module('feedServices', ['ngResource'])

@feedServices.factory('Feed', ['$resource', ($resource) ->
    return $resource('feeds/:feedId.json', {}, {
        query: {method: "GET", params: {feedId: ""}, isArray: false}
    })
])
