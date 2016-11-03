IFS=$'\n'
for output in $(ls -1 /home/user/Music/Monstercat/)
do
	line=$(echo $output | cut -d- -f1 | /home/user/Music/.config/oneWordTitle.out)
	echo $line
	if [ ! -d "/home/user/Music/Monstercat/$line/" ]; then
		$(mkdir /home/user/Music/Monstercat/$line)
	fi
	name=$(echo $output | cut -d- -f3 | cut -c 5- | /home/user/Music/.config/oneWord.out)
	mv /home/user/Music/Monstercat/$output /home/user/Music/Monstercat/$name
	mv /home/user/Music/Monstercat/$name /home/user/Music/Monstercat/$line/
done
