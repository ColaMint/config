#!/usr/bin/env bash

if [ -n "$DISPLAY" ] && command -v ueberzug > /dev/null; then
    export joshuto_wrap_id="$$"
    export joshuto_wrap_tmp="$(mktemp -d -t joshuto-wrap-$joshuto_wrap_id-XXXXXX)"
    export joshuto_wrap_ueber_fifo="$joshuto_wrap_tmp/fifo"
    export joshuto_wrap_pid_file="$joshuto_wrap_tmp/pid"
    export joshuto_wrap_preview_meta="$joshuto_wrap_tmp/preview-meta"
    export joshuto_wrap_ueber_identifier="preview"

    function start_ueberzug {
        mkfifo "${joshuto_wrap_ueber_fifo}"
        tail --follow "$joshuto_wrap_ueber_fifo" | ueberzug layer  --parser bash &
        echo "$!" > "$joshuto_wrap_pid_file"
        mkdir -p "$joshuto_wrap_preview_meta"
    }

    function stop_ueberzug {
        ueberzug_pid=`cat "$joshuto_wrap_pid_file"`
        kill "$ueberzug_pid"
        rm -rf "$joshuto_wrap_tmp"
    }

    function show_image {
        >"${joshuto_wrap_ueber_fifo}" declare -A -p cmd=( \
                [action]=add [identifier]="${joshuto_wrap_ueber_identifier}" \
                [x]="${2}" [y]="${3}" \
                [width]="${4}" [height]="${5}" \
                [path]="${1}")
    }

    function remove_image {
        >"${joshuto_wrap_ueber_fifo}" declare -A -p cmd=( \
            [action]=remove [identifier]="${joshuto_wrap_ueber_identifier}")
    }

    function get_preview_meta_file {
        echo "$joshuto_wrap_preview_meta/$(echo "$1" | md5sum | sed 's/ //g')"
    }

    export -f get_preview_meta_file
    export -f show_image
    export -f remove_image
 
    trap stop_ueberzug EXIT QUIT INT TERM
    start_ueberzug
    echo "ueberzug started"
fi

joshuto "$@"
exit $?
