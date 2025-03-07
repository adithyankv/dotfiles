# import relevant configurations from relevant files if they exist
for file in $ZDOTDIR/.{aliases,environment_vars}
do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done
unset file
