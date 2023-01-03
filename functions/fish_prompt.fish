function fish_prompt --description 'Write out the prompt'
  printf '%s %s%s\n> ' (prompt_login) (set_color cyan)(prompt_pwd) (set_color white)(fish_git_prompt)
#  printf '%s@%s %s\n> ' (set_color brgreen)(echo $USER) (set_color bryellow)(prompt_hostname) (set_color cyan)(prompt_pwd)
end

function fish_right_prompt --description 'Write out right of the prompt'
  printf '%s' (set_color brblack)(date +"%Y/%m/%d %T")
end
