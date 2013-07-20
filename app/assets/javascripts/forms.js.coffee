# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('#form_auditors_name').val("")
  $('#form_categories_list_of_works').val("")
  
  $('input[type=checkbox]').click ->
    str = ""
    $("input:checked").each ->
      str += $(this).attr("value") + "\n"
    str += $("#otherTextArea").attr("text") if $("#otherCheckBox").checked
    $('#form_categories_list_of_works').val(str)
    
    $('#' + this.name).attr('style',
      if this.checked
        'display:block'
      else
        'display:none'
    )
    
    $("#otherTextArea").attr('style',
      if this.checked
        'display:block'
      else
        'display:none'
    ) if this.id == "otherCheckBox"


  $('input.auditor').change ->
    str = ""
    $('input.auditor').each ->
      str += this.value + ", "

    $('#form_auditors_name').val(str)