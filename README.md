# ros_melodic_install

ROS melodic installation file

This .sh file will install ROS melodic autometicaly.

Commit this command in terminal

```shell
git clone https://github.com/mjlee111/ros1_ubuntu_installer.git
cd ros1_ubuntu_installer
```
### melodic

```shell
./ros_melodic_install.sh
```

### noetic
```shell
./ros_noetic_install.sh
```
## .bashrc

### Alias

```shell
alias gb='cd && gedit .bashrc'
alias eb='nano ~/.bashrc'
alias sb='source ~/.bashrc'
alias gs='git status'
alias gb='gedit ~/.bashrc'
alias gp='git pull'
alias cw='cd ~/catkin_ws'
alias cs='cd ~/catkin_ws/src'
alias cm='cd ~/catkin_ws && catkin_make'
alias cb='source devel/setup.bash'
alias depinstall='rosdep update && rosdep install --from-paths . --ignore-src -r -y'
alias rn='sudo systemctl restart NetworkManager'
alias symlink='sudo udevadm control --reload-rules && sudo udevadm trigger'
alias killg='killall -9 gzserver && killall -9 gzclient && killall -9 rosmaster'
```

### Environment Source

```shell
source /opt/ros/noetic/setup.bash
source ~/catkin_ws/devel/setup.bash
```

## Something Else

### ROS Develop Recommended Tools for Ubuntu

#### VSCode - https://code.visualstudio.com/

#### GitHub Desktop for ubuntu - https://github.com/shiftkey/desktop/releases
