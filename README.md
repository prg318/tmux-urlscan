# Tmux urlscan

This plugin allows you to open any URL on your terminal window.

![](https://user-images.githubusercontent.com/25827968/43193477-686ef540-9000-11e8-9287-f73d6dc03658.png)

## Requirements

- [urlscan](https://github.com/firecat53/urlscan)

## Installation

**Using [tpm](https://github.com/tmux-plugins/tpm) (recommended)**

Add this line to the `tpm` section in your configuration file:

```sh
set-option -g @plugin 'fszymanski/tmux-urlscan'
```

**Manual installation**

Clone the repository:

```sh
$ git clone https://github.com/fszymanski/tmux-urlscan.git
```

Add this line to your configuration file:

```sh
run-shell ~/path/to/urlscan.tmux
```

Reload the configuration file:

```sh
$ tmux source-file ~/.tmux.conf
```

## Key bindings

`Prefix` + <kbd>u</kbd>
- extract URLs and email addresses

## Configuration

> With this option you can change the command.
```sh
set-option -g @urlscan-prog 'urlview'
```
Default: `urlscan`

> With this option you can change the command arguments.
```sh
set-option -g @urlscan-args '-c -d -r "echo {} | xsel -i -b"'
```
Default: `-c -d`

> With this option you can change the key binding.
```sh
set-option -g @urlscan-key 'X'
```
Default: `u`

## License

MIT
