# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

atom.commands.add 'atom-text-editor',
  'user:insert-date': (event) ->
    editor = @getModel()

    now = new Date
    console.log(now)

    dd = now.getDate()
    mm = now.getMonth()
    mm+= 1
    mm = "0#{mm}" if mm.length = 1
    yyyy = now.getFullYear()
    day = ""

    day = "Sunday"          if now.getDay() == 0
    day = "Monday"          if now.getDay() == 1
    day = "Tuesday"         if now.getDay() == 2
    day = "Wednesday"       if now.getDay() == 3
    day = "Thursday"        if now.getDay() == 4
    day = "Friday"          if now.getDay() == 5
    day = "Saturday"        if now.getDay() == 6

    editor.insertText("[#{dd}/#{mm}/#{yyyy}] #{day}")
