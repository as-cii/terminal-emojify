# Terminal Emojify

Outputs emoji aliases as raw characters.

## Why?

Nowadays [many
projects](https://github.com/atom/atom/tree/master/CONTRIBUTING.md) use emojis
as part of their contribution workflow. Commit messages are, therefore, full of
these wonderful icons which, unfortunately, are not accessible in our terminal.

Terminal Emojify is here to change that.

## Installation

```bash
$ gem install terminal-emojify
```

## Example Usages

### Beautiful git history

Edit your .gitconfig and define this alias:

```
[alias]
  elog = --no-pager log | emojify | less
```

Then run the command below on your repo:

```bash
$ git elog
```

### Psycho

(courtesy of http://emojisaurus.com/phrases/402-psycho)

```
$ echo ":hocho: :scream: :shower:" | emojify
```

### Many others

What about you? How do you use it? Please, open an issue so that I can include
other creative usages of this utility :bow:.

## Contributing

1. Fork it ( https://github.com/as-cii/terminal-emojify/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
