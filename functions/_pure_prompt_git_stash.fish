function _pure_prompt_git_stash
    set --local git_stash_symbol
    set --local git_stash_color
    set --local git_stash_count (count (command git stash list --no-decorate 2>/dev/null))

    if test $git_stash_count -gt 0 # untracked or un-commited files
        set git_stash_symbol "$pure_symbol_stash"
        set git_stash_color (_pure_set_color $pure_color_git_unpushed_commits)
    end

    echo " $git_stash_color$git_stash_symbol"
end
