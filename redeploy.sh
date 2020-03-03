#!/bin/bash
heroku apps:destroy visionbotai8
heroku create visionbotai8 #create a new app 
heroku config:set GOOGLE_APPLICATION_CREDENTIALS='/app/gservice.json'
heroku config:set shared_room_id='Y2lzY29zcGFyazovL3VzL1JPT00vNGQ0Yzg2YjAtNWQyNy0xMWVhLWE5OGQtMWY1MWU3NzdkOGRm'
heroku config:set WEBEX_TEAMS_ACCESS_TOKEN='MzIzNjVmZDItYzY3Ny00ZWRhLWJjZGMtYWY2NjUyZTNjYjBkZTNlODQ0YWYtMzRi_PF84_1eb65fdf-9643-417f-9974-ad72cae0e10f'
git init
heroku git:remote -a visionbotai8
git add .
git commit -am "make it better"
git push heroku master
heroku ps:scale web=1
heroku logs -t # display logs