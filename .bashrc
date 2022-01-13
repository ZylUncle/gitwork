#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# User specific aliases and functions
echo "I'm in a new shell!"


# 直接创建可执行脚本
function newsh {
	if [ $# -eq 1 ];then
		touch $1
		chmod u+x $1
	elif [ $# -eq 2 ];then
		#用正则表达式判断chmod字母法
		zzbds='^[augo][+-=][rwx]{1,3}$|^[+-=][rwx]{1,3}$|^[4217]{1,3}$'
		if [[ $1 =~ $zzbds ]]
		then
			touch $2
			chmod $1 $2
		else
			echo "regular expression error"
		fi
		
	else
		echo "parameter error"
	fi
}
