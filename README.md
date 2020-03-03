# Sentimentor bot lab
In this lab, we will put togather a webexteams bot that can analyse your selfies and tell you how you feel in the photos, this prototype is using google mahine leanirng cloud for photo analyses, the bot code is hosted in heroku and almsot ready to be used, in this lab you will need to create a webhook for the bot and test it using webexteams app on the laptop or on your mobile.


![Wiring photo][flow]

[flow]:./flow.png "Wiring photo"



## Step 1 :

#### Webexteams Account :
If you dont have a webexteams account, you can create one for free here LINK, once you have your webexteams account loging on the laptop or on your mobile to webexteams 

#### Access the shared teams space:
For each laptope a bot has been created on the hosting servie heroku find the one for your laptop:
laptop1 : https://visionbot1.herokuapp.com/signin
laptop2 : https://visionbot2.herokuapp.com/signin
...

Check if you got access to webexteams space you should see somthing lik this web you open the webexteams app.
PICTURE 




## Set up the webhook :
The webhook is a reverse API call, that will tell our bot when a message has been posted in our shared space. 
ro setup the webhook we need to loging to the webexteams developer portal, and create a webhook for our bot
-  make sure to copy the api token of your bot in the Authorisation field  
laptop 1 token : 
laptop 2 token : 
-  copy the target url for your assigned for your laptop bot :
laptop 1 : https://visionbot1.herokuapp.com/webhook
laptop 2 : https://visionbot2.herokuapp.com/webhook

PHOTO here with fleshed red arrows 

expected return PHOTO

## test the sentimentor bot:
Now that you have setup the webhook for your bot succesfully, you can test it by sending a photo or a selfie and tagging the bot on the shared teams space 'DeveNet Sentimentor Bot Lab - Cisco connect Riyadh 2020' 






