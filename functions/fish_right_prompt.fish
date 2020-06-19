function fish_right_prompt -d 'show the date on the right'
  set --local system_time (_pure_prompt_system_time)
  set --local time_color (_pure_set_color $pure_color_system_time)
  echo "$time_color"(date +%T)
end