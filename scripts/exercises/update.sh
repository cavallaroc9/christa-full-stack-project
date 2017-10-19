curl --include --request PATCH "http://localhost:4741/exercises/${ID}" \
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
