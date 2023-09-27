#!/bin/bash

function custom_echo() {
  text="$1"
  color="$2"
  terminal_width=$(tput cols)

  case "$color" in
    "green")
      echo -e "\033[32m[mjlee111] $text\033[0m"
      ;;
    "red")
      echo -e "\033[31m[mjlee111] $text\033[0m"
      ;;
    "yellow")
      padding_length_left=$(( (terminal_width - ${#text} - 20) / 2 ))
      padding_length_right=$(( terminal_width - ${#text} - 20 - padding_length_left ))
      padding_left=$(printf "%*s" $padding_length_left "")
      padding_right=$(printf "%*s" $padding_length_right "")
      echo -e "\033[33m[RO:BIT] $padding_left$text$padding_right\033[0m"
      ;;
    *)
      echo "$text"
      ;;
  esac
}

custom_echo "ROS_installer_robit_17th_myeungjin" "green"
custom_echo "updating package lists" "green"
sudo apt update -y

custom_echo "echo ros resources" "green"
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

custom_echo "install curl" "green"
sudo apt -y install curl

custom_echo "adding key" "green"
curl –s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

custom_echo "updating" "green"
sudo apt update -y

custom_echo "installing ROS-melodic-desktop-full" "green"
sudo apt install -y ros-melodic-desktop-full

custom_echo "installing dependencies" "green"
sudo apt install -y python-catkin-tools

custom_echo "installing git" "green"
sudo apt install -y git

custom_echo "adding alias" "green"
sh -c "echo \"alias eb='nano ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias sb='source ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias gs='git status'\" >> ~/.bashrc"
sh -c "echo \"alias gp='git pull'\" >> ~/.bashrc"
sh -c "echo \"alias cw='cd ~/catkin_ws'\" >> ~/.bashrc"
sh -c "echo \"alias cs='cd ~/catkin_ws/src'\" >> ~/.bashrc"
sh -c "echo \"alias cm='cd ~/catkin_ws && catkin_make'\" >> ~/.bashrc"

sh -c "echo \"source /opt/ros/melodic/setup.bash\" >> ~/.bashrc"
sh -c "echo \"source ~/catkin_ws/devel/setup.bash\" >> ~/.bashrc"

custom_echo "installing Dependencies for building packages" "green"
sudo apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo apt install -y python-rosdep
sudo rosdep init
sudo rosdep update

custom_echo "install complete" "green"

custom_echo "making catkin_workspace" "green"
cd
mkdir catkin_ws
cd catkin_ws
mkdir src
cd 
sudo chmod 777 -R ~/.ros/

# custom_echo "rebooting" "red"
# sudo reboot
cd 
rm -rf ros_melodic_install

exit 0
