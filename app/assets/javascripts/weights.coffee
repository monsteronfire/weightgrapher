# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  new Morris.Line
    element: 'weightgraph'
    data: $('#weightgraph').data('weights')

    xkey: 'created_at'
    ykeys: ['reading']
    labels: ['Weight']