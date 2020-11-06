#!/bin/bash


function check_num {
zeros=(*ero z*ro ze*o zer*)
ones=(*ne, o*e, on*)
twos=(*wo t*o tw*)
threes=(*hree t*ree th*ee thr*e thre*)
fours=(*our f*ur fo*r fou*)
fives=(*ive f**e fiv*)
sixes=(*ix s*x si*)
sevens=(*even s*ven se*en sev*n seve*)
eights=(*ight e*ght ei*ht eig*t eigh*)
nines=(*ine n*ne ni*e nin*)


for num in ${zeros[@]}; do
	if [[ $1 = $num ]]; then
		echo 0
		return
	fi
done

for num in ${ones[@]}; do
	if [[ $1 = $num ]]; then
		echo 1
		return
	fi
done

for num in ${twos[@]}; do
	if [[ $1 = $num ]]; then
		echo 2
		return
	fi
done

for num in ${threes[@]}; do
	if [[ $1 = $num ]]; then
		echo 3
		return
	fi
done

for num in ${fours[@]}; do
	if [[ $1 = $num ]]; then
		echo 4
		return
	fi
done

for num in ${fives[@]}; do
	if [[ $1 = $num ]]; then 
		echo 5
		return
	fi
done

for num in ${sixes[@]}; do
	if [[ $1 = $num ]]; then 
		echo 6
		return
	fi
done

for num in ${sevens[@]}; do
	if [[ $1 = $num ]]; then 
		echo 7
		return
	fi
done

for num in ${eights[@]}; do
	if [[ $1 = $num ]]; then
		echo 8
		return
	fi
done

for num in ${nines[@]}; do
	if [[ $1 = $num ]]; then 
		echo 9
		return
	fi
done

}




function check_symbol {
if [[ $1 = *ult ]] || [[ $1 = m*lt ]] || [[ $1 = mu*t ]] || [[ $1 = mul* ]]; then
echo 0
elif [[ $1 = *iv ]] || [[ $1 = d*v ]] || [[ $1 = di* ]]; then
echo /
elif [[ $1 = *lus ]] || [[ $1 = p*us ]] || [[ $1 = pl*s ]] || [[ $1 = plu* ]]; then
echo +
elif [[ $1 = *inus ]] || [[ $1 = m*nus ]] || [[ $1 = mi*us ]] || [[ $1 = min*s ]] || [[ $1 = minu* ]]; then
echo -
fi
}

while true; do
echo "enter 'Exit' to exit"
echo "enter the first num"; read num1
if [[ $num1 = 'Exit' ]]; then
	break
fi
echo "enter operation"; read symbol
echo "enter the second num"; read num2


num_1=$(check_num $num1)
sym=$(check_symbol $symbol)
num_2=$(check_num $num2)

if [[ $sym = 0 ]]; then
	echo $(($num_1*$num_2))
else
	res=$(($num_1 $sym $num_2))
	echo $res
fi
done




