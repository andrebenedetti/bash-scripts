# if package.json exists, print available scripts
# TODO: use this in a way that it runs after doing a "cd"
[ -f ./package.json ] && echo "package.json scripts:" && cat package.json | jq '.scripts'
