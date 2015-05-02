# Set Syntax [![Build Status](https://travis-ci.org/lee-dohm/set-syntax.svg?branch=master)](https://travis-ci.org/lee-dohm/set-syntax) [![Dependency Status](https://david-dm.org/lee-dohm/set-syntax.svg)](https://david-dm.org/lee-dohm/set-syntax)

The Set Syntax Atom package creates easy Command Palette entries for setting the syntax of the current file.

It is designed to make the transition to Atom easier for people migrating from Sublime Text by mimicking the method by which one changes the syntax of the current buffer in that editor.

## Usage

Simply use the way you're used to in Sublime Text!

![Set Syntax demonstration](https://raw.githubusercontent.com/lee-dohm/set-syntax/master/set-syntax.gif)

### Key Bindings

There are no key bindings set by default, though you could set keys for specific languages that you use often. For example:

```coffee
'atom-text-editor':
  'alt-cmd-Z': 'set-syntax:ruby'
```

## Copyright

Copyright &copy; 2014-2015 [Lee Dohm](http://www.lee-dohm.com), [Lifted Studios](http://www.liftedstudios.com). See [LICENSE](https://github.com/lee-dohm/set-syntax/blob/master/LICENSE.md) for details.
