function fish_right_prompt
    set --local _status $status

    if test $CMD_DURATION
        printf '%s %s %s' \
            (set_color yellow) \
            $CMD_DURATION \
            (set_color normal)
    end

    if test $_status -ne 0
        printf '%s %s %s' \
            (set_color red) \
            $_status \
            (set_color normal)
    end
end
