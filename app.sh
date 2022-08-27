#!/bin/bash

date

printf "\n%s\n" "**************************************************************************"
printf "%s\n"   "***                                                                    ***"
printf "%s\n"   "***                         SYSTEM REPORT                              ***"
printf "%s\n"   "**************************************************************************"
printf "%s\n" "UPTIME SYSTEM"
cat /proc/uptime
printf "\n%s\n" "MEMORY STATUS" 
free
printf "\n%s\n" "CPU INFO" 
grep -i "Model Name"  /proc/cpuinfo
printf "\n%s\n" "OS DISTRIBUTION" 
lsb_release -a
printf "\n%s\n" "BATERY STATUS"
acpi -V
for x in {1..10000}
do
printf "%s\t" "STATUS:"	
echo -ne "${x}\r"
sleep 0.25
done
printf "\n"

sleep 100000

exit 0


