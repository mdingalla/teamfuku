(function() {
  'use strict';
  var myApp = angular.module('myApp', ['ngRoute']);
  myApp.config(['$routeProvider',
   function($routeProvider) {
     $routeProvider.
       when('/close', {
         templateUrl: '../SiteAssets/cewp/close.html',
      //   controller: 'AddOrderController'
       }).
       when('/showOrders', {
         templateUrl: 'templates/show-orders.html',
         controller: 'ShowOrdersController'
       }).
       otherwise({
         redirectTo: ''
       });
  }]);
})();
