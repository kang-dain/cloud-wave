# #!/bin/bash
# # APP_Name=streamlit
# APP_PID=$(pgrep streamlit)

# if [ -z $APP_PID ]
# then
#   echo "Application is not running"
# else
#   echo "Kill -9 $APP_PID"
#   kill -9 $APP_PID
#   sleep 5
# fi

# exit 0




#!/bin/bash

APP_PID=$(pgrep streamlit)

if [ $? -ne 0 ]; then
  echo "No streamlit process found"
  exit 0
fi

echo "Killing streamlit process with PID $APP_PID"
kill -9 "$APP_PID"
sleep 2

exit 0



