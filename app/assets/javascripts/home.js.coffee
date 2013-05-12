# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $.getJSON("/whois", (data) ->
    b = data.parts[0].body
    $('#whois').html(b)
  ).error( ->
    $('#whois').html('Error: <a href="/">Try again.</a>')
  )
