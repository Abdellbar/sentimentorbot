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

  def add_member_to_sapce(self,email,roomid):
    """
    response = requests.request("POST","https://api.ciscospark.com/v1/memberships",
      headers={
        "Authorization": self.key,
        "Content-Type":"application/json"
      },
      data=json.dumps({"roomId":roomid,"personEmail":email})
    )
    """
    url = "https://api.ciscospark.com/v1/memberships"

    payload = "{\n  \"roomId\": \"Y2lzY29zcGFyazovL3VzL1JPT00vNGQ0Yzg2YjAtNWQyNy0xMWVhLWE5OGQtMWY1MWU3NzdkOGRm\",\n  \"personEmail\": \"abdellbar@gmail.com\"\n}"
    headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ZmZkZTJjZGItMTg4NS00MmIxLTk0N2MtZWM0YTUxMjE3ZTU4N2Q0ZjlkODgtZTI4_PF84_1eb65fdf-9643-417f-9974-ad72cae0e10f'
    }

    response = requests.request("POST", url, headers=headers, data = payload)

    print(response.text.encode('utf8'))    
    return response

    