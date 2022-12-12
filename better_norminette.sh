var_error=$(norminette | grep "Error")
result=$(echo $var_error | wc -l)

if [ $result -eq 0 ]
then
	printf "NORME OK!"
else
	norminette | grep "Error" > result.txt
	cat result.txt
	rm -f result.txt

fi
