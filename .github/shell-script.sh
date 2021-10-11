IFS=":"
while read -r  f1 f2 f3
do
num1=${f1}
num2=${f2}
echo ${num1}
result=${f3}
sc_result=$(./sum.sh ${num1} ${num2})
if [ ${sc_result} -eq $((result+1)) ]
then
	echo "case passed"
else
	echo "failed"
	exit 101
fi
done < 'dataset'
