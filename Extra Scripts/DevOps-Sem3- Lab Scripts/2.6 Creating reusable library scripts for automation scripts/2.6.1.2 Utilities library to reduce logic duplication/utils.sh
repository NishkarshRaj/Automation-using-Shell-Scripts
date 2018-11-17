#!/bin/bash

declare -r TRUE=0
declare -r FALSE=1

die() {
    echo "$1" >&2; exit 1
}

has_root_permission() {
    [ $(id -u) -eq 0 ] && return $TRUE || return $FALSE
}

does_user_exit() {
    local username="$1"
    grep -q "^${username}" /etc/passwd && return $TRUE || return $FALSE
}

is_valid_file() {
    local given_path="$1"
    [ -f "$(realpath $given_path)" ] && return $TRUE || return $FALSE
}
