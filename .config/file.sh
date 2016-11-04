IFS=$'\n'
for output in $(ls /home/user/Music/Temp/)
do
	line=$(echo $output | cut -d- -f1 | /home/user/Music/.config/oneWordTitle.out)
	echo $line
	if [ ! -d "/home/user/Music/Monstercat/$line/" ]; then
		$(mkdir /home/user/Music/Monstercat/$line)
		echo $line
	fi
#
#	name=$(echo $output | cut -d- -f3 | /home/user/Music/.config/oneWord.out)
	mv /home/user/Music/Temp/$output /home/user/Music/Monstercat/$line/
#	cp /home/user/Music/Temp/$name /home/user/Music/Monstercat/$line/
done
