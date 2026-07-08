#!/bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# 1. പഴയ ഡാറ്റ ക്ലിയർ ചെയ്ത് ഐഡികൾ റീസെറ്റ് ചെയ്യുന്നു (വളരെ പ്രധാനം)
echo $($PSQL "TRUNCATE games, teams RESTART IDENTITY CASCADE;")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # 2. ഹെഡ്ഡർ ലൈൻ ഒഴിവാക്കുന്നു
  if [[ $YEAR == "year" ]]
  then
    continue
  fi

  # 3. ഫയലിന്റെ അവസാനം വരാൻ സാധ്യതയുള്ള ശൂന്യമായ വരികൾ ഒഴിവാക്കുന്നു
  if [[ -z $YEAR || -z $WINNER || -z $OPPONENT ]]
  then
    continue
  fi

  # WINNER TEAM ഇൻസേർഷൻ
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
  if [[ -z $WINNER_ID ]]
  then
    INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
  fi
  
  # OPPONENT TEAM ഇൻസേർഷൻ
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
  if [[ -z $OPPONENT_ID ]]
  then
    INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
  fi

  # GAMES ടേബിൾ ഇൻസേർഷൻ
  INSERT_ALL=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);")

done
