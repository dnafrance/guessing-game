README.md: guessinggame.sh
	echo "Guessing Game with Unix shell script" > README.md
	date '+%Y-%m-%d %H:%M:%S' >> README.md
	cat guessinggame.sh | wc -l >> README.md
 
