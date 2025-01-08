# ====================================================================
# Add MYSQL Path settings
# ====================================================================
export DYLD_LIBRARY_PATH="/usr/local/mysql-8.0.39-macos14-arm64/lib" 
export MYSQLCLIENT_CFLAGS="-I/usr/local/mysql-8.0.39-macos14-arm64/include"
export MYSQLCLIENT_LDFLAGS="-L/usr/local/mysql-8.0.39-macos14-arm64/lib -lmysqlclient"
export MAGIC_LIBRARY=/opt/homebrew/Cellar/libmagic/5.45/lib/libmagic.dylib
export PATH=${PATH}:/usr/local/mysql-8.0.39-macos14-arm64/bin
# ====================================================================
# Show git branch in terminal
# ====================================================================
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '- ('$branch')'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
# prompt='%2/ $(git_branch_name) > '
export PROMPT='%F{green}%n%f@%F{blue}%m%f %F{yellow}%~%f $(git_branch_name) %F{cyan}%#%f '

# ====================================================================
# Set up aliases
# ====================================================================
alias python=python3

# Service aliases
alias rsu="python manage.py runserver"
alias rscon="python manage.py runserver 127.0.0.1:8001"
alias rsp="python manage.py runserver 127.0.0.1:8002"
alias rscol="python manage.py runserver 127.0.0.1:8003"
alias rsw="python manage.py runserver 127.0.0.1:8004"
alias rss="python manage.py runserver_plus --cert=cert"

alias pm="python manage.py"
alias run="python manage.py runserver"
alias mm="python manage.py makemigrations"
alias mi="python manage.py migrate"
alias sm="python manage.py showmigrations"

alias q="exit"
alias qv="deactivate"
alias venv="source .venv/bin/activate"


alias pt="pytest -n auto"

alias pi="pip install"

alias ps="pipenv shell"
alias psp="pipenv shell --python"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tripplea/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tripplea/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tripplea/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tripplea/google-cloud-sdk/completion.zsh.inc'; fi

alias bm_users="cd /Users/tripplea/projects/onafriq/beyonic/bm_users"
alias bm_contacts="cd /Users/tripplea/projects/onafriq/beyonic/bm_contacts"
alias bm_payments="cd /Users/tripplea/projects/onafriq/beyonic/bm_payments"
alias bm_collections="cd /Users/tripplea/projects/onafriq/beyonic/bm_collections"
alias bm_wallets="cd /Users/tripplea/projects/onafriq/beyonic/bm_wallets"
alias bm_apis="cd /Users/tripplea/projects/onafriq/beyonic/bm_apis"
alias sassu="cd /Users/tripplea/projects/onafriq/enterprise/sasula-git"

alias marv="cd /Users/tripplea/projects/marvin"

