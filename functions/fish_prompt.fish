# Default Ubuntu Bash Style Prompt
function fish_prompt

  set -g fish_prompt_pwd_dir_length 0
  # Username and Computer Name
  if not set -q prompt_hostnamething

     set -g prompt_hostnamething (hostname)

  end

  set_color green -o ; echo -n $USER; echo -n '@'; echo -n $prompt_hostnamething

  # PWD and End of Prompt
   set_color normal; echo -n ':' ; set_color blue -o ; echo -n  (prompt_pwd); set_color normal; echo -n '$ '

end
