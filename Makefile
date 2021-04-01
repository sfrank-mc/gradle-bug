with-gradle:
	gradle run

get-command:
	gradle run --debug | grep 'Command:' | sed 's/.* Command: \(.*\)/\1/'
	
get-correct-command:
	gradle run --debug | grep 'Command:' | sed 's/.* Command: \(.*java \)\(.*\)/\1-Djavax.net.debug=all \2/'

run-command:
	gradle run --debug | grep 'Command:' | sed 's/.* Command: \(.*\)/\1/' | bash

run-correct-command:
	gradle run --debug | grep 'Command:' | sed 's/.* Command: \(.*java \)\(.*\)/\1-Djavax.net.debug=all \2/' | bash
