if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export PATH=$PATH:/usr/local/go/bin
# Base path for custom scripts
export CUSTOM_SCRIPTS_DIR=dev/scripts

# Each custom script should get a function like this
function create_go_module { 
  ~/$CUSTOM_SCRIPTS_DIR/create-go-module.sh $1;
}
# And an export like this
export -f create_go_module

function edit_config {
  local config_name=$1

  case $config_name in
    
    tmux)
      nvim ~/.tmux.conf
      ;;

    shell)
      nvim ~/.bash_profile
      ;;

    nvim | neovim)
      nvim ~/.config/nvim/init.lua
      ;;

    *)
      echo "Uknown config $config_name"
      ;;

  esac 
}

export -f edit_config
