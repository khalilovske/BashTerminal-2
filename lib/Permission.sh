#!/bin/bash

PERChmodMenu(){

  echo -e "1 - exit\n2 - change owner\n3 - change rights\n4 - see edit"

}

PERchangeOwner(){

  echo -e "Please enter path to file or directory:"
  read path;
  
  echo -e "Please enter user:"
  read user;
  
  echo -e "Please enter group:"
  read group;
  
  chown $user:$group -R $path
}

PERseeEdit(){

  echo -e "Please enter path to file or directory:"
  read path;
  
  ls -l $path
}


PERchangeRights(){

  echo -e "Please enter path to file or directory:"
  read path;
  
  echo -e "Change for:\n<u> - user\n<g> - group\n<o> - other"
  read change;
  
  echo -e "Please enter action:\n<+> - add\n<-> - reset"
  read action;
  
  echo -e "Please enter access"
  read access;
  
  chmod $change$action$access -R $path
  
}
  
  clear
  
  start2=1;
  while ((start2 == 1));
  do
    
    PERChmodMenu;
    
    read action;
    
    case $action in 
      1) start2=0;;
      2) PERchangeOwner;;
      3) PERchangeRights;;
      4) PERseeEdit;;
    esac
  
  done