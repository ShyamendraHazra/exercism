#!/bin/bash

function pow {
	if (($# != 2)); then
		echo "-1"
		return 1
	fi
	
	echo $(( $1 ** $2 ))
	return 0

}

function main {
	if (($# > 0)); then
		for arg in "$@"; do
			sum=0
			dig_count=${#arg}
			for (( it=0;it<dig_count;it+=1)); do
				if r=$(pow "${arg:it:1}" "$dig_count"); then
					sum=$(( sum+r ))
				fi
			done
			if((arg == sum)); then
				echo "true"
			else
				echo "false"
			fi
		done
	fi
}

main "$@"
