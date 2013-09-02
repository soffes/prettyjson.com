window.pretty = ->
  textArea = document.getElementsByTagName('textarea')[0]
  jsonString = textArea.value
  textArea.value = JSON.stringify(JSON.parse(jsonString), null, 2)
