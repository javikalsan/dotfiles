#/bin/sh

USER_CONFIG_FILE="$HOME/.bashrc"
MATCH_PATTERN_TEXT="# Load all fzf functions from dotfiles"
DOTFILES_FZF_DIRECTORY=`pwd`/fzf
LOAD_FZF_FUNCTIONS=$(cat << EOF

# Load all fzf functions from dotfiles
for file in ${DOTFILES_FZF_DIRECTORY}/*; do
    if [ \${file: -9} == ".function" ]
    then
        source \$file
    fi
done

EOF
);

if ! grep -Fxq "$MATCH_PATTERN_TEXT" $USER_CONFIG_FILE
then
    echo -e "$LOAD_FZF_FUNCTIONS" >> $USER_CONFIG_FILE
    source $USER_CONFIG_FILE
fi
