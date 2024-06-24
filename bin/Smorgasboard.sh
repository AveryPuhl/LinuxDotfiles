#! /bin/bash
clear
echo -e "\e[36m \e[40m          -- Avery Puhl's Archlinux Desktop Installer --          \e[0m"
echo -e "\e[33m \e[40m [Important Note]: Every pacman uses the flags: -S --needed --noconfirm \e[0m"
echo -e "Thanks for using my script! Hopefully this will speed up the setup process!"
echo "This script is fully automatic. Simply answer the questions."
echo " "
read -p "Do You Wish To Continue? [yes/no] > " answer
	if [[ $answer = no ]] ; then
		echo -e " \e[31m \e[40m [ERROR]: User stated \"no\" \e[0m"
		echo "The script is exiting."
		exit
	fi
	if [[ $answer = yes ]] ; then
		:
	fi
	
clear
echo -e "\e[36m \e[40m          -- Preinstallation Sync --          \e[0m"
echo " "
read -p "Would you like to sync pacman with -Sy? [yes/no] > " answer
	if [[ $answer = yes ]] ; then
		sudo pacman -Sy
	fi
	if [[ $answer = no ]] ; then
		:
	fi
clear
echo " "
echo -e "\e[36m \e[40m          - Beginning Questionaire -          \e[0m"
echo " "
echo " "
echo -e "\e[36m \e[40m          - Tools For Building and Compiling Libraries -          \e[0m"
echo " "
read -p "Would you like to install base-devel? [yes/no] > " answer
	if [[ $answer = yes ]] ; then
		sudo pacman -S --needed --noconfirm base-devel
	fi
	if [[ $answer = no ]] ; then
		:
	fi
echo " "
echo -e "\e[36m \e[40m          - Improved Copying via Terminal -          \e[0m"
echo " "
read -p "Would you like to install rsync? [yes/no] > " answer
	if [[ $answer = yes ]] ; then
		sudo pacman -S --needed --noconfirm rsync
	fi
	if [[ $answer = no ]] ; then
		:
	fi
echo " "
echo -e "\e[36m \e[40m          - Accesibility To GitHub via Terminal -          \e[0m"
echo " "
read -p "Would you like to install git? [yes/no] > " answer
	if [[ $answer = yes ]] ; then
		sudo pacman -S --needed --noconfirm git
	fi
	if [[ $answer = no ]] ; then
		:
	fi
echo " "
echo -e "\e[36m \e[40m          - Bluetooth -          \e[0m"
echo "[Note]: Bluetooth is known to have issues (e.g, stuttering/skipping audio, controllers disconnecting)"
echo " "
read -p "Would you like to install Bluetooth? [yes/no] > " answer
	if [[ $answer = yes ]] ; then
		sudo pacman -S --needed --noconfirm bluez
		sudo systemcl enable bluetooth
	fi
	if [[ $answer = no ]] ; then
		:
	fi
echo " "
echo -e "\e[36m \e[40m          - Brightness Controls For Laptop Keyboards -          \e[0m"
echo " "
read -p "Would you like to install brightnessctl? [yes/no] > " answer
	if [[ $answer = yes ]] ; then
		sudo pacman -S --needed --noconfirm brightnessctl
	fi
	if [[ $answer = no ]] ; then
		:
	fi
echo " "
echo -e "\e[36m \e[40m          - User Firewall -          \e[0m"
echo " "
read -p "Would you like to install a firewall? [yes/no] > " answer
	if [[ $answer = yes ]] ; then
		sudo pacman -S --needed --noconfirm ufw
		sudo systemctl enable ufw
		sudo ufw default REJECT
	fi
	if [[ $answer = no ]] ; then
		:
	fi
echo " "
echo -e "\e[36m \e[40m          - Superuser/Admin Access Authenticator (Reccommended) -          \e[0m"
echo " "
read -p "Would you like to install a polkit? [gnome/kde] > " answer
	if [[ $answer = gnome ]] ; then
		sudo pacman -S --needed --noconfirm polkit-gnome
	fi
	if [[ $answer = kde ]] ; then
		sudo pacman -S --needed --noconfirm polkit-kde-agent
	fi
echo " "
echo -e "\e[36m \e[40m          - Application Account Holder (Pervents Signing In Everytime) -          \e[0m"
echo " "
read -p "Would you like to install gnome-keyring? [yes/no] > " answer
	if [[ $answer = yes ]] ; then
		sudo pacman -S --needed --noconfirm gnome-keyring archlinux-keyring
	fi
	if [[ $answer = no ]] ; then
		:
	fi
