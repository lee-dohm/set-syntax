# Set Syntax Atom Package

The Set Syntax package creates easy Command Palette entries for setting the syntax of the current file.

It is designed to make the transition to Atom easier for people migrating from Sublime Text by mimicking the method by which one changes the syntax of the current buffer in that editor.

## Installation

This package can be installed from Settings by searching for `set-syntax` or can be installed from the command line by using the command: `apm install set-syntax`.

## Use

Simply use the way you're used to in Sublime Text!

![Set Syntax demonstration](https://s3.amazonaws.com/lee-dohm/set-syntax.gif)

## Configuration

There is nothing to configure.

## Keymaps

There are no key mappings set, though you could set key mappings for specific languages that you use often. For example:

```cson
'.editor:not(.mini)':
  'alt-cmd-Z': 'set-syntax:ruby'
```

## Copyright

Copyright &copy; 2014 [Lee Dohm](http://www.lee-dohm.com), [Lifted Studios](http://www.liftedstudios.com). See [LICENSE](https://github.com/lee-dohm/set-syntax/blob/master/LICENSE.md) for details.
