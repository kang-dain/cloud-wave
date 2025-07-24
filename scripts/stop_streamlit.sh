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

if [ -z "$APP_PID" ]; then
  echo "Application is not running"
  exit 0   # ← 이걸 여기서 해주면 확실해져
else
  echo "Kill -9 $APP_PID"
  kill -9 $APP_PID
  sleep 5
  exit 0
fi
