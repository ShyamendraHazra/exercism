for arg in "$@"; do
	rev=""
	for((i=${#arg}-1; i>=0; i--)); do
		 rev+=${arg:i:1}
	done
	echo "$rev"
done
