# connect_four

Below are the test cases to create a game of connect four

**#initialize**
Does starting a new game create a gameboard?
- Check for a gameboard
- Check that the gameboard is an array of 7 items
- Ensure that each item is an array of 6 items

Start a game with 2 players
- Name player1 "player 1"
- Name player2 "player 2"
- Player1.name == "player 1"
- Player2.name == "player 2"
- Player1.piece == Unicode symbol for a circle but Yellow
- Player2.piece == Unicode symbol for a circle but Red

**#play_round**
Does @@round start as 0?
Does running this function increment @@round by 1?
Does running this function 3x increment @@round by 3?

Do even rounds ask player1 to make a selection? (Call choose_piece with player1)
Do odd rounds ask player2 to make a selection? (call choose_piece with player2)

**#choose_piece**
Asks a player to select a column from the gameboard
If a player selects something outside of the allowed choices, #choose_piece recurses
If a player selects a column from the gameboard the piece goes to the very bottom of that list

Set the gameboard to half-way through a game
If a player selects from a column that is NOT empty, the piece goes to the next available spot

**#win**

Set the gameboard to have 4 same-colored pieces in a row
- The game wins
Set the gameboard to have 4 different colored pieces in a row
- The game does NOT win
