#!/bin/bash

# Function to start the guessing game
guessing_game() {
  # Get the number of files in the current directory
  local correct_guess=$(ls -1 | wc -l)
  
  # Loop until the user guesses correctly
  while true; do
    # Prompt the user to guess the number of files
    echo "How many files are in the current directory?"
    read guess

    # Check if the guess is correct
    if [[ $guess -eq $correct_guess ]]; then
      echo "Congratulations! You guessed the correct number of files!"
      break
    elif [[ $guess -lt $correct_guess ]]; then
      echo "Your guess is too low. Try again!"
    else
      echo "Your guess is too high. Try again!"
    fi
  done
}

# Call the function to start the game
guessing_game
