function blok {
    messages=("Ge kunt het $1!" "Gas geven $1!" "Goe bezig $1" "Denk aan de vakantie $1!" "Het is niet meer zo lang $1!" "Volhoude $1!" "Ik hoop dat chemie niet uw volgend examen is!" "Stay strong $1!")
    myarray=( $(shuf  -e ${messages[@]}) )
    len_messages=${#messages[@]}

    animals=("kitten" "puppy" "" "godzilla" "piglet")

    for ((i=0; i<4; i++))
    do
        xcowsay --image ${animals[$(($2 - 1))]}.png -t 2 ${messages[$i]}  2>/dev/null || xcowsay -t 2 ${messages[$i]}
    done
}
echo Type your name please: 
read name 

echo Whats your favoruite animal:
echo 1 - cat
echo 2 - dog
echo 3 - cow
echo 4 - godzilla
echo 5 - piglet
read animal

blok $name $animal

#echo ${animals[$1]}
