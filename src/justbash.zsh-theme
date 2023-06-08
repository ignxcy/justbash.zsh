function set_prompt {
  # Get the current working directory
  local cwd=$(pwd)

  # Get the home directory
  local home_dir=$HOME

  # Check if the current working directory is the home directory
  if [[ $cwd == $home_dir ]]; then
    cwd="~"
  else
    # Get only the child directory name
    cwd=$(basename "$cwd")
  fi

  # Set the prompt with the modified current working directory
  PROMPT="[$(whoami)@$(hostname) $cwd]\$ "
}

# Set the initial prompt
set_prompt

# Define a function to be invoked whenever the working directory changes
function chpwd {
  set_prompt
}

# Enable the chpwd function
autoload -Uz add-zsh-hook
add-zsh-hook chpwd set_prompt
