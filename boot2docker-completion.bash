#!/bin/bash
#
# bash completion file for boot2docker 
#
# To enable the completions either:
#  - place this file in /etc/bash_completion.d
#  or
#  - copy this file to e.g. ~/.boot2docker-completion.sh and add the line
#    below to your .bashrc after bash completion features are loaded
#    . ~/.boot2docker-completion.sh
#

_boot2docker() {
	local commands=(
		boot
		cfg
		config
		delete
		destroy
		down
		download
		halt
                help
		info
                init
		ip
		poweroff
		reset
		restart
		save
		shellinit
		ssh
		start
		status
		stop
		suspend
		up
		upgrade
		version
	)

        local options=(
                --basevmdk
                --clobber
                --dhcp
                --dhcpip
                -s
                --disksize
                --dockerport
                --driver
                --force-upgrade-download
                --hostip
                --iso
                --iso-url
                --lowerip
                -m
                --memory
                --netmask
                --no-dummy
                --retries
                --serial
                --serialfile
                --ssh
                --ssh-keygen
                --sshkey
                --sshport
                --upperip
                --vbm
                --vbox-share
                -v
                --verbose
                --vm
                --waittime
        )


        COMPREPLY=()
        local cur
        _get_comp_words_by_ref -n : cur

        case "$cur" in
                -*)
                        COMPREPLY=( $( compgen -W "${options[*]}" -- "$cur" ) )
                        ;;

                *)
                        COMPREPLY=( $( compgen -W "${commands[*]}" -- "$cur" ) )
                        ;;
        esac

        return
}

complete -F _boot2docker boot2docker
