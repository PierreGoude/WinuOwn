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
ver=$(echo WinuOwn_beta_3.0)
#Author Pierre Goude

#################################Start script and validation####################################

thesstart_fn()
{
mkdir /etc/WinuOwn/safe > /dev/null 2>&1
  if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then
while true; do
echo  "${INFOS}     WinuOwn found that you already have login files        ${END}"
echo  "${INFOS}      in WinuOwn folder, you can crack those files          ${END}"
echo  "${INFOS}           or load in new files from Windows                ${END}"
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
 mkdir /etc/WinuOwn/safe > /dev/null 2>&1
  if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then
while true; do
echo  "${INFOS}     WinuOwn found that you already have login files        ${END}"
echo  "${INFOS}      in WinuOwn folder, you can crack those files          ${END}"
echo  "${INFOS}           or load in new files from Windows               ${END}"
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
rm /etc/WinuOwn/SAM && /etc/WinuOwn/SYSTEM > /dev/null 2>&1
clear
mkdir /mnt/windows > /dev/null 2>&1
umount /mnt/windows/ > /dev/null 2>&1
echo  "${SUCCESS}  Scanning for Windows partitions  ${END}"
echo  "${BLACK}                                     ${END}"

ntfs-3g -o ro /dev/sda0 /mnt/windows > /dev/null 2>&1
if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
then
cd /mnt/windows/WINDOWS/*32/*onfig
 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
  else
  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
  then
  cd /mnt/windows/*indows/*32/*onfig/
   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
  else
   umount /mnt/windows/  > /dev/null 2>&1
  fi
fi
echo -n '=                                                  2%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
ntfs-3g -o ro /dev/sda1 /mnt/windows > /dev/null 2>&1
        if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
        then
        cd /mnt/windows/WINDOWS/*32/*onfig
         cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
         cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
         cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
         cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
         cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
         umount /mnt/windows/  > /dev/null 2>&1
          else
          if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	      then
          cd /mnt/windows/*indows/*32/*onfig/
           cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
           cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
           cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
           cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
           cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
           umount /mnt/windows/  > /dev/null 2>&1
          else
           umount /mnt/windows/   > /dev/null 2>&1
          fi
        fi

echo -n '==                                                 4%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
             ntfs-3g -o ro /dev/sda2 /mnt/windows > /dev/null 2>&1
            if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
            then
            cd /mnt/windows/WINDOWS/*32/*onfig
             cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
             cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
             cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
             cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
             cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
             umount /mnt/windows/  > /dev/null 2>&1
              else
              if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	          then
              cd /mnt/windows/*indows/*32/*onfig/
               cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
               cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
               cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
               cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
               cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
               umount /mnt/windows/  > /dev/null 2>&1
              else
               umount /mnt/windows/  > /dev/null 2>&1
              fi
            fi

echo -n '===                                                6%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                 ntfs-3g -o ro /dev/sda3 /mnt/windows > /dev/null 2>&1
                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /mnt/windows/WINDOWS/*32/*onfig
                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                 umount /mnt/windows/  > /dev/null 2>&1
                  else
                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	              then
                  cd /mnt/windows/*indows/*32/*onfig/
                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                   umount /mnt/windows/  > /dev/null 2>&1
                  else
                   umount /mnt/windows/  > /dev/null 2>&1
                  fi
                fi

echo -n '====                                               8%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                     ntfs-3g -o ro /dev/sda4 /mnt/windows > /dev/null 2>&1
                    if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                    then
                    cd /mnt/windows/WINDOWS/*32/*onfig
                     cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                     cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                     cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                     cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                     cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                     umount /mnt/windows/  > /dev/null 2>&1
                      else
                      if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                  then
                      cd /mnt/windows/*indows/*32/*onfig/
                       cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                       cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                       cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                       cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                       cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                       umount /mnt/windows/  > /dev/null 2>&1
                      else
                       umount /mnt/windows/  > /dev/null 2>&1
                      fi
                    fi

echo -n '=====                                              10%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                         ntfs-3g -o ro /dev/sda5 /mnt/windows > /dev/null 2>&1
                        if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                        then
                        cd /mnt/windows/WINDOWS/*32/*onfig
                         cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                         cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                         cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                         cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                         cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                         umount /mnt/windows/  > /dev/null 2>&1
                          else
                          if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                      then
                          cd /mnt/windows/*indows/*32/*onfig/
                           cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                           cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                           cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                           cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                           cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                           umount /mnt/windows/  > /dev/null 2>&1
                          else
                           umount /mnt/windows/  > /dev/null 2>&1
                          fi
                        fi

echo -n '======                                             12%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                             ntfs-3g -o ro /dev/sda6 /mnt/windows > /dev/null 2>&1
                            if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                            then
                            cd /mnt/windows/WINDOWS/*32/*onfig
                             cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                             cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                             cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                             cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                             cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                             umount /mnt/windows/  > /dev/null 2>&1
                              else
                              if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                          then
                              cd /mnt/windows/*indows/*32/*onfig/
                               cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                               cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                               cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                               cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                               cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                               umount /mnt/windows/  > /dev/null 2>&1
                              else
                               umount /mnt/windows/  > /dev/null 2>&1
                              fi
                            fi

echo -n '=======                                            14%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                 mount /dev/sda7 /mnt/windows/ -t ntfs -o nls=utf8,umask=0222
                                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                then
                                cd /mnt/windows/WINDOWS/*32/*onfig
                                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                 umount /mnt/windows/  > /dev/null 2>&1
                                  else
                                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                              then
                                  cd /mnt/windows/*indows/*32/*onfig/
                                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                   umount /mnt/windows/  > /dev/null 2>&1
                                  else
                                   umount /mnt/windows/  > /dev/null 2>&1
                                  fi
                                fi

echo -n '========                                           16%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                     mount /dev/sda0 /mnt/windows/ -t vfat -o umask=000
                                    if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                    then
                                    cd /mnt/windows/WINDOWS/*32/*onfig
                                     cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                     cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                     cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                     cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                     cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                     umount /mnt/windows/  > /dev/null 2>&1
                                      else
                                      if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                  then
                                      cd /mnt/windows/*indows/*32/*onfig/
                                       cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                       cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                       cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                       cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                       cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                       umount /mnt/windows/  > /dev/null 2>&1
                                      else
                                       umount /mnt/windows/  > /dev/null 2>&1
                                      fi
                                    fi
echo -n '=========                                          18%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                       mount /dev/sda0 /mnt/windows/ -t vfat -o umask=000
                                      if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                      then
                                      cd /mnt/windows/WINDOWS/*32/*onfig
                                       cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                       cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                       cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                       cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                       cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                       umount /mnt/windows/  > /dev/null 2>&1
                                        else
                                        if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                    then
                                        cd /mnt/windows/*indows/*32/*onfig/
                                         cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                         cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                         cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                         cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                         cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                         umount /mnt/windows/  > /dev/null 2>&1
                                        else
                                         umount /mnt/windows/  > /dev/null 2>&1
                                        fi
                                      fi
echo -n '==========                                         20%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                         mount /dev/sda1 /mnt/windows/ -t vfat -o umask=000
                                        if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                        then
                                        cd /mnt/windows/WINDOWS/*32/*onfig
                                         cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                         cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                         cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                         cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                         cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                         umount /mnt/windows/  > /dev/null 2>&1
                                          else
                                          if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                      then
                                          cd /mnt/windows/*indows/*32/*onfig/
                                           cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                           cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                           cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                           cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                           cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                           umount /mnt/windows/  > /dev/null 2>&1
                                          else
                                           umount /mnt/windows/  > /dev/null 2>&1
                                          fi
                                        fi

echo -n '===========                                        22%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                           mount /dev/sda2 /mnt/windows/ -t vfat -o umask=000
                                          if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                          then
                                          cd /mnt/windows/WINDOWS/*32/*onfig
                                           cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                           cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                           cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                           cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                           cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                           umount /mnt/windows/  > /dev/null 2>&1
                                            else
                                            if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                        then
                                            cd /mnt/windows/*indows/*32/*onfig/
                                             cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                             cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                             cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                             cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                             cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                             umount /mnt/windows/  > /dev/null 2>&1
                                            else
                                             umount /mnt/windows/  > /dev/null 2>&1
                                            fi
                                          fi
echo -n '============                                       24%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                             mount /dev/sda3 /mnt/windows/ -t vfat -o umask=000
                                            if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                            then
                                            cd /mnt/windows/WINDOWS/*32/*onfig
                                             cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                             cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                             cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                             cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                             cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                             umount /mnt/windows/  > /dev/null 2>&1
                                              else
                                              if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                          then
                                              cd /mnt/windows/*indows/*32/*onfig/
                                               cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                               cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                               cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                               cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                               cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                               umount /mnt/windows/  > /dev/null 2>&1
                                              else
                                               umount /mnt/windows/  > /dev/null 2>&1
                                              fi
                                            fi
echo -n '=============                                      26%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                               mount /dev/sda4 /mnt/windows/ -t vfat -o umask=000
                                              if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                              then
                                              cd /mnt/windows/WINDOWS/*32/*onfig
                                               cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                               cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                               cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                               cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                               cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                               umount /mnt/windows/  > /dev/null 2>&1
                                                else
                                                if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                            then
                                                cd /mnt/windows/*indows/*32/*onfig/
                                                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                                 umount /mnt/windows/  > /dev/null 2>&1
                                                else
                                                 umount /mnt/windows/  > /dev/null 2>&1
                                                fi
                                              fi
echo -n '==============                                     28%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                                 mount /dev/sda5 /mnt/windows/ -t vfat -o umask=000
                                                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                                then
                                                cd /mnt/windows/WINDOWS/*32/*onfig
                                                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                                 umount /mnt/windows/  > /dev/null 2>&1
                                                  else
                                                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                              then
                                                  cd /mnt/windows/*indows/*32/*onfig/
                                                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                                   umount /mnt/windows/  > /dev/null 2>&1
                                                  else
                                                   umount /mnt/windows/  > /dev/null 2>&1
                                                  fi
                                                fi
echo -n '===============                                    30%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                                   mount /dev/sda6 /mnt/windows/ -t vfat -o umask=000
                                                  if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                                  then
                                                  cd /mnt/windows/WINDOWS/*32/*onfig
                                                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                                   umount /mnt/windows/  > /dev/null 2>&1
                                                    else
                                                    if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                                then
                                                    cd /mnt/windows/*indows/*32/*onfig/
                                                     cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                                     cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                     cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                                     cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                     cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                                     umount /mnt/windows/  > /dev/null 2>&1
                                                    else
                                                     umount /mnt/windows/  > /dev/null 2>&1
                                                    fi
                                                  fi

echo -n '================                                   32%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                                     mount /dev/sda7 /mnt/windows/ -t vfat -o umask=000
                                                    if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                                    then
                                                    cd /mnt/windows/WINDOWS/*32/*onfig
                                                     cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                                     cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                     cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                                     cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                     cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                                     umount /mnt/windows/  > /dev/null 2>&1
                                                      else
                                                      if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                                  then
                                                      cd /mnt/windows/*indows/*32/*onfig/
                                                       cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                                       cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                       cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                                       cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                       cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                                       umount /mnt/windows/  > /dev/null 2>&1
                                                      else
                                                       umount /mnt/windows/  > /dev/null 2>&1
                                                      fi
                                                    fi
echo -n '==================                                 36%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
 ntfs-3g -o ro /dev/sdb0 /mnt/windows > /dev/null 2>&1
if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
then
cd /mnt/windows/WINDOWS/*32/*onfig
 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
  else
  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
  then
  cd /mnt/windows/*indows/*32/*onfig/
   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
  else
   umount /mnt/windows/  > /dev/null 2>&1
  fi
fi
echo -n '===================                                38%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
         ntfs-3g -o ro /dev/sdb1 /mnt/windows > /dev/null 2>&1
        if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
        then
        cd /mnt/windows/WINDOWS/*32/*onfig
         cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
         cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
         cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
         cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
         cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
         umount /mnt/windows/  > /dev/null 2>&1
          else
          if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	      then
          cd /mnt/windows/*indows/*32/*onfig/
           cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
           cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
           cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
           cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
           cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
           umount /mnt/windows/  > /dev/null 2>&1
          else
           umount /mnt/windows/  > /dev/null 2>&1
          fi
        fi
echo -n '====================                               40%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
             ntfs-3g -o ro /dev/sdb2 /mnt/windows > /dev/null 2>&1
            if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
            then
            cd /mnt/windows/WINDOWS/*32/*onfig
             cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
             cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
             cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
             cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
             cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
             umount /mnt/windows/  > /dev/null 2>&1
              else
              if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	          then
              cd /mnt/windows/*indows/*32/*onfig/
               cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
               cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
               cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
               cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
               cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
               umount /mnt/windows/  > /dev/null 2>&1
              else
               umount /mnt/windows/  > /dev/null 2>&1
              fi
            fi
echo -n '=====================                              42%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                 ntfs-3g -o ro /dev/sdb3 /mnt/windows > /dev/null 2>&1
                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /mnt/windows/WINDOWS/*32/*onfig
                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                 umount /mnt/windows/  > /dev/null 2>&1
                  else
                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	              then
                  cd /mnt/windows/*indows/*32/*onfig/
                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                   umount /mnt/windows/  > /dev/null 2>&1
                  else
                   umount /mnt/windows/  > /dev/null 2>&1
                  fi
                fi
echo -n '======================                             44%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                     ntfs-3g -o ro /dev/sdb4 /mnt/windows > /dev/null 2>&1
                    if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                    then
                    cd /mnt/windows/WINDOWS/*32/*onfig
                     cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                     cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                     cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                     cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                     cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                     umount /mnt/windows/  > /dev/null 2>&1
                      else
                      if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                  then
                      cd /mnt/windows/*indows/*32/*onfig/
                       cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                       cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                       cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                       cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                       cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                       umount /mnt/windows/  > /dev/null 2>&1
                      else
                       umount /mnt/windows/  > /dev/null 2>&1
                      fi
                    fi
echo -n '=======================                            46%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                         ntfs-3g -o ro /dev/sdb5 /mnt/windows > /dev/null 2>&1
                        if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                        then
                        cd /mnt/windows/WINDOWS/*32/*onfig
                         cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                         cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                         cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                         cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                         cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                         umount /mnt/windows/  > /dev/null 2>&1
                          else
                          if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                      then
                          cd /mnt/windows/*indows/*32/*onfig/
                           cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                           cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                           cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                           cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                           cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                           umount /mnt/windows/  > /dev/null 2>&1
                          else
                           umount /mnt/windows/  > /dev/null 2>&1
                          fi
                        fi
echo -n '========================                           48%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                             ntfs-3g -o ro /dev/sdb6 /mnt/windows > /dev/null 2>&1
                            if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                            then
                            cd /mnt/windows/WINDOWS/*32/*onfig
                             cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                             cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                             cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                             cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                             cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                             umount /mnt/windows/  > /dev/null 2>&1
                              else
                              if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                          then
                              cd /mnt/windows/*indows/*32/*onfig/
                               cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                               cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                               cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                               cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                               cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                               umount /mnt/windows/  > /dev/null 2>&1
                              else
                               umount /mnt/windows/  > /dev/null 2>&1
                              fi
                            fi
echo -n '=========================                          50%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                 ntfs-3g -o ro /dev/sdb7 /mnt/windows > /dev/null 2>&1
                                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                then
                                cd /mnt/windows/WINDOWS/*32/*onfig
                                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                 umount /mnt/windows/  > /dev/null 2>&1
                                  else
                                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                              then
                                  cd /mnt/windows/*indows/*32/*onfig/
                                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                   umount /mnt/windows/  > /dev/null 2>&1
                                  else
                                   umount /mnt/windows/  > /dev/null 2>&1
                                  fi
                                fi
echo -n '==========================                         52%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                     mount /dev/sdb0 /mnt/windows/ -t vfat -o umask=000
                                    if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                    then
                                    cd /mnt/windows/WINDOWS/*32/*onfig
                                     cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                     cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                     cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                     cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                     cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                     umount /mnt/windows/  > /dev/null 2>&1
                                      else
                                      if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                  then
                                      cd /mnt/windows/*indows/*32/*onfig/
                                       cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                       cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                       cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                       cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                       cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                       umount /mnt/windows/  > /dev/null 2>&1
                                      else
                                       umount /mnt/windows/  > /dev/null 2>&1
                                      fi
                                    fi
echo -n '===========================                        51%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                       mount /dev/sdb0 /mnt/windows/ -t vfat -o umask=000
                                      if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                      then
                                      cd /mnt/windows/WINDOWS/*32/*onfig
                                       cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                       cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                       cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                       cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                       cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                       umount /mnt/windows/  > /dev/null 2>&1
                                        else
                                        if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                    then
                                        cd /mnt/windows/*indows/*32/*onfig/
                                         cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                         cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                         cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                         cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                         cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                         umount /mnt/windows/  > /dev/null 2>&1
                                        else
                                         umount /mnt/windows/  > /dev/null 2>&1
                                        fi
                                      fi
echo -n '============================                       56%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                         mount /dev/sdb1 /mnt/windows/ -t vfat -o umask=000
                                        if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                        then
                                        cd /mnt/windows/WINDOWS/*32/*onfig
                                         cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                         cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                         cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                         cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                         cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                         umount /mnt/windows/  > /dev/null 2>&1
                                          else
                                          if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                      then
                                          cd /mnt/windows/*indows/*32/*onfig/
                                           cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                           cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                           cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                           cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                           cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                           umount /mnt/windows/  > /dev/null 2>&1
                                          else
                                           umount /mnt/windows/  > /dev/null 2>&1
                                          fi
                                        fi
echo -n '=============================                      58%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                           mount /dev/sdb2 /mnt/windows/ -t vfat -o umask=000
                                          if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                          then
                                          cd /mnt/windows/WINDOWS/*32/*onfig
                                           cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                           cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                           cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                           cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                           cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                           umount /mnt/windows/  > /dev/null 2>&1
                                            else
                                            if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                        then
                                            cd /mnt/windows/*indows/*32/*onfig/
                                             cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                             cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                             cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                             cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                             cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                             umount /mnt/windows/  > /dev/null 2>&1
                                            else
                                             umount /mnt/windows/  > /dev/null 2>&1
                                            fi
                                          fi
echo -n '==============================                     60%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                             mount /dev/sdb3 /mnt/windows/ -t vfat -o umask=000
                                            if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                            then
                                            cd /mnt/windows/WINDOWS/*32/*onfig
                                             cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                             cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                             cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                             cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                             cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                             umount /mnt/windows/  > /dev/null 2>&1
                                              else
                                              if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                          then
                                              cd /mnt/windows/*indows/*32/*onfig/
                                               cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                               cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                               cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                               cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                               cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                               umount /mnt/windows/  > /dev/null 2>&1
                                              else
                                               umount /mnt/windows/  > /dev/null 2>&1
                                              fi
                                            fi
echo -n '===============================                    62%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                               mount /dev/sdb4 /mnt/windows/ -t vfat -o umask=000
                                              if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                              then
                                              cd /mnt/windows/WINDOWS/*32/*onfig
                                               cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                               cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                               cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                               cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                               cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                               umount /mnt/windows/  > /dev/null 2>&1
                                                else
                                                if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                            then
                                                cd /mnt/windows/*indows/*32/*onfig/
                                                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                                 umount /mnt/windows/  > /dev/null 2>&1
                                                else
                                                 umount /mnt/windows/  > /dev/null 2>&1
                                                fi
                                              fi
echo -n '================================                   64%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                                 mount /dev/sdb5 /mnt/windows/ -t vfat -o umask=000
                                                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                                then
                                                cd /mnt/windows/WINDOWS/*32/*onfig
                                                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                                 umount /mnt/windows/  > /dev/null 2>&1
                                                  else
                                                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                              then
                                                  cd /mnt/windows/*indows/*32/*onfig/
                                                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                                   umount /mnt/windows/  > /dev/null 2>&1
                                                  else
                                                   umount /mnt/windows/  > /dev/null 2>&1
                                                  fi
                                                fi
echo -n '=================================                  66%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                                   mount /dev/sdb6 /mnt/windows/ -t vfat -o umask=000
                                                  if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                                  then
                                                  cd /mnt/windows/WINDOWS/*32/*onfig
                                                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                                   umount /mnt/windows/  > /dev/null 2>&1
                                                    else
                                                    if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                                then
                                                    cd /mnt/windows/*indows/*32/*onfig/
                                                     cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                                     cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                     cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                                     cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                     cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                                     umount /mnt/windows/  > /dev/null 2>&1
                                                    else
                                                     umount /mnt/windows/  > /dev/null 2>&1
                                                    fi
                                                  fi
echo -n '==================================                 68%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                                                     mount /dev/sdb7 /mnt/windows/ -t vfat -o umask=000
                                                    if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                                                    then
                                                    cd /mnt/windows/WINDOWS/*32/*onfig
                                                     cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                                     cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                     cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                                     cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                     cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                                     umount /mnt/windows/  > /dev/null 2>&1
                                                      else
                                                      if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	                                                  then
                                                      cd /mnt/windows/*indows/*32/*onfig/
                                                       cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                                                       cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                       cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                                                       cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                                                       cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                                                       umount /mnt/windows/  > /dev/null 2>&1
                                                      else
                                                       umount /mnt/windows/  > /dev/null 2>&1
                                                      fi
                                                    fi
echo -n '===================================                70%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
 mount /dev/sda8 /mnt/windows/ -t ntfs -o nls=utf8,umask=0222
if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
then
cd /mnt/windows/WINDOWS/*32/*onfig
 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
  else
  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
  then
  cd /mnt/windows/*indows/*32/*onfig/
   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
  else
   umount /mnt/windows/  > /dev/null 2>&1
  fi
fi
echo -n '====================================               72%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
         mount /dev/sda9 /mnt/windows/ -t ntfs -o nls=utf8,umask=0222
        if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
        then
        cd /mnt/windows/WINDOWS/*32/*onfig
         cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
         cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
         cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
         cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
         cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
         umount /mnt/windows/  > /dev/null 2>&1
          else
          if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	      then
          cd /mnt/windows/*indows/*32/*onfig/
           cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
           cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
           cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
           cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
           cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
           umount /mnt/windows/  > /dev/null 2>&1
          else
           umount /mnt/windows/  > /dev/null 2>&1
          fi
        fi
echo -n '=====================================              74%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
             ntfs-3g -o ro /dev/sdb8 /mnt/windows > /dev/null 2>&1
            if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
            then
            cd /mnt/windows/WINDOWS/*32/*onfig
             cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
             cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
             cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
             cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
             cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
             umount /mnt/windows/  > /dev/null 2>&1
              else
              if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	          then
              cd /mnt/windows/*indows/*32/*onfig/
               cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
               cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
               cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
               cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
               cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
               umount /mnt/windows/  > /dev/null 2>&1
              else
               umount /mnt/windows/  > /dev/null 2>&1
              fi
            fi
echo -n '======================================             76%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                 ntfs-3g -o ro /dev/sdb9 /mnt/windows > /dev/null 2>&1
                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /mnt/windows/WINDOWS/*32/*onfig
                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                 umount /mnt/windows/  > /dev/null 2>&1
                  else
                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	              then
                  cd /mnt/windows/*indows/*32/*onfig/
                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                   umount /mnt/windows/  > /dev/null 2>&1
                  else
                   umount /mnt/windows/  > /dev/null 2>&1
                  fi
                fi
echo -n '=======================================            78%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                 ntfs-3g -o ro /dev/sdc1 /mnt/windows > /dev/null 2>&1
                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /mnt/windows/WINDOWS/*32/*onfig
                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                 umount /mnt/windows/  > /dev/null 2>&1
                  else
                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	              then
                  cd /mnt/windows/*indows/*32/*onfig/
                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                   umount /mnt/windows/  > /dev/null 2>&1
                  else
                   umount /mnt/windows/  > /dev/null 2>&1
                  fi
                fi
echo -n '========================================           80%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                 ntfs-3g -o ro /dev/sdc2 /mnt/windows > /dev/null 2>&1
                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /mnt/windows/WINDOWS/*32/*onfig
                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                 umount /mnt/windows/  > /dev/null 2>&1
                  else
                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	              then
                  cd /mnt/windows/*indows/*32/*onfig/
                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                   umount /mnt/windows/  > /dev/null 2>&1
                  else
                   umount /mnt/windows/  > /dev/null 2>&1
                  fi
                fi
echo -n '=========================================          82%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                 ntfs-3g -o ro /dev/sdc3 /mnt/windows > /dev/null 2>&1
                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /mnt/windows/WINDOWS/*32/*onfig
                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                 umount /mnt/windows/  > /dev/null 2>&1
                  else
                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	              then
                  cd /mnt/windows/*indows/*32/*onfig/
                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                   umount /mnt/windows/  > /dev/null 2>&1
                  else
                   umount /mnt/windows/  > /dev/null 2>&1
                  fi
                fi
echo -n '==========================================         84%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                 ntfs-3g -o ro /dev/sdc4 /mnt/windows > /dev/null 2>&1
                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /mnt/windows/WINDOWS/*32/*onfig
                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                 umount /mnt/windows/  > /dev/null 2>&1
                  else
                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	              then
                  cd /mnt/windows/*indows/*32/*onfig/
                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                   umount /mnt/windows/  > /dev/null 2>&1
                  else
                   umount /mnt/windows/  > /dev/null 2>&1
                  fi
                fi
echo -n '===========================================        86%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                 ntfs-3g -o ro /dev/sdc5 /mnt/windows > /dev/null 2>&1
                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /mnt/windows/WINDOWS/*32/*onfig
                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                 umount /mnt/windows/  > /dev/null 2>&1
                  else
                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	              then
                  cd /mnt/windows/*indows/*32/*onfig/
                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                   umount /mnt/windows/  > /dev/null 2>&1
                  else
                   umount /mnt/windows/  > /dev/null 2>&1
                  fi
                fi
echo -n '============================================       88%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                 ntfs-3g -o ro /dev/sdc6 /mnt/windows > /dev/null 2>&1
                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /mnt/windows/WINDOWS/*32/*onfig
                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                 umount /mnt/windows/  > /dev/null 2>&1
                  else
                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	              then
                  cd /mnt/windows/*indows/*32/*onfig/
                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                   umount /mnt/windows/  > /dev/null 2>&1
                  else
                   umount /mnt/windows/  > /dev/null 2>&1
                  fi
                fi
echo -n '=============================================      90%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                 ntfs-3g -o ro /dev/sdc7 /mnt/windows > /dev/null 2>&1
                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /mnt/windows/WINDOWS/*32/*onfig
                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                 umount /mnt/windows/  > /dev/null 2>&1
                  else
                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	              then
                  cd /mnt/windows/*indows/*32/*onfig/
                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                   umount /mnt/windows/  > /dev/null 2>&1
                  else
                   umount /mnt/windows/  > /dev/null 2>&1
                  fi
                fi
echo -n '==============================================     92%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                 ntfs-3g -o ro /dev/sdd1 /mnt/windows > /dev/null 2>&1
                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /mnt/windows/WINDOWS/*32/*onfig
                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                 umount /mnt/windows/  > /dev/null 2>&1
                  else
                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	              then
                  cd /mnt/windows/*indows/*32/*onfig/
                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                   umount /mnt/windows/  > /dev/null 2>&1
                  else
                   umount /mnt/windows/  > /dev/null 2>&1
                  fi
                fi
echo -n '================================================   96%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                 ntfs-3g -o ro /dev/sdd2 /mnt/windows > /dev/null 2>&1
                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /mnt/windows/WINDOWS/*32/*onfig
                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                 umount /mnt/windows/  > /dev/null 2>&1
                  else
                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	              then
                  cd /mnt/windows/*indows/*32/*onfig/
                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                   umount /mnt/windows/  > /dev/null 2>&1
                  else
                   umount /mnt/windows/  > /dev/null 2>&1
                  fi
                fi
echo -n '=================================================  98%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                 ntfs-3g -o ro /dev/sdd3 /mnt/windows > /dev/null 2>&1
                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /mnt/windows/WINDOWS/*32/*onfig
                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                 umount /mnt/windows/  > /dev/null 2>&1
                  else
                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	              then
                  cd /mnt/windows/*indows/*32/*onfig/
                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                   umount /mnt/windows/  > /dev/null 2>&1
                  else
                   umount /mnt/windows/  > /dev/null 2>&1
                  fi
                fi
echo -n '================================================== 100%\r'

if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
fi
                 ntfs-3g -o ro /dev/sdd4 /mnt/windows > /dev/null 2>&1
                if  [ -d /mnt/windows/WINDOWS/*32/*onfig/ ];
                then
                cd /mnt/windows/WINDOWS/*32/*onfig
                 cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                 cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                 cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                 umount /mnt/windows/  > /dev/null 2>&1
                  else
                  if [ -d /mnt/windows/*indows/*32/*onfig/ ];
	              then
                  cd /mnt/windows/*indows/*32/*onfig/
                   cp SAM /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp SYSTEM /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp sam /etc/WinuOwn/SAM > /dev/null 2>&1
                   cp system /etc/WinuOwn/SYSTEM > /dev/null 2>&1
                   cp System /etc/WinuOwn/SYSTEM  > /dev/null 2>&1
                   umount /mnt/windows/  > /dev/null 2>&1
                  else
                   umount /mnt/windows/  > /dev/null 2>&1
                  fi
                fi
if  [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ] ; then
filecontroll
else
clear
echo  "${WARNING} WinuOwn cannot find Windows partition please   ${END}"
echo  "${WARNING} check that you are on a PC that have Windows   ${END}"
sleep 5
echo  "${WARP} Going back to menu   ${END}"
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
echo  "${SUCCESS}                                                            ${END}"
echo  "${SUCCESS}      Windows partition was found and files are loaded      ${END}"
echo  "${SUCCESS}                                                            ${END}"
sleep 1
accounts_fn
else
while true; do
   read -p 'I see no Windows partition in there... do you wish to try again?? (y/n)?' yn
   case $yn in
    [Yy]* ) manually_fn
            break;;
    [Nn]* ) echo "Exiting" $ver
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
echo  "${SUCCESS}                                                            ${END}"
echo  "${SUCCESS}      Windows partition was found and files are loaded      ${END}"
echo  "${SUCCESS}                                                            ${END}"
   read -p 'Do you want to start John the ripper? (y/n)?' yn
   case $yn in
    [Yy]* ) accounts_fn
            break;;
    [Nn]* ) echo  "${INFOS}   Files are now stored in WinuOwn-folder for later cracking           ${END}"
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
echo  "${SUCCESS}                                                            ${END}"
echo  "${SUCCESS}      Windows partition was found and files are loaded      ${END}"
echo  "${SUCCESS}                                                            ${END}"
   read -p 'Do you want to start John the ripper? (y/n)?' yn
   case $yn in
    [Yy]* ) accounts_fn
            break;;
    [Nn]* ) echo  "${INFOS}   Files are now stored in WinuOwn-folder for later cracking           ${END}"
            sleep 4
            clear
            show_menu
            break;;
    * ) echo 'Please answer yes or no.';;
   esac
done
else
echo  "${INFOS}   Windows partition is hard to find.. Enabling deepscan    ${END}"
sleep 2
mount3_fn
fi
}

controll2_fn()
{
if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then
while true; do
echo  "${SUCCESS}                                                            ${END}"
echo  "${SUCCESS}      Windows partition was found and files are loaded      ${END}"
echo  "${SUCCESS}                                                            ${END}"
   read -p 'Do you want to start John the ripper? (y/n)?' yn
   case $yn in
    [Yy]* ) accounts_fn
            break;;
    [Nn]* ) echo  "${INFOS}   Files are now stored in WinuOwn-folder for later cracking           ${END}"
            sleep 4
            clear
            show_menu
            break;;
    * ) echo 'Please answer yes or no.';;
   esac
done
else
echo  "${INFOS}   Windows partition is hard to find.. scanning for fat32 partitions    ${END}"
sleep 2
mount4_fn
fi
}

controll3_fn()
{
if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then
while true; do
echo  "${SUCCESS}                                                            ${END}"
echo  "${SUCCESS}      Windows partition was found and files are loaded      ${END}"
echo  "${SUCCESS}                                                            ${END}"
   read -p 'Do you want to start John the ripper? (y/n)?' yn
   case $yn in
    [Yy]* ) accounts_fn
            break;;
    [Nn]* ) echo  "${INFOS}   Files are now stored in WinuOwn-folder for later cracking           ${END}"
            sleep 4
            clear
            show_menu
            break;;
    * ) echo 'Please answer yes or no.';;
   esac
done
else

echo  "${WARNING}                (example of partition is sda2 or sdb1)                 ${END}"
manually_fn
fi
}

####################################file control etc#############################################

controll_fn()
{
clear
if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then
while true; do
echo  "${SUCCESS}                                                            ${END}"
echo  "${SUCCESS}      Windows partition was found and files are loaded      ${END}"
echo  "${SUCCESS}                                                            ${END}"
   read -p 'Do you want to start John the ripper? (y/n)?' yn
   case $yn in
    [Yy]* ) clear
            accounts_fn
            break;;
    [Nn]* ) echo  "${INFOS}   Files are now stored in WinuOwn-folder for later cracking           ${END}"
            sleep 4
            clear
            show_menu
            break;;
    * ) echo 'Please answer yes or no.';;
   esac
done
else
echo  "${INFOS}   Windows partition is hard to find.. Enabling deepscan    ${END}"
sleep 2
mount3_fn
fi
}
controlletc_fn()
{
if [ -f /etc/WinuOwn/SYSTEM ] && [ -f /etc/WinuOwn/SAM ]
then
while true; do
echo  "${SUCCESS}                                                            ${END}"
echo  "${SUCCESS}      Windows partition was found and files are loaded      ${END}"
echo  "${SUCCESS}                                                            ${END}"
   read -p 'Do you want to start John the ripper? (y/n)?' yn
   case $yn in
    [Yy]* ) accounts_fn
            break;;
    [Nn]* ) echo  "${INFOS}   Files are now stored in WinuOwn-folder for later cracking           ${END}"
            sleep 4
            clear
            show_menu
            break;;
    * ) echo 'Please answer yes or no.';;
   esac
done
else
echo  "${INFOS}   Windows partition is hard to find.. Enabling deepscan    ${END}"
sleep 2
mount3_fn
fi
}


#######################################crackings#####################################################

accounts_fn()
{
while true; do
echo  "${INFOS}                                                            ${END}"
echo  "${INFOS}Do you wish to crack all accounts or target a specific user?${END}"
echo  "${INFOS}                                                            ${END}"
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
echo  "${INFOS}                                                            ${END}"
echo  "${INFOS}Do you wish to crack all accounts or target a specific user?${END}"
echo  "${INFOS}                                                            ${END}"
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
echo  "${BLACK}                                                                   ${END}"
echo  "${INFOS}                                                            ${END}"
echo  "${INFOS}                                                            ${END}"
echo  "${INFOS}               prepearing john the ripper                   ${END}"
echo  "${INFOS}                                                            ${END}"
echo  "${INFOS}                                                            ${END}"
echo  "${BLACK}                                                                   ${END}"

cd /etc/WinuOwn
bkhive SYSTEM bootkey
sleep 1
samdump2 SAM bootkey > /etc/WinuOwn/hash.txt
cd /root/.john/
if [ -d /root/.john/potbackup ]
then
mv john.pot /root/.john/potbackup/john.pot
else
mkdir /root/.john/potbackup/
cat john.pot >> johnbackup.pot
mv john.pot /root/.john/potbackup/john.pot
fi

clear
echo  "${INFOS}listing users....${END}"
cat /etc/WinuOwn/hash.txt
echo  "${SUCCESS}please type in witch user you wish to crack${END}"
read User
clear
echo  "${INFOS}             Starting John the ripper                   ${END}"
sleep 2
clear
echo  "${WARP}  Cracking....${END}"
sleep 1
john /etc/WinuOwn/hash.txt --session=prehash --format=nt -users:$User > /etc/WinuOwn/tmp.txt
clear
echo  "${SUCCESS} Passwords       Accounts ${END}"
echo  "${BLACK}  "${SUCCESS}v${END}  ---------------${END} "${SUCCESS}v${END}"
echo  "${BLACK}  "${SUCCESS}v${END}  ---------------${END} "${SUCCESS}v${END}"
sed '1d' /etc/WinuOwn/tmp.txt
cat john.pot >> johnbackup.pot
echo  "${BLACK}                                                                 ${END}"
echo  "${SUCCESS}                  WinuOwn is done cracking now                    ${END}"
   read -p 'Go back to menu? (y/n)?' yn
   case $yn in
    [Yy]* ) echo  "${WARP}                 Going back to menu                              ${END}"
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
echo  "${INFOS}             Starting John the ripper                   ${END}"
sleep 2
else
mkdir /root/.john/potbackup/
mv john.pot /root/.john/potbackup/john.pot
clear
echo  "${INFOS}             Starting John the ripper                   ${END}"
sleep 2
fi
clear
echo  "${WARP}  Cracking....${END}"
sleep 1
echo  "${SUCCESS} Passwords       Accounts ${END}"
echo  "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}"
echo  "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}"
john /etc/WinuOwn/hash.txt --session=prehash --format=nt
cat john.pot >> johnbackup.pot
echo  "${BLACK}                                                                 ${END}"
echo  "${SUCCESS}                  WinuOwn is done cracking now                    ${END}"
   read -p 'Go back to menu? (y/n)?' yn
   case $yn in
    [Yy]* ) echo  "${WARP}                 Going back to menu                              ${END}"
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
echo  "${BLACK}                                                                   ${END}"
echo  "${INFOS}                                                            ${END}"
echo  "${INFOS}                                                            ${END}"
echo  "${INFOS}               prepearing john the ripper                   ${END}"
echo  "${INFOS}                                                            ${END}"
echo  "${INFOS}                                                            ${END}"
echo  "${BLACK}                                                                   ${END}"

 cp /etc/john/run/password.lst /etc/john/password.lst
cd /etc/WinuOwn
 bkhive SYSTEM bootkey
sleep 1
samdump2 SAM bootkey >/etc/WinuOwn/hash.txt
cd /usr/share/john/
if [ -d /usr/share/john/potbackup ]
then
 mv john.pot /usr/share/john/potbackup/john.pot
else
 mkdir /usr/share/john/potbackup/
cat john.pot >> johnbackup.pot
 mv john.pot /usr/share/john/potbackup/john.pot
fi

clear
echo  "${INFOS}listing users....${END}"
cat /etc/WinuOwn/hash.txt
echo  "${SUCCESS}please type in witch user you wish to crack${END}"
read User
clear
echo  "${INFOS}             Starting John the ripper                   ${END}"
sleep 2
clear
echo  "${WARP}  Cracking..ETC..${END}"
sleep 1
echo  "${SUCCESS} Passwords       Accounts ${END}"
echo  "${BLACK}  "${SUCCESS}v${END}  ---------------${END} "${SUCCESS}v${END}"
echo  "${BLACK}  "${SUCCESS}v${END}  ---------------${END} "${SUCCESS}v${END}"
cd /etc/john
 chmod +x john.log
john /etc/WinuOwn/hash.txt --incremental --format=LM -users:$User
echo  "${BLACK}                                                                 ${END}"
echo  "${SUCCESS}                  WinuOwn is done cracking now                    ${END}"
   read -p 'Go back to menu? (y/n)?' yn
   case $yn in
    [Yy]* ) echo  "${WARP}                 Going back to menu                              ${END}"
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
echo  "${INFOS}             Starting John the ripper                   ${END}"
sleep 2
else
mkdir /etc/john/potbackup/
mv john.pot /etc/john/potbackup/john.pot
clear
echo  "${INFOS}             Starting John the ripper                   ${END}"
sleep 2
fi
clear
echo  "${WARP}  Cracking....${END}"
sleep 1
echo  "${SUCCESS} Passwords       Accounts ${END}"
echo  "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}"
echo  "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}"
cd /etc/john
 chmod +x john.log
john /etc/WinuOwn/hash.txt --incremental --format=LM
echo  "${BLACK}                                                                 ${END}"
echo  "${SUCCESS}                  WinuOwn is done cracking now                    ${END}"
   read -p 'Go back to menu? (y/n)?' yn
   case $yn in
    [Yy]* ) echo  "${WARP}                 Going back to menu                              ${END}"
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
rm /etc/WinuOwn/SAM
rm /etc/WinuOwn/SYSTEM
rm /etc/WinuOwn/hash.txt
rm /etc/WinuOwn/bootkey
echo  "${SUCCESS}  Files are now removed  ${END}"
sleep 2
clear
show_menu
else
echo  "${WARNING}  No Windows-login files are in WinuOwn-folder  ${END}"
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
rm /etc/WinuOwn/SAM
rm /etc/WinuOwn/SYSTEM
rm /etc/WinuOwn/hash.txt
rm /etc/WinuOwn/bootkey
echo  "${SUCCESS}  Files are now removed  ${END}"
sleep 2
clear
show_etcmenu
else
echo  "${WARNING}  No Windows-login files are in WinuOwn-folder  ${END}"
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
echo  "${WARNING}No passwords stored${END}"
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
echo  "${WARNING}No passwords stored${END}"
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
echo  "${SUCCESS} Passwords       Accounts ${END}"
echo  "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}"
echo  "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}"
john --restore=prehash
echo  "${BLACK}                                                                 ${END}"
echo  "${SUCCESS}                  WinuOwn is done cracking now                    ${END}"
   read -p 'Go back to menu? (y/n)?' yn
   case $yn in
    [Yy]* ) echo  "${WARP}                 Going back to menu                              ${END}"
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
echo  "${WARNING} No previous sessions stored ${END}"
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
echo  "${SUCCESS} Passwords       Accounts ${END}"
echo  "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}"
echo  "${SUCCESS}   v ${END}"  -------------${END} "${SUCCESS}v${END}"
john --restore=prehash
echo  "${BLACK}                                                                 ${END}"
echo  "${SUCCESS}                  WinuOwn is done cracking now                    ${END}"
   read -p 'Go back to menu? (y/n)?' yn
   case $yn in
    [Yy]* ) echo  "${WARP}                 Going back to menu                              ${END}"
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
echo  "${WARNING} No previous sessions stored ${END}"
sleep 2
clear
fi
show_etcmenu
}

###########################################installation##############################################

installation1_fn()
{
if [ -d /etc/john ]
then
echo""
else
echo " I might be a program... but im not totaly retarded you know.. !"
sleep 4
clear
show_install
fi
echo
mkdir /etc/WinuOwn
mkdir /etc/WinuOwn/safe > /dev/null 2>&1
if [ -d /etc/WinuOwn ]
then
echo  "${NORMAL}        WinuOwn is now installed                        ${NORMAL}"
sleep 3
echo "Going to menu"
sleep 2
clear
newworld_fn
else
echo  "${WARNING}Something went wrong and WinuOwn was not installed ${END}"
sleep 4
echo  "${WARNING}                     Bye Bye                           ${END}"
sleep 3
exit
fi
}

installation2_fn()
{
if [ -d /etc/john ]
then
echo " I might be a program... but im not totaly retarded you know.. !"
sleep 4
clear
show_install
else
echo ""
fi
 mkdir /etc/WinuOwn
 mkdir /etc/WinuOwn/safe > /dev/null 2>&1
if [ -d /etc/WinuOwn ]
then
echo  "${WARP}                   WinuOwn is now installed                                ${END}"
sleep 3
echo "You will need install John the ripper"
echo "jumbo packege to make WinuOwn work."
sleep 7
  if [[ ! -x /etc/john ]];then
  echo  "$warn\nNeed to install john the ripper"
  sleep 1
  echo  "$q\nDo you want to do it now? (y/n)"
  read var
    if [[ $var == y ]];then
     apt-get install john
    else
    echo""
    fi
  fi
      if [[ ! -x /etc/bkhive ]];then
      echo  "$warn\nNeed to install bkhive"
      sleep 1
      echo  "$q\nDo you want to do it now? (y/n)"
      read var
        if [[ $var == y ]];then
         apt-get install bkhive
        else
        echo""
        fi
      fi
    	  if [[ ! -x /etc/samdump2 ]];then
      echo  "$warn\nNeed to install samdump2"
      sleep 1
      echo  "$q\nDo you want to do it now? (y/n)"
      read var
            if [[ $var == y ]];then
         apt-get install samdump2
        clear
        show_etcmenu
        else
        clear
        show_etcmenu
            fi
          fi

else
echo  "${WARNING}Something went wrong and WinuOwn was not installed ${END}"
sleep 4
echo  "${WARNING}                     Bye Bye                           ${END}"
sleep 2
exit
fi
clear
show_etcmenu
}

installation3_fn()
{
echo  "${SUCCESS}  Remember.. in order to make WinuOwn work in Fedora   ${END}"
echo  "${SUCCESS}   it needs to be executed in Root, if installation    ${END}"
echo  "${SUCCESS}   fails try to login as root and install again        ${END}"
sleep 6
 mkdir /etc/WinuOwn
 mkdir /etc/WinuOwn/safe > /dev/null 2>&1
if [ -d /etc/WinuOwn ]
then
echo  "${WARP}                   WinuOwn is now installed                                ${END}"
sleep 3
  if [[ ! -x /usr/share/john ]];then
  echo  "$warn\nNeed to install john the ripper"
  sleep 1
  echo  "$q\nDo you want to do it now? (y/n)"
  read var
    if [[ $var == y ]];then
     yum install john
    else
    echo""
    fi
  fi
      if [[ ! -x /usr/bin/bkhive ]];then
      echo  "$warn\nNeed to install john the ripper"
      sleep 1
      echo  "$q\nDo you want to do it now? (y/n)"
      read var
        if [[ $var == y ]];then
         yum install bkhive
        else
        echo""
        fi
      fi
    	  if [[ ! -x /usr/bin/samdump2 ]];then
      echo  "$warn\nNeed to install samdump2"
      sleep 1
      echo  "$q\nDo you want to do it now? (y/n)"
      read var
            if [[ $var == y ]];then
         yum install samdump2
        clear
        show_etcmenu
        else
        clear
        show_etcmenu
            fi
          fi

else
echo  "${WARNING}Something went wrong and WinuOwn was not installed ${END}"
sleep 4
echo  "${WARNING}                     Bye Bye                           ${END}"
sleep 2
exit
fi
clear
show_etcmenu
}

##############################################Installation_options###################################################
show_install()
{
    echo  "${INTRO_TEXT}            Welcome to WinuOwn installation                   ${INTRO_TEXT}"
    echo  "${INTRO_TEXT} Please select the system you wish to install WinuOwn to  ${INTRO_TEXT}"
    echo  "${NORMAL}                                                              ${NORMAL}"
    echo  "${MENU}*************************WinuOwn*By*Webbhatt******************${NORMAL}"
    echo  "${NORMAL}                                                    ${NORMAL}"
    echo  "${MENU}*${NUMBER} 1)${MENU} Install to Kali Linux ${NORMAL}"
    echo  "${MENU}*${NUMBER} 2)${MENU} Install to Ubuntu ,unfinished build, for developers only. ${NORMAL}"
    echo  "${NORMAL}                                                    ${NORMAL}"
    echo  "${MENU}*************************WinuOwn*By*Webbhatt******************${NORMAL}"
    echo  "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${NORMAL}"
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
    echo  "${INTRO_TEXT} WinuOwn is a Windows passwords recovery tool    ${INTRO_TEXT}"
    echo  "${INTRO_TEXT}created for Kali linux by Pierre from Webbhatt  ${INTRO_TEXT}"
    echo  "${NORMAL}                                                    ${NORMAL}"
    echo  "${MENU}*****************WinuOwn*By*Webbhatt**************${NORMAL}"
    echo  "${NORMAL}                                                    ${NORMAL}"
    echo  "${MENU}*${NUMBER} 1)${MENU} Recover Windows login ${NORMAL}"
    echo  "${MENU}*${NUMBER} 2)${MENU} Remove saved Windows logins in WinuOwn-folder ${NORMAL}"
    echo  "${MENU}*${NUMBER} 3)${MENU} Restore previous session  ${NORMAL}"
    echo  "${MENU}*${NUMBER} 4)${MENU} Show cracked passwords ${NORMAL}"
    echo  "${NORMAL}                                                    ${NORMAL}"
    echo  "${MENU}*****************WinuOwn*By*Webbhatt**************${NORMAL}"
    echo  "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${NORMAL}"
    read opt
    while [ opt != '' ]
    do
    if [ $opt = "" ]; then
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
option_picked() {
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE=${@:-"${RESET}Error: No message passed"}
    echo  "${COLOR}${MESSAGE}${RESET}"
}
clear
####################################menu_for_etc###########################################################
show_etcmenu(){
    echo  "${INTRO_TEXT} WinuOwn is a Windows passwords recovery tool    ${INTRO_TEXT}"
    echo  "${INTRO_TEXT}created for Kali linux by Pierre from Webbhatt  ${INTRO_TEXT}"
    echo  "${NORMAL}                                                    ${NORMAL}"
    echo  "${MENU}*****************WinuOwn*By*Webbhatt**************${NORMAL}"
    echo  "${NORMAL}                                                    ${NORMAL}"
    echo  "${MENU}*${NUMBER} 1)${MENU} Recover Windows login ${NORMAL}"
    echo  "${MENU}*${NUMBER} 2)${MENU} Remove saved Windows logins in WinuOwn-folder ${NORMAL}"
    echo  "${MENU}*${NUMBER} 3)${MENU} Restore previous session  ${NORMAL}"
    echo  "${MENU}*${NUMBER} 4)${MENU} Show cracked passwords ${NORMAL}"
    echo  "${NORMAL}                                                    ${NORMAL}"
    echo  "${MENU}*****************WinuOwn*By*Webbhatt**************${NORMAL}"
    echo  "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${NORMAL}"
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
option_picked() {
    COLOR='\033[01;31m' # bold red
    RESET='\033[00;00m' # normal white
    MESSAGE=${@:-"${RESET}Error: No message passed"}
    echo  "${COLOR}${MESSAGE}${RESET}"
}

#########################################pre-install##############################################

newworld_fn()
{

if [ -d /etc/WinuOwn ]
then
 if [ -d /etc/john ]
 then
 show_menu
 else
 echo "null"
 #show_etcmenu
 fi
else
echo  "${INFOS}                                                                           ${END}"
echo  "${INFOS}  This script is written by Pierre a.k.a Linoge, admin of Webbhatt         ${END}"
echo  "${INFOS}                                                                           ${END}"
echo  "${INFOS}                                                                           ${END}"
echo  "${INFOS}  WinuOwn will create WinuOwn-folder in /etc/ were files will be saved     ${END}"
echo  "${INFOS}           and if if necessary ask to install other programs               ${END}"
echo  "${INFOS}                                                                           ${END}"
echo  "${WARNING}    Disclaimer: This script is intended for use only for private study     ${END}"
echo  "${WARNING} or during an authorised recovery, The author bears no responsibility      ${END}"
echo  "${WARNING}                  for malicious or illegal use.                            ${END}"
echo  "${WARNING}                 Skiddies should look elsewhere.                           ${END}"
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
echo  "${INFOS} You have an old version of WinuOwn installed on this device (WinPwn) ${END}"
read -p 'Would you like me to delete the old folder and all the data (y/n)?' yn
   case $yn in
    [Yy]* ) rm -rf /root/.Winpwn
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
