#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# create random number in 1-1000
RANDOM_NUM=$(($RANDOM % 1000 + 1))

# read username
echo "Enter your username:"
read USERNAME

# get user_id
USER_ID=$($PSQL "select user_id from users where name = '$USERNAME';")

# if not found, register user. Else show game history
if [[ -z $USER_ID ]]
then
  # add user to database
  INSERT_USER_RESULT=$($PSQL "insert into users (name) values ('$USERNAME');")
  USER_ID=$($PSQL "select user_id from users where name = '$USERNAME';")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  # show game history
  GAMES_PLAYED=$($PSQL "select count(game_id) from games where user_id = $USER_ID;")
  BEST_GAME=$($PSQL "select min(num_guesses) from games where user_id = $USER_ID;")
  NAME=$($PSQL "select name from users where user_id='$USER_ID';")
  echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Play game
NUM_GUESSES=1
echo "Guess the secret number between 1 and 1000:"
read GUESS

while [[ !($GUESS =~ ^[0-9]+$) || ($GUESS -ne $RANDOM_NUM) ]];
do
  if [[ !($GUESS =~ ^[0-9]+$) ]]
  then
    # if input is not an integer
    echo "That is not an integer, guess again:"
  else
    # check if inupt is higher or lower than answer
    if [[ $RANDOM_NUM -gt $GUESS ]]
    then
      echo "It's higher than that, guess again:"
    else
      echo "It's lower than that, guess again:"
    fi
  fi
  # increment number of guesses and read new guess
  NUM_GUESSES=$((NUM_GUESSES+1))
  read GUESS
done

echo "You guessed it in $NUM_GUESSES tries. The secret number was $RANDOM_NUM. Nice job!"

# add game to database
INSERT_GAME_RESULT=$($PSQL "insert into games (user_id, num_guesses) values ($USER_ID, $NUM_GUESSES);")
