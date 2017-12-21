##
# Your previous /Users/tautvydas/.bash_profile file was backed up as /Users/tautvydas/.bash_profile.macports-saved_2016-07-28_at_21:12:00
##



#####################################################################
# 																	#
# 						HANDLE PATH VARIABLES 						#
#																	#
#####################################################################

# Set JAVA_HOME
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home
export JAVA_HOME

# Set M3_HOME
M3_HOME=/Volumes/Internal-Workspace/dev-tools/apache-maven-3.3.9
export M3_HOME

# Add variables to PATH
PATH=$PATH:$JAVA_HOME/bin:$M3_HOME/bin
export PATH

# Add variables needed for MacPorts to PATH
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"



#####################################################################
# 																	#
# 				INCLUDE .BASHRC FILE FOR STYLING 					#
#																	#
#####################################################################

# Use .bashrc to apply styling
[[ -s ~/.bashrc ]] && source ~/.bashrc



# added by Anaconda3 4.3.0 installer
export PATH="/Volumes/Internal-Workspace/dev-tools/anaconda/bin:$PATH"
