# my bash_profile
#
# Set up some exportable locations
# 
# previous Java release
JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
# current Java release
JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
# default JDK is 8
JAVA_HOME=$JAVA_8_HOME
# Maven
MAVEN_HOME=/usr/local/apache/maven
# Ant
ANT_HOME=/usr/local/apache/ant
# Unbounded LDAP Tools
UNBOUNDED=~/.local/bin/unboundid
# SQLPlus
ORA_SQL=~/.local/bin/instantclient_11_2
# SQLcl
ORA_SQLcl=~/.local/bin/sqlcl
# SQL LD PATH
DYLD_LIBRARY_PATH=$ORA_SQL
# TNS_NAMES
TNS_ADMIN=$ORA_SQL
# GOPATH
GOPATH=~/dev/work
# WORK DOMAIN
WORK_DOMAIN=colorado.edu
# EID
EID=

# MyAliases
#alias clusters='cat .csshrc | tail -n 1 | awk -F"=" \'{print $2}\' | sed -e \'s/\s/\n/\''
alias ll='ls -al'
alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java8='export JAVA_HOME=$JAVA_8_HOME'

#alias git-svl='git log | grep svn-id|awk -F"@" \'{print $2}\'|awk \'{print "    git-svn-id: SvnRev ["$1"] GitRef ["$2"]"}\''

# MyFunctions
function @ {
  if [ $2 ]; then 
    ssh -X <userid>@$1.$2
  else  
    ssh -X $EID@$1.$WORK_DOMAIN
  fi
}

# Exports 
export JAVA_7_HOME JAVA_HOME MAVEN_HOME ANT_HOME UNBOUNDED ORA_SQL DYLD_LIBRARY_PATH TNS_ADMIN WORK_DOMAIN EID GOPATH

# PathMunging
export PATH=$ORA_SQL:$ORA_SQLcl/bin:~/.local/bin:$UNBOUNDED/tools:$MAVEN_HOME/bin:$ANT_HOME/bin:$GOPATH/bin:$PATH

# Trigger ~/.bashrc commands
#. ~/.bashrc

# Run git bash-prompt enhancement
. ~/.bash_prompt

export PS1
