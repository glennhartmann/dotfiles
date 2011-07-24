
test -r /sw/bin/init.sh && . /sw/bin/init.sh

##
# Your previous /Users/glenn/.profile file was backed up as /Users/glenn/.profile.macports-saved_2009-06-29_at_12:40:13
##

##
# Your previous /Users/glenn/.profile file was backed up as /Users/glenn/.profile.macports-saved_2010-01-06_at_14:30:13
##

# insert scripts directory to PATH for custom user shell scripts
export PATH=~/Library/Scripts/Shell\ Scripts:/Library/Scripts/Shell\ Scripts:$PATH
# done adding scripts directory

# insert MinGW directory to PATH for custom user shell scripts
export PATH=/usr/local/i386-mingw32-4.3.0/bin:$PATH
# done adding MinGW directory

# add latex to path
export PATH=/usr/texbin:$PATH

# add /usr/local/bin before /usr/bin
export PATH=/usr/local/bin:$PATH

##
# Your previous /Users/glenn/.profile file was backed up as /Users/glenn/.profile.macports-saved_2010-12-10_at_12:17:47
##

# MacPorts Installer addition on 2010-12-10_at_12:17:47: adding an appropriate PATH variable for use with MacPorts.
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
# Finished adapting your PATH environment variable for use with MacPorts.

# Fink init
sh /sw/bin/init.sh
# end Fink init

source .git-completion.bash
# set -o vi

# Google Go programming language
export PATH=$PATH:/Users/glenn/go/bin
# END Google Go programming language
