#
# Copyright (c) 2014 by Lifted Studios. All Rights Reserved.
#

module.exports =
  activate: ->
    atom.syntax.on 'grammar-added', (grammar) -> createCommand(grammar)

createCommand = (grammar) ->
  atom.workspaceView.command "set-syntax:#{nameToCommand(grammar.name)}", ->
    atom.workspace.getActiveEditor()?.setGrammar(grammar)

nameToCommand = (name) ->
  name.toLowerCase().replace /\s/g, '-'
