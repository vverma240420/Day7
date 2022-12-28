s1=999999 
s2=999999 
for i in $(seq 1 10) 
do 
	r=$(( $RANDOM % 900 + 100 )) 
	echo $r 
	if [ $s1 -gt $r ] 
	then 
		s2=$s1 
		s1=$r 
	elif [ \( $s2 -gt $r \) -a \( $s1 -ne $r \) ] 
	then 
		s2=$r 
	fi 
done 
echo 
# echo "Smallest $s1" 
echo "Second smallest $s2" 
secondGreatest=$(printf '%s\n' "${array[@]}" | sort -nu | tail -2 | head -1)
