# Informal Pseudocode for RPS Bonus Features
Greet user
Explain game rules
Explain three wins to be grand winner
Explain choices in shorthand

Main loop
  Loop until user/computer wins three times:

    - Ask user for choice
      - Validate choice: must be among valid choices
      - If choice is valid, break out of loop
      - If choice is not valid, ask again

    - Display user choice and computer choice
    - Display winner
    - Winner's win counter increments by one

  Announce grand winner
  Ask user whether to play again
    - If input is no, break out of loop

Thank user for playing