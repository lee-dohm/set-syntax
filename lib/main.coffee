{CompositeDisposable} = require 'atom'

_ = require 'underscore-plus'

module.exports =
  # Public: Activates the package.
  activate: ->
    @disposables = new CompositeDisposable

    atom.grammars.getGrammars().map (grammar) =>
      @disposables.add @createCommand(grammar)

    @disposables.add atom.grammars.onDidAddGrammar (grammar) =>
      @disposables.add @createCommand(grammar)

  # Public: Deactivates the package.
  deactivate: ->
    @disposables.dispose()

  # Private: Creates the command for a given {Grammar}.
  #
  # * `grammar` {Grammar} the command will be for.
  createCommand: (grammar) ->
    if grammar?.name?
      workspaceElement = atom.views.getView(atom.workspace)
      atom.commands.add workspaceElement, "set-syntax:#{grammar.name}", ->
        atom.workspace.getActiveTextEditor()?.setGrammar(grammar)
