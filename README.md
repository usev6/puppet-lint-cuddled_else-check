puppet-lint-cuddled_else-check
==============================

A puppet-lint plugin to check for [cuddled else blocks](http://wiki.c2.com/?CuddledElseBlocks).

## Installation

### From the command line

```shell
$ gem install puppet-lint-cuddled_else-check
```

## Checks

### Cuddled else/elsif

There are two different styles regarding the placement of `else` and `elsif` keywords. It can be placed on the same line as the closing curly of the preceding if block (`cuddled`) or on a separate line below that closing curly (`uncuddled`). There are pros and cons for both styles -- cmp. http://wiki.c2.com/?CuddledElseBlocks.

This check helps to enforce a consistent style by warning about `cuddled` else/elsif keywords.

#### What you have done

The `else` (or `elsif`) keyword is on the same line as the closing curly brace of the preceding if block.

```puppet
if $foo == 'bar' {
  ## some stuff
} else {
  ## other stuff
}
```

#### What you should have done

The `else` (or `elsif`) keyword is on a new line below the closing curly brace of the preceding if block.

```puppet
if $foo == 'bar' {
  ## some stuff
}
else {
  ## other stuff
}
```

#### Disabling the check

To disable this check, you can add `--no-cuddled_else-check' to your puppet-lint command line.

```
$ puppet-lint --no-cuddled_else-check /path/to/file.pp
```

## See also

There is a corresponding plugin `puppet-lint-uncuddled_else-check` that warns for uncuddled else blocks. Most probably you only want one of both checks. ;)

## Acknowledgments

This plugin for `puppet-lint` has been written owing to the very nice [tutorial for writing puppet-lint checks](http://puppet-lint.com/developer/tutorial/).
