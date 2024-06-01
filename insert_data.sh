#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "truncate teams,games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOAL OPPONENT_GOAL
do 
  if [[ $YEAR != year ]]
  then
    WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER'")
    if [[ -z $WINNER_ID ]]
    then
      INSERT_TEAM_RES=$($PSQL "insert into teams(name) values('$WINNER')")
      if [[ $INSERT_TEAM_RES == 'INSERT 0 1' ]]
      then 
        echo Insert into teams, $WINNER 
      fi 
    fi
    WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER'")

    OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")
    if [[ -z $OPPONENT_ID ]]
    then
      INSERT_TEAM_RES=$($PSQL "insert into teams(name) values('$OPPONENT')")
      if [[ $INSERT_TEAM_RES == 'INSERT 0 1' ]]
      then 
        echo Insert into teams, $OPPONENT 
      fi 
    fi
    OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")
    # INSERT INTO GAMES 
    INSERT_GAME_RES=$($PSQL "insert into games(year,round,winner_goals,opponent_goals,winner_id,opponent_id) values($YEAR,'$ROUND',$WINNER_GOAL,$OPPONENT_GOAL,$WINNER_ID,$OPPONENT_ID)")
    if [[ $INSERT_GAME_RES == 'INSERT 0 1' ]]
    then 
      echo Insert into games, $YEAR $ROUND 
    fi 
  fi 
done 