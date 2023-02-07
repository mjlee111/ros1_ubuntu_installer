echo "[NOTE] ROS_installer_robit_17th_myeungjin"
echo ""
echo ""
echo ""
echo ""

echo "[RO:BIT] updating package lists"
sudo apt update -y
echo ""
echo ""
echo ""
echo ""

echo "[RO:BIT] echo ros resources"
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
echo ""
echo ""
echo ""
echo ""

echo "[RO:BIT] install curl"
sudo apt -y install curl
echo ""
echo ""
echo ""
echo ""

echo "[RO:BIT] adding key"
curl –s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
echo ""
echo ""
echo ""
echo ""

echo "[RO:BIT] updating"
sudo apt update
echo ""
echo ""
echo ""
echo ""

echo "[RO:BIT] installing ROS-melodic-desktop-full"
sudo apt install -y ros-melodic-desktop-full
echo ""
echo ""
echo ""
echo ""

echo "[RO:BIT] installing dependencies"
sudo apt install -y python-catkin-tools
echo ""
echo ""
echo ""
echo ""

echo "[RO:BIT] installing git"
sudo apt install -y git
echo ""
echo ""
echo ""
echo ""

echo "[RO:BIT] adding alias"
sh -c "echo \"alias eb='nano ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias sb='source ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias gs='git status'\" >> ~/.bashrc"
sh -c "echo \"alias gp='git pull'\" >> ~/.bashrc"
sh -c "echo \"alias cw='cd ~/catkin_ws'\" >> ~/.bashrc"
sh -c "echo \"alias cs='cd ~/catkin_ws/src'\" >> ~/.bashrc"
sh -c "echo \"alias cm='cd ~/catkin_ws && catkin_make'\" >> ~/.bashrc"

sh -c "echo \"source /opt/ros/melodic/setup.bash\" >> ~/.bashrc"
sh -c "echo \"source ~/melodic/devel/setup.bash\" >> ~/.bashrc"
echo ""
echo ""
echo ""
echo ""

echo "[RO:BIT] installing Dependencies for building packages"
sudo apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool
build-essential
sudo apt install -y python-rosdep
sudo rosdep init
sudo rosdep update
echo ""
echo ""
echo ""
echo ""

echo "[RO:BIT] install complete"
echo ""
echo ""
echo ""
echo ""

echo "[RO:BIT] making catkin_workspace"
mkdir catkin_ws
cd catkin_ws
mkdir src
echo ""
echo ""
echo ""
echo ""

echo "[RO:BIT] rebooting"
sudo reboot
exit 0


