# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

updateNotes = ->
  console.log "Got it"
  selection_id = $('#sales_item_category_id').val()
  $.getJSON '/categories/' + selection_id + '/notes', {},(json, response) ->
    $('#notes').text json['notes']



$(document).on 'turbolinks:load', ->
  console.log "sales item loading"
  if $('#sales_item_category_id').length
    updateNotes
  $('#sales_item_category_id').on 'change', updateNotes
  $('#sales_item_category_id').trigger("change")
  $(document).on 'keyup', '#sales_item_price',->
    if $(this).val() < 1
      $('#price_warning').text("Price is too low!")
    else
      $('#price_warning').text("")


