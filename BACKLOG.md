# executable BOT
Desc: As a game observer, I want to see a TicTacToe game played on the console between two BOTs, so that I can understand how it works.

UAT: Given an executable TicTacToe game, when the game is launched via shell script, then is printed on the shell console the game flow without any delay between the moves.

# User story 1
As a Player 
I want to play TicTacToe
So that i can win the game

# UAT 1.1
GIVEN a TicTacToe board
WHEN the first player has taken a turn
THEN the second player wants to take a turn

# UAT 1.2
GIVEN a TicTacToe board
WHEN the second player has taken a turn
THEN the first player wants to take a 2nd turn

# UAT 1.3
GIVEN a TicTacToe board
WHEN the first player has taken 2 turn
THEN the second player wants to take a 2nd turn

# UAT 1.4
GIVEN a TicTacToe board
WHEN the second player has taken 2 turn
THEN the first player wants to take a 3rd turn

# UAT 1.4
GIVEN a TicTacToe board
WHEN the second player has taken 2 turn
THEN the first player wants to take a 3rd turn

# User story 2
As a Player 
I want to play TicTacToe
So that the game ends without a winner

# UAT 2.1
GIVEN a TicTacToe board
WHEN no player gets 3 in a row
THEN I want the game to end without a winner