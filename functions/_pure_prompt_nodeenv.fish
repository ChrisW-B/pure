#show node version
function _pure_prompt_nodeenv
  if command --search node >/dev/null
    set -l node_version (command node -v ^/dev/null)
    set --local nodeenv_color (_pure_set_color $pure_color_success)
    echo "$nodeenv_color$pure_symbol_node $node_version"
  end
end

