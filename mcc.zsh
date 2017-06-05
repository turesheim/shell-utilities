#!/usr/local/bin/zsh

# Utility to change Maven configuration
alias mcc='change_configuration'


function change_configuration() {

  files=( $(ls ~/.m2/*.mcc) )

  let "index = 0"
  for i in "${files[@]}"
  do
    let "index = index + 1"
    printf "%s %s\n" "$index" "$i"
  done

  read -k "REPLY?Which Maven configuration would you like to activate?"
  ln -sf ${files[$REPLY]} ~/.m2/settings.xml

}