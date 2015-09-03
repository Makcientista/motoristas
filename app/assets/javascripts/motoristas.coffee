# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $(document).on 'ready page:load', ->
    $('#div_atestado').hide()
    x = $('#div_atestado').html()
    $('#botao_atestado').click ->
      $('#div_atestado').toggle()
      $('#div_atestado').html(x)
      
jQuery ->
  $(document).on 'ready page:load', ->
    $('#div_multa').hide()
    x = $('#div_multa').html()
    $('#botao_multa').click ->
      $('#div_multa').toggle()
      $('#div_multa').html(x)