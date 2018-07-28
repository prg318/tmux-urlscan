#!/usr/bin/env bash

# Copyright (c) 2018 Filip Szymański. All rights reserved.
# Use of this source code is governed by an MIT license that can be
# found in the LICENSE file.

set -euf -o pipefail

readonly CURRENT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# shellcheck source=scripts/helpers.sh
source "$CURRENT_DIR/scripts/helpers.sh"

readonly KEY=$(get_tmux_option '@urlscan-key' 'u')

tmux bind-key "$KEY" run-shell "$CURRENT_DIR/scripts/urlscan_extract.sh"

# vim: sw=2 ts=2 et fdm=marker
