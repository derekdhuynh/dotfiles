# Flutter and Android PATH setup 
export PATH="$PATH:/Users/derekhuynh/flutter/bin"
export ANDROID_HOME=/Users/derekhuynh/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=/Users/derekhuynh/Library/Android/sdk/platform-tools:/Users/derekhuynh/Library/Android/sdk/tools:$PATH
export PATH="$PATH:/Users/derekhuynh/flutter/bin/cache/dart-sdk/bin"

# Python path for something
export PYTHONPATH="$PATH:`pwd`/Python/3.7/bin"

# Mvim and Gvim paths
export PATH="$PATH:/Applications/MacVim.app/Contents/bin"

# Shortened commands
alias l='ls'
alias c='clear'
alias p3='python3'

# Aliases for moving to common directories
alias comp='cd ~/Documents/coding-comp'
alias datascience='cd ~/Documents/datascience'
alias webdev='cd ~/Documents/webdev'

# Python virtual environments
alias flask-env='source ~/Documents/webdev/flask_env/bin/activate'
alias ds-env='source ~/Documents/datascience/ds-venv/bin/activate'

# Vim alias for mvim -v
alias vim='mvim -v'
