#!/bin/bash
#heroku delete visionbotai1 #depelete exiting app 
#heroku create visionbotai1 #create a new app 
git init
heroku git:remote -a visionbotai1
git add .
git commit -am "make it better"
git push heroku master
heroku config:set GOOGLE_APPLICATION_CREDENTIALS='/app/gservice.json'
heroku config:set Webexteams_token='Bearer ZmZkZTJjZGItMTg4NS00MmIxLTk0N2MtZWM0YTUxMjE3ZTU4N2Q0ZjlkODgtZTI4_PF84_1eb65fdf-9643-417f-9974-ad72cae0e10f'
heroku config:set shared_room_id='Y2lzY29zcGFyazovL3VzL1JPT00vNGQ0Yzg2YjAtNWQyNy0xMWVhLWE5OGQtMWY1MWU3NzdkOGRm'
heroku config:set WEBEX_TEAMS_ACCESS_TOKEN='ZmZkZTJjZGItMTg4NS00MmIxLTk0N2MtZWM0YTUxMjE3ZTU4N2Q0ZjlkODgtZTI4_PF84_1eb65fdf-9643-417f-9974-ad72cae0e10f'
heroku ps:scale web=1
heroku logs -t # display logs