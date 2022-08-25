#!/bin/bash
green=`tput setaf 2`
red=`tput setaf 1`
reset=`tput sgr0`

npm run test
RESULT=$?
if [ $RESULT -ne 0 ];
then
  echo "==================="
  echo  "${red}Oh no! Revert 😩${reset}"
  git checkout src

else
  echo "==================="
  echo  "${green}🙌 Let's commit! 😎${reset}"
  git add src test
  git commit -m "Wip"
fi
