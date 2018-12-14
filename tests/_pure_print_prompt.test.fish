source $DIRNAME/../functions/_pure_print_prompt.fish

set --local EMPTY ''

test "returns nothing when no argument provided"
    (
        _pure_print_prompt
    ) = $EMPTY
end

test "trims prompt left side"
    (
        _pure_print_prompt " user host "
    ) = 'user host '
end

test "ignores color change argument"
    (
        _pure_print_prompt (set_color red)
    ) = $EMPTY
end

test "allow colored argument"
    (
        _pure_print_prompt ""(set_color red)"hello"
    ) = (set_color red)'hello'
end