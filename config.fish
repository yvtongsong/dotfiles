if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status is-interactive
and not set -q TMUX
    exec tmux
end

fish_vi_key_bindings

function fish_mode_prompt
end

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
bass source "$HOME/.cargo/env"

# Set JAVA_HOME for Fish shell manually
#set -x JAVA_HOME $HOME/.sdkman/candidates/java/current
#set -x JDK_HOME $JAVA_HOME

fish_config theme choose my

