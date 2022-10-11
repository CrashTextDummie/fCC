#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "truncate teams, games;")
echo $($PSQL "alter sequence teams_team_id_seq restart;")

cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals
do
if [[ $winner != winner ]]
then
  #get team_id
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")
  # if not found
  if [[ -z $WINNER_ID ]]
  then
  # insert team
  INSERT_TEAM_RESULT=$($PSQL "insert into teams(name) values('$winner')")
  # get new team_id
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
  fi

  if [[ -z $OPPONENT_ID ]]
  then
  # insert team
  INSERT_TEAM_RESULT=$($PSQL "insert into teams(name) values('$opponent')")
  # get new team_id
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")
  fi

  INSERT_GAME_RESULT=$($PSQL "insert into games(year,round,winner_goals,opponent_goals,winner_id,opponent_id) values($year,'$round',$winner_goals,$opponent_goals,$WINNER_ID,$OPPONENT_ID)")
fi

done
