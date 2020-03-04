#!/bin/bash
heroku apps:destroy visionbotai3
heroku create visionbotai3 #create a new app 
heroku git:remote -a visionbotai3
heroku config:set GOOGLE_APPLICATION_CREDENTIALS='/app/gservice.json'
heroku config:set shared_room_id='Y2lzY29zcGFyazovL3VzL1JPT00vNGQ0Yzg2YjAtNWQyNy0xMWVhLWE5OGQtMWY1MWU3NzdkOGRm'
heroku config:set WEBEX_TEAMS_ACCESS_TOKEN='MmUzZjdiNjctOWMyMi00OWRjLTkwN2QtZGRiZDYxYjU2MTcwNzAwZDE5ODAtN2Vm_PF84_1eb65fdf'
git init
git add .
git commit -am "make it better"
git push heroku master
heroku ps:scale web=1
heroku logs -t # display logs