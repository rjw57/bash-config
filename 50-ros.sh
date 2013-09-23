# Source ROS setup script if prsent

_ros_base='/opt/ros/'

if [ -f "${_ros_base}/hydro/setup.bash" ]; then
	. "${_ros_base}/hydro/setup.bash"
elif [ -f "${_ros_base}/groovy/setup.bash" ]; then
	. "${_ros_base}/groovy/setup.bash"
fi

unset _ros_base
