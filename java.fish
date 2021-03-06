
# Wrap jjs to make keyboard navigation work properly
alias jjs='rlwrap /Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home/bin/jjs'

# Add aliases for changing java runtime
alias j6='ju 1.6'
alias j7='ju 1.7'
alias j8='ju 1.8'
alias j9='ju 1.9'

function jls
	echo "Use ´j6, j7, j8 and j9´ to conventiently switch between Java versions."
	echo "For a specific version use ´ju <version>´ where available versions are listed below:"
	/usr/libexec/java_home -V 2>&1 | grep -E "\d.\d.\d" | cut -d , -f 1 | colrm 1 4 | grep -v Home
end
      
function ju
	set JAVA_HOME (/usr/libexec/java_home -v $argv)
	set PATH $JAVA_HOME/bin $PATH
	java -version
end

set JAVA_HOME (/usr/libexec/java_home -v 1.8)
set PATH $JAVA_HOME/bin $PATH
