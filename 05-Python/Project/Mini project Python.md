# Mini project Python

## Key Terminologies



## Exercise 1

Number Guessing:
- Generate a random number between 1 and 100 (or any other range).
- The player guesses a number. For every wrong answer the player receives a clue.
- When the player guesses the right number, display a score.




### Sources

* [NumberGuessing](https://www.geeksforgeeks.org/number-guessing-game-in-python/)



### Overcome challenges
 No challenges faced.

 ### Results

 ### Code
  ```python
import random
x = random.randint(1,100)
#intitialzing the number of guesses
count = 0
while(count < 7):
    count+=1
    inp_val = int(input("Enter a number between 1 and 100 : "))
    if x == inp_val:
        print("Congratulations your guess is correct ")
        break
    elif x>inp_val:
        print("You guessed too small!")
    elif x<inp_val:
        print("You guessed too high!")
if count >7:
    print("The number is "+ str(x))
    print("Better Luck Next time!")

 ```



![Number Guessing game](/00_includes/Python/Project/Guessinggame.png)

## Exercise 2

Rock Paper Scissors:
- The player plays against a computer opponent typing either a letter (rps) or an entire word (rock paper scissors) to play their move.
- Create a function that checks whether the move is valid or not.
- Create another function to create a computer move.
- Create another function to check who wins the round.
- Finally, create a function that keeps track of the score.
- The game should be played in a predetermined number of rounds.



### Sources

* [Rock paper scissors](https://www.geeksforgeeks.org/python-program-implement-rock-paper-scissor-game/)



### Overcome challenges


 ### Results

 ### Code
 ```python
import random
rounds = 0
user_score=0
comp_score=0
#function to add the score
def score(score):
    score=score+1
    return score
#Function to make computers random choice    
def computer_choice():
    possible_actions = ["rock", "paper", "scissors"]
    computer_action = random.choice(possible_actions)
    return computer_action
#Function to check the user input is correct or not
def user_action_check(action):
    action =str(action)
    if((action.lower() == "rock") or (action.lower() == "paper" ) or (action.lower() == "scissors")):
        return True
    else:
        return False
#Function to check the winner
def winner(choice, comp_choice):
    #checking for draw
    if choice == comp_choice:
        print("Draw ")
        return "Draw"
       
    # condition for winning
    elif((choice == "rock" and comp_choice == "paper") or
          (choice == "paper" and comp_choice == "rock" )):
            print("paper wins ")
            return "paper"
 
    elif((choice == "rock" and comp_choice == "scissors") or
            (choice == "scissors" and comp_choice == "rock")):
            print("Rock wins ")
            return "rock"
    else:
            print("scissor wins ")
            return "scissor"
#Running the game for 5 rounds
while(rounds < 5):
    rounds+=1
    user_input =input("Enter a choice (rock, paper or scissors): ")
    print("Your input  : "+user_input)
    comp_choice = computer_choice()
    print("Computer choice : "+comp_choice)
    usr_action=user_action_check(user_input)
    if usr_action:
        result = winner(user_input,comp_choice)
        # Printing either user or computer wins or draw
        #print(" Result is :"+str(result))
        if result == "Draw":
            print("Its a Draw")
        elif result == user_input:
            print("You won this round")
            user_score =score(user_score)
            print("Your score is  : "+str(user_score))
        else:
            print("Computer won this round")
            comp_score =score(comp_score)
            print("Computer Score is : "+ str(comp_score) )
    else:
        print("Wrong user entry")
#Printing the final score and winner
if user_score > comp_score:
    print("You won the game with "+ str(user_score)+ " points")
else:
    print("Computer won the game with "+str(comp_score)+" ponits")

 ```



![RPSgame](/00_includes/Python/Project/RPSgame.png)







