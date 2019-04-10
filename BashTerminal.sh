#! /usr/bin/env bash 
clear

Menu(){
  echo -e "1. Packet manager\n2. User manager\n3. Permission \n0. Exit";
  read choice
}


exit=true

while [ $exit == true ]
do
  Menu;
  case $choice in
    1) source lib/PacketManager.sh; ;;
    2) source lib/UserManager.sh; ;;
    3) source lib/Permission.sh; ;;
    0) echo "Bye!"; let exit=false; ;;
    *) echo "Wring choice!"; ;;
  esac
done