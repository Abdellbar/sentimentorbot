#!/usr/bin/python

import json
import requests
import os




class Sparkapi:

  def __init__( self, key):
      self.key = key

  def get_msg(self,id):
      url = "https://api.ciscospark.com/v1/messages/"+id
      payload = ""
      headers = {
          'Authorization': self.key,
          'cache-control': "no-cache"
          }

      response = requests.request("GET", url, data=payload, headers=headers)

      return response.json()

  def get_file(self,file_url):
    response = requests.request("GET", url=file_url,
      headers={
        "Authorization": self.key
      }
    )
    return response


  def post_msg_markdown(self,grp,msg):
    response = requests.request("POST","https://api.ciscospark.com/v1/messages/",
      headers={
        "Authorization": self.key,
        "Content-Type":"application/json"
      },
      data=json.dumps({"roomId":grp,"markdown":msg})
    )
    print(response.text)

    