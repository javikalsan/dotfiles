#!/bin/sh

USER_CONFIG_FILE="$HOME/.bashrc"
MATCH_PATTERN_TEXT="# Load all .alias files from dotfiles"
DOTFILES_ALIAS_DIRECTORY=$(pwd)
LOAD_ALIASES_CODE=$(cat << EOF

# Load all .alias files from dotfiles
for file in ${DOTFILES_ALIAS_DIRECTORY}/*; do
    if [ \${file: -6} == ".alias" ]
    then
        source \$file
    fi
done

EOF
);

if ! grep -Fxq "$MATCH_PATTERN_TEXT" "$USER_CONFIG_FILE"
then
    echo -e "$LOAD_ALIASES_CODE" >> "$USER_CONFIG_FILE"
    source "$USER_CONFIG_FILE"
fi