clear
echo " "
echo -e "\e[36m \e[40m          -- Main Desktop --          \e[0m"
echo " "
echo " "
echo -e "\e[36m \e[40m          - Picking Your Desktop -          \e[0m"
echo " "
read -p "What Type of Desktop? [de/wm] > " answer
	if [[ $answer = de ]] ; then
		read -p "Which Desktop Enviroment? [kde/lxqt/cinnamon] > " answer
		if [[ $answer = kde ]] ; then
			sudo pacman -S --needed --noconfirm plasma
		fi
		if [[ $answer = lxqt ]] ; then
			sudo pacman -S --needed --noconfirm lxqt
		fi
		if [[ $answer = cinnamon ]] ; then
			sudo pacman -S --needed --noconfirm cinnamon
		fi
	fi
	if [[ $answer = wm ]] ; then
		read -p "Which Window Manager? [hyprland] > " answer
		if [[ $answer = hyprland ]] ; then
			sudo pacman -S --needed --noconfirm hyprland waybar hyprpaper hyprshot ttf-font-awesome
		fi
	fi
echo " "
echo -e "\e[36m \e[40m          - Picking Your Login Screen -          \e[0m"
echo " "
read -p "Which Login Manager? [sddm/lydm] > " answer
	if [[ $answer = sddm ]] ; then
		sudo pacman -S --needed sddm
		sudo systemctl enable sddm
	fi
	if [[ $answer = ly ]] ; then
		sudo pacman -S --needed ly
		sudo systemctl enable ly
	fi
echo " "
echo -e "\e[36m \e[40m          - Tools For Building and Compiling Libraries -          \e[0m"
echo " "



echo ""
echo "Exiting for now. Will finish script later"
exit




read -p "Which Audio System? [pipewire-pulse/pulseaudio] > " answer
	if [[ $answer = pipewire-pulse ]] ; then
			# sudo pacman -S --needed pipewire pipewire-pulse
			# systemctl enable --user pipewire-pulse
			echo "this is an echo - sudo pacman -S --needed pipewire pipewire-pulse"
			echo "this is an echo - systemctl enable --user pipewire-pulse"
			read -p "
Do you want to Install sof_firmware & dsp (for realtek soundcards)? [yes/no] > "
				if [[ $answer = yes ]] ; then
						sudo pacman -S --needed --noconfirm sof_firmware dsp
					fi
				if [[ $answer = no ]] ; then
						:
					fi
		fi
	if [[ $answer = pulseaudio ]] ; then
			# sudo pacman -S --needed pulseaudio pulseaudio-ctl
			# systemctl enable --user pulseaudio
			echo "this is an echo - sudo pacman -S --needed pulseaudio pulseaudio-ctl"
			echo "this is an echo - systemctl enable --user pulseaudio"
			read -p "
Do you want to Install sof_firmware & dsp (for realtek soundcards)? [yes/no] > "
				if [[ $answer = yes ]] ; then
						# sudo pacman -S --needed --noconfirm sof_firmware dsp
						echo "this is an echo - sudo pacman -S --needed --noconfirm sof_firmware dsp"
					fi
				if [[ $answer = no ]] ; then
						:
					fi
		fi
clear
echo "
          -- Selecting a Terminal App --          
"
read -p "
Which Terminal Application? [kitty/konsole/none] > " answer
	if [[ $answer = kitty ]] ; then 
			# sudo pacman -S --needed --noconfirm kitty
			echo "this is an echo - sudo pacman -S --needed --noconfirm kitty"
		fi
	if [[ $answer = konsole ]] ; then 
			# sudo pacman -S --needed --noconfirm konsole
			echo "this is an echo - sudo pacman -S --needed --noconfirm konsole"
		fi
	if [[ $answer = none ]] ; then 
			:
		fi
clear
echo "
          -- Installing User CLI Applications --          
"
read -p "
Would you like to install fastfetch? [yes/no] > " answer
	if [[ $answer = yes ]] ; then
		  # sudo pacman -S --needed --noconfirm fastfetch imagemagick
		  echo "This is an echo - sudo pacman -S --needed --noconfirm fastfetch imagemagick"
		fi
	if [[ $answer = no ]] ; then
		  :
		fi
read -p "
Would you like to install ncdu? [yes/no] > " answer
	if [[ $answer = yes ]] ; then
		  # sudo pacman -S --needed --noconfirm ncdu
		  echo "This is an echo - sudo pacman -S --needed --noconfirm ncdu"
		fi
	if [[ $answer = no ]] ; then
		  :
		fi
