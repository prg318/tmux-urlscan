# Tmux urlscan

![](https://user-images.githubusercontent.com/25827968/43193477-686ef540-9000-11e8-9287-f73d6dc03658.png)

## Requirements

- [urlscan](https://github.com/firecat53/urlscan)

## Installation

**Using [tpm](https://github.com/tmux-plugins/tpm) (recommended)**

```sh
set-option -g @plugin 'fszymanski/tmux-urlscan'
```

**Manual installation**

```sh
$ git clone https://github.com/fszymanski/tmux-urlscan.git
```

```sh
run-shell ~/path/to/urlscan.tmux
```

```sh
$ tmux source-file ~/.tmux.conf
```

## Key bindings

`Prefix` + <kbd>u</kbd>

-

## Configuration

```sh
set-option -g @urlscan-args '-c -d -r "echo {} | xsel -i -b"'
```
Default: `-c -d`

```sh
set-option -g @urlscan-key 'X'
```
Default: `u`

## License

MIT
