echo -e "\033[40;31m[NOTE] ROS_installer_robit_17th_myeungjin\033[0m"
echo ""
echo ""
echo ""
echo ""

echo -e "\033[40;31m[RO:BIT] updating package lists\033[0m"
sudo apt update -y
echo ""
echo ""
echo ""
echo ""

echo -e "\033[40;31m[RO:BIT] echo ros resources\033[0m"
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
echo ""
echo ""
echo ""
echo ""

echo -e "\033[40;31m[RO:BIT] install curl\033[0m"
sudo apt -y install curl
echo ""
echo ""
echo ""
echo ""

echo -e "\033[40;31m[RO:BIT] adding key\033[0m"
curl –s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
echo ""
echo ""
echo ""
echo ""

echo -e "\033[40;31m[RO:BIT] updating\033[0m"
sudo apt update -y
echo ""
echo ""
echo ""
echo ""

echo -e "\033[40;31m[RO:BIT] installing ROS-melodic-desktop-full\033[0m"
sudo apt install -y ros-melodic-desktop-full
echo ""
echo ""
echo ""
echo ""

echo -e "\033[40;31m[RO:BIT] installing dependencies\033[0m"
sudo apt install -y python-catkin-tools
echo ""
echo ""
echo ""
echo ""

echo -e "\033[40;31m[RO:BIT] installing git\033[0m"
sudo apt install -y git
echo ""
echo ""
echo ""
echo ""

echo -e "\033[40;31m[RO:BIT] adding alias\033[0m"
sh -c "echo \"alias eb='nano ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias sb='source ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias gs='git status'\" >> ~/.bashrc"
sh -c "echo \"alias gp='git pull'\" >> ~/.bashrc"
sh -c "echo \"alias cw='cd ~/catkin_ws'\" >> ~/.bashrc"
sh -c "echo \"alias cs='cd ~/catkin_ws/src'\" >> ~/.bashrc"
sh -c "echo \"alias cm='cd ~/catkin_ws && catkin_make'\" >> ~/.bashrc"

sh -c "echo \"source /opt/ros/melodic/setup.bash\" >> ~/.bashrc"
sh -c "echo \"source ~/catkin_ws/devel/setup.bash\" >> ~/.bashrc"
echo ""
echo ""
echo ""
echo ""

echo -e "\033[40;31m[RO:BIT] installing Dependencies for building packages\033[0m"
sudo apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool
build-essential
sudo apt install -y python-rosdep
sudo rosdep init
sudo rosdep update
echo ""
echo ""
echo ""
echo ""

echo -e "\033[40;31m[RO:BIT] install complete\033[0m"
echo ""
echo ""
echo ""
echo ""

echo -e "\033[40;31m[RO:BIT] making catkin_workspace\033[0m"
cd
mkdir catkin_ws
cd catkin_ws
mkdir src
cd 
sudo chmod 777 -R ~/.ros/
echo ""
echo ""
echo ""
echo ""

#echo -e "\033[40;31m[RO:BIT] rebooting\033[0m"
#sudo reboot
exit 0


