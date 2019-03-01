# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

showDescription = ->
  $("#description").fadeIn()
  $("#item-count").fadeOf()


hideDescription = ->
  $("#description").fadeOut()
  $("#item-count").fadeIn()

$(document).on 'turbolinks:load', ->
  console.log "dashboard load"
  $("#description").hide()
  $("#item-count").hide()

  $('#average').mouseover -> showDescription()
  $('#average').mouseleave -> hideDescription()

