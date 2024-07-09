#!/bin/bash

PSQL="psql -X --username=carlosreinis --dbname=periodic_table --tuples-only -c"

function main() {
  if [[ -z $1 ]]; then
    read -p "Please provide an element (name or symbol): " INPUT_DATA
    display_data "$INPUT_DATA"
  else
    display_data "$1"
  fi
}

function display_data() {
  INPUT_DATA=$1
  if [[ ! $INPUT_DATA =~ ^[0-9]+$ ]]; then
    ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE symbol='$INPUT_DATA' OR name='$INPUT_DATA';" | sed 's/ //g')
  else
    ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number=$INPUT_DATA;" | sed 's/ //g')
  fi

  if [[ -z $ATOMIC_NUMBER ]]; then
    echo "I could not find that element in the database."
  else
    TYPE_ID=$($PSQL "SELECT type_id FROM properties WHERE atomic_number=$ATOMIC_NUMBER;" | sed 's/ //g')
    NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number=$ATOMIC_NUMBER;" | sed 's/ //g')
    SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number=$ATOMIC_NUMBER;" | sed 's/ //g')
    ATOMIC_MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number=$ATOMIC_NUMBER;" | sed 's/ //g')
    MELTING=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number=$ATOMIC_NUMBER;" | sed 's/ //g')
    BOILING=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number=$ATOMIC_NUMBER;" | sed 's/ //g')
    TYPE=$($PSQL "SELECT type FROM elements LEFT JOIN properties USING(atomic_number) LEFT JOIN types USING(type_id) WHERE atomic_number=$ATOMIC_NUMBER;" | sed 's/ //g')

    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
  fi
}

main "$@"
