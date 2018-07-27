#!/usr/bin/env bash

# Copyright (c) 2018 Filip Szymański. All rights reserved.
# Use of this source code is governed by an MIT license that can be
# found in the LICENSE file.

set -euf -o pipefail

command_exists() { # {{{
  command -v "$1" &> /dev/null
} # }}}

get_tmux_option() { # {{{
  local option="$1"
  local option_value="$(tmux show-option -gqv "$option")"
  local default_value="$2"

  if [[ -z "$option_value" ]]; then
    echo "$default_value"
  else
    echo "$option_value"
  fi
} # }}}

# vim: sw=2 ts=2 et fdm=marker