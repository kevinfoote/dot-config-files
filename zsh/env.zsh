#
# Set up personal customizations to ENV variables
# 
# 7 Java release
JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
# 8 Java release
JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
# 11 Java release
JAVA_11_HOME=$(/usr/libexec/java_home -v11)
# default JDK is 8
JAVA_HOME=$JAVA_8_HOME
# Maven v3.6.3
MAVEN_HOME=~/.local/bin/maven
# Ant
ANT_HOME=/usr/local/apache/ant/
# Unbounded LDAP Tools
UNBOUNDED=~/.local/bin/unboundid/
# SQLPlus
ORA_SQL=~/.local/bin/instantclient_11_2/
# SQLcl
ORA_SQLcl=~/.local/bin/sqlcl/
# SQL LD PATH
DYLD_LIBRARY_PATH=$ORA_SQL
# TNS_NAMES
TNS_ADMIN=$ORA_SQL
# GOPATH
GOPATH=~/dev/work
# BREWPATH
BREWPATH=/usr/local/bin:/usr/local/sbin
# RANCHER-DESKTOP BIN
RDBIN=~/.rd/bin
# WORK DOMAIN
WORK_DOMAIN=
# EID
EID=

# MyAliases
#alias ll='ls -al'
alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'

alias git='noglob git'
alias scp='noglob scp'

# MyFunctions
function @ {
  if [ $2 ]; then 
    ssh -X <userid>@$1.$2
  else  
    ssh -X $EID@$1.$WORK_DOMAIN
  fi
}

# Exports 
export JAVA_HOME MAVEN_HOME ANT_HOME UNBOUNDED ORA_SQL DYLD_LIBRARY_PATH TNS_ADMIN WORK_DOMAIN EID GOPATH RDBIN

# PathMunging
export PATH=$ORA_SQL:$ORA_SQLcl/bin:~/.local/bin:~/$RDBIN:$UNBOUNDED/tools:$MAVEN_HOME/bin:$ANT_HOME/bin:$GOPATH/bin:$BREWPATH:$PATH

