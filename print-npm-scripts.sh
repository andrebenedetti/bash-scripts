# if package.json exists, print available scripts
[ -f ./package.json ] && echo "package.json scripts:" && cat package.json | jq '.scripts'
