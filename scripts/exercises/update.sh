curl --include --request PATCH "http://localhost:4741/exercises/${ID}" \
--header "Authorization: Token token=${TOKEN}" \
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
