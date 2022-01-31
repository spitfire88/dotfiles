alias rbash=". /etc/bash/bashrc.d/alias.sh"
alias e3="echo 3 > /proc/sys/kernel/printk"
alias remount="mount -o remount,rw /"
alias pack="cat /sys/kernel/debug/pmc*/pack*"
alias disp="cat /sys/kernel/debug/dri/0/i915_disp*"
#alias sst="suspend_stress_test -c 10 --wake_min=10 --post_resume_command=\"cat /sys/kernel/debug/pmc_core/substate_residencies\""
#alias auth="echo 0 > /sys/bus/pci/drivers_allowlist_lockdown && echo 1 > /sys/bus/thunderbolt/devices/0-3/authorized"
alias ecsts="ectool usbpdmuxinfo"

sst() {
	date >> /tmp/sst.log
	if [[ $2 -gt 0 ]]
	then 
		suspend_stress_test -c $1 --suspend_min=$2 --wake_min=$2 --post_resume_command="cat /sys/kernel/debug/pmc_core/substate_residencies" | tee -a /tmp/sst.log
		grep "" /sys/power/*wake* >> /tmp/sst.log
		cat /sys/kernel/debug/wakeup_sources >> /tmp/sst.log
	else 
		suspend_stress_test -c $1 --post_resume_command="cat /sys/kernel/debug/pmc_core/substate_residencies" | tee -a /tmp/sst.log
		grep "" /sys/power/*wake* >> /tmp/sst.log
		cat /sys/kernel/debug/wakeup_sources >> /tmp/sst.log
	fi
}

auth() {
	echo 0 > /sys/bus/pci/drivers_allowlist_lockdown
	echo 1 > /sys/bus/thunderbolt/devices/$1/authorized
}

lstbt() {
	tree /sys/bus/thunderbolt/devices/$1
}

dp2tbt() {
	ectool typeccontrol $1 0
	sleep 3
	ectool typeccontrol $1 2 1
	sleep 8
	echo 0 > /sys/bus/pci/drivers_allowlist_lockdown
	echo 1 > /sys/bus/thunderbolt/devices/$2/authorized
}
