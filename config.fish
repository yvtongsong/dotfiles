if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt
	printf '💩 '
end

fish_vi_key_bindings

function fish_mode_prompt
end

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
bass source "$HOME/.cargo/env"
bass export PATH="$HOME/anaconda3/bin:$PATH"
bass source /tools/Xilinx/Vitis/2024.2/settings64.sh
bass export ELECTRON_OZONE_PLATFORM_HINT=auto

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
set -x SDKMAN_DIR $HOME/.sdkman
bass source $HOME/.sdkman/bin/sdkman-init.sh

# Set JAVA_HOME for Fish shell manually
set -x JAVA_HOME $HOME/.sdkman/candidates/java/current
set -x JDK_HOME $JAVA_HOME

fish_config theme choose my

