#####################################################################
#                                                                   #
#                       SET SHELL ALIASES                           #
#                                                                   #
#####################################################################

alias subl='/Volumes/Macintosh/Applications/Programming/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias spr='/Volumes/Internal-Workspace/dev-tools/sts-bundle/STS.app'
alias ecl='/Volumes/Internal-Workspace/dev-tools/Eclipse.app'
alias rst='/Volumes/Internal-Workspace/dev-tools/RStudio.app'
alias ws='cd /Volumes/Internal-Workspace/projects'

#alias ls='ls -GFh'
#alias ll='ls -l'
#alias ddu='sh ~/Dropbox/Development/Themes\ WordPress/dobsondev-underscores/ddunderscores-osx.sh'



#####################################################################
#                                                                   #
#                       CUSTOMISE SHELL COLOURS                     #
#                                                                   #
#####################################################################

export CLICOLOR=1
export LSCOLORS=fxbxxxxxxxxxxxxxxxfxfx


# a black
# b red                 # symbolic links
# c green
# d brown               # other
# e blue
# f magenta             # executables
# g cyan                # directories
# h light grey
# A bold black, usually shows up as dark grey
# B bold red
# C bold green
# D bold brown, usually shows up as yellow
# E bold blue
# F bold magenta
# G bold cyan
# H bold light grey; looks like bright white
# x default foreground or background




# The order of the attributes are as follows:

# 1. directory
# 2. symbolic link
# 3. socket
# 4. pipe
# 5. executable
# 6. block special
# 7. character special
# 8. executable with setuid bit set
# 9. executable with setgid bit set
# 10. directory writable to others, with sticky bit
# 11. directory writable to others, without sticky bit

. /etc/profile





# Get the current branch from "git branch" command
alias branch="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/\1/'";

# Prepare the individual parts of the top line
TIME="\[\033[38;5;9m\]\t\[$(tput sgr0)\]";
USER="\[$(tput sgr0)\]\[\033[38;5;11m\]\u@\h\[$(tput sgr0)\]";
DIR="\[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]";
BRANCH="\[\033[38;5;14m\]\$(branch)\[$(tput sgr0)\]";
NEXT_LINE="\n\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;7m\]$\[$(tput sgr0)\]";

# Export PS1 and PS2
export PS1="$TIME $USER $DIR $BRANCH $NEXT_LINE";
export PS2="\[$(tput bold)\]\[\033[38;5;7m\]>\[$(tput sgr0)\]"

# LS_COLORS=$LS_COLORS:'di=47;90:'; 
# export LS_COLORS


# Assign code completion if the file exists
if [ -e /etc/bash_completion.d ]; then
    for file in /etc/bash_completion.d/* ; do
        source "$file"
    done
fi


## Add branch to PS1 (based on $PS1 or $1), formatted as $2
#export GIT_PS1_SHOWDIRTYSTATE=yes


#FILES: 
#di = directory
#fi = file
#ln = symbolic link
#pi = fifo file
#so = socket file
#bd = block (buffered) special file
#cd = character (unbuffered) special file
#or = symbolic link pointing to a non-existent file (orphan)
#mi = non-existent file pointed to by a symbolic link (visible when you type ls -l)
#ex = file which is executable (ie. has 'x' set in permissions).
#*.rpm = files with the ending .rpm


#COLORS
#31  = red
#32  = green
#33  = orange
#34  = blue
#35  = purple
#36  = cyan
#37  = grey
#90  = dark grey
#91  = light red
#92  = light green
#93  = yellow
#94  = light blue
#95  = light purple
#96  = turquoise


#OTHER
#0   = default colour
#1   = bold
#4   = underlined
#5   = flashing text
#7   = reverse field
#40  = black background
#41  = red background
#42  = green background
#43  = orange background
#44  = blue background
#45  = purple background
#46  = cyan background
#47  = grey background
#100 = dark grey background
#101 = light red background
#102 = light green background
#103 = yellow background
#104 = light blue background
#105 = light purple background
#106 = turquoise background
