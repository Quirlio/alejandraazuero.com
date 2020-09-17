#= require "_helper"

require
  paths:
    jquery: "https://code.jquery.com/jquery-3.1.0.min"
    bootstrap: "/js/includes/bootstrap.min"
  shim:
    'bootstrap':
      deps:['jquery']

require ["jquery", "bootstrap"], ($) ->
