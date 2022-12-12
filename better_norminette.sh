#!/bin/sh
result=$(norminette | grep "Error"| wc -l)

if [ "$result" -eq 0 ]
then
	echo "NORME OK!"
else
	norminette | grep "Error" > .norminette_result.log
	cat .norminette_result.log
	rm -f .norminette_result.log
fi
