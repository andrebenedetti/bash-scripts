STRING_TO_BE_MATCHED="lodash"

grep $STRING_TO_BE_MATCHED ./package.json | while read -r line; do cut -d':' -f1 <<< "${line//\"}"; done | while read -r line; do yarn upgrade -E "$line"@latest; done;
