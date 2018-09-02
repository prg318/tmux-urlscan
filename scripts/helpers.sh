#!/usr/bin/env bash

# Copyright (c) 2018 Filip Szymański. All rights reserved.
# Use of this source code is governed by an MIT license that can be
# found in the LICENSE file.

set -euf -o pipefail

command_exists() { # {{{
  command -v "$1" &> /dev/null
} # }}}

get_tmux_option() { # {{{
  local value
  value="$(tmux show-option -gqv "$1")"
  [[ -n "$value" ]] && echo "$value" || echo "$2"
} # }}}

# vim: sw=2 ts=2 et fdm=marker
