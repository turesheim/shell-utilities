#!/usr/local/bin/fish
# Wrap jjs to make keyboard navigation work properly
alias jjs='rlwrap /Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home/bin/jjs'

# Add aliases for changing java runtime
alias j6='ju 1.6'
alias j7='ju 1.7'
alias j8='ju 1.8'
alias j9='ju 1.9'

# Prints the path to JAVA_HOME
alias jh=/usr/libexec/java_home

function jls() {
	echo "Use ´j6, j7 and j8´ to conventiently switch between Java versions."
	echo "For a specific version use ´ju <version>´ where available versions are listed below:"
	/usr/libexec/java_home -V 2>&1 | grep -E "\d(.\d.\d)?" | cut -d , -f 1 | grep -v Home
}
      
function ju() {
	export JAVA_HOME=$(/usr/libexec/java_home -v $argv)
	export PATH=$JAVA_HOME/bin:$PATH
	java -version
}

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH=$JAVA_HOME/bin:$PATH
            