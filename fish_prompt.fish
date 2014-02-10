function fish_prompt
    set --local _status $status

    test $CMD_DURATION; and tput bel

    printf '%s %s %s %s %s %s %s %s \n%s#%s ' \
        (set_color --background cyan) \
        (prompt_pwd) \
        (set_color --background blue) \
        (git symbolic-ref --short HEAD ^/dev/null; or printf '-') \
        (set_color --background purple) \
        (id --name --user) \
        (set_color normal) \
        (hostname --short) \
        (test $_status -eq 0; and set_color green; or set_color red) \
        (set_color normal)
end
