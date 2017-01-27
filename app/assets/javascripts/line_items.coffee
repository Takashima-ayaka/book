# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@add_cart_item = (id) ->
    $.post '/line_items/' + id + '/add_cart_item'
    false
