#
# Copyright (c) 2014 by Lifted Studios. All Rights Reserved.
#

module.exports =
  # Activates the package.
  activate: ->
    atom.syntax.getGrammars().map (grammar) -> createCommand(grammar)
    atom.syntax.on 'grammar-added', (grammar) -> createCommand(grammar)

# Creates the command for a given {Grammar}.
#
# grammar - {Grammar} the command will be for.
createCommand = (grammar) ->
  if grammar?.name?
    atom.workspaceView.command "set-syntax:#{nameToCommand(grammar.name)}", ->
      atom.workspace.getActiveEditor()?.setGrammar(grammar)

# Converts a grammar name into the format expected of commands.
#
# name - {String} containing the name of a grammar.
#
# Returns a {String} containing the name of the grammar formatted as a command.
nameToCommand = (name) ->
  name?.toLowerCase().replace /\s/g, '-'
