#!/bin/bash
#-----------------------------------------------SA-----------------------------------------------
# CPU: MinFreq=115200 MaxFreq=2265600 SetMaxFreq=1190400 
# GPU: MinFreq=114750000 MaxFreq=675750000 SetMaxFreq=318750000
# echo $CPU_FREQ > /sys/devices/system/cpu/$CPU/cpufreq/scaling_min_freq (maximize frequency)
# echo $GPU_FREQ > /sys/devices/17000000.gv11b/devfreq/17000000.gv11b/max_freq (maximize frequency)
# https://developer.ridgerun.com/wiki/index.php?title=Xavier/JetPack_4.1/Performance_Tuning
# https://www.youtube.com/watch?v=iV78d4ySy-Y

#----------------------------------Customized---------------------------------
#CPU_FREQ=1190400
#CPU=cpu1 #The number can be changed
#echo $CPU_FREQ > /sys/devices/system/cpu/$CPU/cpufreq/scaling_min_freq
#echo $CPU_FREQ > /sys/devices/system/cpu/$CPU/cpufreq/scaling_max_freq

#GPU_FREQ=318750000
#echo $GPU_FREQ > /sys/devices/17000000.gv11b/devfreq/17000000.gv11b/min_freq
#----------------------------------Customized---------------------------------

sudo nvpmodel -m 2
#sudo nvpmodel --query
sudo ./jetson_clocks.sh --show

#-----------------------------------------------SA----------------------------------------------- 
