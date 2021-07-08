#!/bin/bash
#-----------------------------------------------SA-----------------------------------------------
# CPU: MinFreq=115200 MaxFreq=2265600 SetMaxFreq=1190400 
# GPU: MinFreq=114750000 MaxFreq=1377000000 SetMaxFreq=318750000
# echo $CPU_FREQ > /sys/devices/system/cpu/$CPU/cpufreq/scaling_min_freq (maximize frequency)
# echo $GPU_FREQ > /sys/devices/17000000.gv11b/devfreq/17000000.gv11b/max_freq (maximize frequency)
# https://developer.ridgerun.com/wiki/index.php?title=Xavier/JetPack_4.1/Performance_Tuning
# https://www.youtube.com/watch?v=iV78d4ySy-Y
#https://docs.nvidia.com/jetson/l4t/index.html#page/Tegra%2520Linux%2520Driver%2520Package%2520Development%2520Guide%2FAppendixTegraStats.html%23

#----------------------------------Customized---------------------------------
#CPU_FREQ=2265599 
#CPU=cpu1 #The number can be changed
#echo $CPU_FREQ > /sys/devices/system/cpu/$CPU/cpufreq/scaling_min_freq
#echo $CPU_FREQ > /sys/devices/system/cpu/$CPU/cpufreq/scaling_max_freq

#GPU_FREQ=675750000
#echo $GPU_FREQ > /sys/devices/17000000.gv11b/devfreq/17000000.gv11b/min_freq
#echo $GPU_FREQ > /sys/devices/17000000.gv11b/devfreq/17000000.gv11b/max_freq
#----------------------------------Customized---------------------------------


sudo nvpmodel -m 0
#sudo nvpmodel --query
sudo ./jetson_clocks.sh
sudo ./jetson_clocks.sh --show

#-----------------------------------------------SA-----------------------------------------------