read -p "
Would you like to install starship? [yes/no] > " answer
	if [[ $answer = yes ]] ; then
		  # sudo pacman -S --needed --noconfirm starship
		  echo "This is an echo - sudo pacman -S --needed --noconfirm starship"
		fi
	if [[ $answer = no ]] ; then
		  :
		fi
read -p "
Would you like to install htop? [yes/no] > " answer
	if [[ $answer = yes ]] ; then
		  # sudo pacman -S --needed --noconfirm htop
		  echo "This is an echo - sudo pacman -S --needed --noconfirm htop"
		fi
	if [[ $answer = no ]] ; then
		  :
		fi
read -p "
Would you like to install mpv? [yes/no] > " answer
	if [[ $answer = yes ]] ; then
		  # sudo pacman -S --needed --noconfirm mpv
		  echo "This is an echo - sudo pacman -S --needed --noconfirm mpv"
		fi
	if [[ $answer = no ]] ; then
		  :
		fi
read -p "
Would you like to install yt-dlp? [yes/no] > " answer
	if [[ $answer = yes ]] ; then
		  # sudo pacman -S --needed --noconfirm yt-dlp
		  echo "This is an echo - sudo pacman -S --needed --noconfirm yt-dlp"
		fi
	if [[ $answer = no ]] ; then
		  :
		fi
clear
echo "
          -- Installing User GUI Applications --          
"
read -p "
Would you like to install a File Manager? [dolphin/pcmanfm/pcmanfm-qt/none] > " answer
	if [[ $answer = dolphin ]] ; then
		  # sudo pacman -S --needed --noconfirm dolphin
		  echo "This is an echo - sudo pacman -S --needed --noconfirm dolphin"
		fi
	if [[ $answer = pcmanfm ]] ; then
		  # sudo pacman -S --needed --noconfirm pcmanfm
		  echo "This is an echo - sudo pacman -S --needed --noconfirm pcmanfm"
		fi
	if [[ $answer = pcmanfm-qt ]] ; then
		  # sudo pacman -S --needed --noconfirm pcmanfm-qt
		  echo "This is an echo - sudo pacman -S --needed --noconfirm pcmanfm-qt"
		fi
	if [[ $answer = none ]] ; then
		  :
		fi
read -p "
Would you like to install a Web Browser? [firefox/chrome/none] > " answer
	if [[ $answer = firefox ]] ; then
		  # sudo pacman -S --needed --noconfirm firefox
		  echo "This is an echo - sudo pacman -S --needed --noconfirm firefox"
		fi
	if [[ $answer = chrome ]] ; then
		  # sudo pacman -s --needed --noconfirm google-chrome
		  echo "This is an echo - sudo pacman -S --needed --noconfirm google-chrome"
		fi
	if [[ $answer = none ]] ; then
		  :
		fi
read -p "
Would you like to install the Iosevka Font? [yes/no] > " answer
	if [[ $answer = yes ]] ; then
		  # sudo pacman -S --needed --noconfirm ttc-iosevka
		  echo "This is an echo - sudo pacman -S --needed --noconfirm ttc-iosevka"
		fi
	if [[ $answer = no ]] ; then
		  :
		fi
clear


exit


echo "
          -- Cloning Avery Puhl's dotfiles -- 
"
read -p "
Would you like to Clone AveryPuhl/dotfiles from github? [yes/no] > " answer
	if [[ $answer = yes ]]
mkdir /home/avery/github
cd ~/home/avery/github
git clone --recursive https://www.github.com/AveryPuhl/dotfiles
		fi

cd dotfiles

echo "
          -- Copying user configs --          
"

mkdir /home/avery/.config
sudo rsync -av ./.config/* /home/avery/.config/

echo "
          -- Copying user binaries --          
"

mkdir /home/avery/bin
sudo rsync -av ./bin/* /home/avery/bin/
sudo chmod +x /home/avery/bin/*

echo "
          -- Copying bash and zsh .*rc files --          
"

sudo rsync -av ./.*rc /home/avery/

clear
echo "
          -- Fixing Permissions --          
Note: This is my first major bash script and it causes all copied folders to be root.
	This fixes this issue it by transforming all owners and groups of the following files into avery
	If you batch edit this script and my others to replace "avery" with your user,
	rerunning after deleting ~/APdesktopinstall and this should be fixed.
"
cd /home/avery/
sudo chgrp -R avery bin .config .bashrc .zshrc
sudo chown -R avery bin .config .bashrc .zshrc

echo "
          -- AP Hyprland Desktop Installation Has Finished --          
"
echo "Note: 
	/home/avery/APdesktopinstall is a leftover and should be deleted.
	I refuse to place 'rm -r' in a script which is ran with sudo.
	Please delete /home/avery/APdesktopinstall by yourself. ;)"
