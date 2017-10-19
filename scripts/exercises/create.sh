curl --include --request POST "http://localhost:4741/exercises" \
  --header "Content-Type: application/json" \
  --data '{
    "exercise": {
      "name": "'"${NAME}"'",
      "weight": "'"${WEIGHT}"'",
      "sets": "'"${SETS}"'",
      "reps": "'"${REPS}"'",
      "notes": "'"${NOTES}"'"
    }
  }'
