_ = require 'underscore-plus'

module.exports =
  # Activates the package.
  activate: ->
    atom.grammars.getGrammars().map (grammar) =>
      @createCommand(grammar)

    atom.grammars.onDidAddGrammar (grammar) =>
      @createCommand(grammar)

  # Private: Creates the command for a given {Grammar}.
  #
  # * `grammar` {Grammar} the command will be for.
  createCommand: (grammar) ->
    if grammar?.name?
      workspaceElement = atom.views.getView(atom.workspace)
      atom.commands.add workspaceElement, "set-syntax:#{_.dasherize(grammar.name)}", ->
        atom.workspace.getActiveTextEditor()?.setGrammar(grammar)
