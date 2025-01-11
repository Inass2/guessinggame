# Title of the project
TITLE = "Guessing Game Project"

# Get the number of lines in the guessinggame.sh file
LINES=$(wc -l < guessinggame.sh)

# Create the README.md file
README.md: guessinggame.sh
	@echo "# $(TITLE)" > README.md
	@echo "Date and Time of Make: $(shell date)" >> README.md
	@echo "Number of lines in guessinggame.sh: $(LINES)" >> README.md

# A rule to run the guessing game script
run:
	bash guessinggame.sh

# A clean rule to remove generated files (if needed)
clean:
	rm -f README.md
