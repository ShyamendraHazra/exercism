
function find_idx {
	target="$1"
	shift
	list=($@)
	
	for li in "${list[@]}";do
		if [[ "$target" == "$li" ]]; then
			echo "$li"
			return 0
		fi
	done

	return 1
}

if (($# > 0)); then

	mask=()
	allergens=(
	eggs
	peanuts
	shellfish
	strawberries
	tomatoes
	chocolate
	pollen
	cats)
	valid_allergens=()
	score=$1
	count=1

	while(("$score" > 0 && count <= 8)); do
		
		bit=$((score % 2))
		mask=("${mask[@]}" "$bit")
		score=$((score/2))
		((count+=1))
	done


	for ((i=0; i < "${#mask[@]}"; i+=1));do

		if((mask[$i] == 1));then
			valid_allergens+=("${allergens[$i]}")
		fi
	done

	if (($# < 3));then
		printf '%s' "${valid_allergens[*]}"
	elif (($# > 2)); then
		claimed_allergen="$3"
		if idx=$(find_idx "$claimed_allergen" "${valid_allergens[@]}"); then
			echo "true"
		else
			echo "false"
		fi
	fi

fi
