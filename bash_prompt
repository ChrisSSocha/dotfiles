#Git prompt
__git_ps1 () 
{ 
        local b="$(git symbolic-ref HEAD 2>/dev/null)";
        if [ -n "$b" ]; then
                printf " (%s)" "${b##refs/heads/}";
        fi
}

# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time12a="\@"
PathShort="\W"
PathFull="\w"
NewLine="\n"
Jobs="\j"
User="\u"
Host="\h"

# Bash Prompt
export PS1=$ICyan$User$Color_off@$IGreen$Host$Color_off'$(git branch &>/dev/null;\
        if [ $? -eq 0 ]; then \
                echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
                if [ "$?" -eq "0" ]; then \
                        # @4 - Clean repository - nothing to commit
echo "'$Green'"$(__git_ps1 " (%s)"); \
else \
        # @5 - Changes to working tree
echo "'$IRed'"$(__git_ps1 " {%s}"); \
fi) '$BYellow$PathShort$Color_Off'\$ "; \
          else \
                  # @2 - Prompt when not in GIT repo
echo " '$Yellow$PathShort$Color_Off'\$ "; \
fi)'

