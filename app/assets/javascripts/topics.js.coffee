# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

updateNewPostButton = ()->
  if isBlank($("#newPostInputTitle").val()) or isBlank($("#newPostInputContent").val())
    $("#newPostSubmit").attr 'disabled', 'disabled'
  else
    $("#newPostSubmit").removeAttr 'disabled'

$(document).on 'page:change', ()->
  updateNewPostButton()
  $("#newPostInputContent").keyup updateNewPostButton
  $("#newPostInputTitle").keyup updateNewPostButton
