{hasCommand} = require './spec-helper'

describe 'Set Syntax', ->
  [workspaceElement] = []

  beforeEach ->
    workspaceElement = atom.views.getView(atom.workspace)

    waitsForPromise ->
      atom.packages.activatePackage('language-javascript')

    waitsForPromise ->
      atom.packages.activatePackage('set-syntax')

  describe 'activation', ->
    it 'adds the commands', ->
      expect(hasCommand(workspaceElement, 'set-syntax:JavaScript')).toBeTruthy()

  describe 'deactivation', ->
    beforeEach ->
      atom.packages.deactivatePackage('set-syntax')

    it 'removes the commands', ->
      expect(hasCommand(workspaceElement, 'set-syntax:JavaScript')).toBeFalsy()
