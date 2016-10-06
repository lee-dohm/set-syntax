{CompositeDisposable} = require 'atom'

module.exports =
  # Public: Activates the package.
  activate: ->
    @disposables = new CompositeDisposable

    atom.grammars.getGrammars().map (grammar) =>
      @createCommand(grammar)

    @disposables.add atom.grammars.onDidAddGrammar (grammar) =>
      @createCommand(grammar)

  # Public: Deactivates the package.
  deactivate: ->
    @disposables.dispose()

  # Private: Creates the command for a given {Grammar}.
  #
  # * `grammar` {Grammar} the command will be for.
  createCommand: (grammar) ->
    if grammar?.name?
      workspaceElement = atom.views.getView(atom.workspace)
      @disposables.add atom.commands.add workspaceElement, "set-syntax:#{grammar.name}", ->
        atom.workspace.getActiveTextEditor()?.setGrammar(grammar)
