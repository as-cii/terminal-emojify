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

(straight from my .gitconfig :sunglasses:)

Edit your .gitconfig and define this alias:

```
[alias]
  hist = !git --no-pager log --color --pretty=format:'%C(yellow)%h%C(reset)%C(bold red)%d%C(reset) %s %C(black)— %an (%ad)%C(reset)' --relative-date | emojify | less -r
```

Then run the command below on your repo:

```bash
$ git hist
```

![Screenshot](http://i.imgur.com/D5AqNUz.png)

*If your terminal displays weird characters, please make sure you're running the latest version of `less` before reporting an issue. Thanks! :beers:*

### Psycho

(courtesy of http://emojisaurus.com/phrases/402-psycho)

```
$ echo ":hocho: :scream: :shower:" | emojify
```

![Screenshot](http://i.imgur.com/QPksGcG.png)

### Many others

What about you? Please, open an issue describing how you are using it and I will include it here :bow:.

## Contributing

1. Fork it ( https://github.com/as-cii/terminal-emojify/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
