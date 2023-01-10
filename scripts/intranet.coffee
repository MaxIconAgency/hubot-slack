# Description:
#   To search on the intranet
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:

#module.exports = (robot) ->
#  robot.http("https://swapi.dev/api/planets/1/")
#    .header('Accept', 'application/json')
#    .get() (err, response, body) ->
## error checking code here
#      if err
#        res.send "Encountered an error :( #{err}"
#      else
#      data = JSON.parse body
#      res.send "#{data} taking midnight train going #{data}"

module.exports = (robot) ->
  robot.hear /intranet/i, (res) ->
    http = require 'https'

    options =
      url: 'https://swapi.dev/api/planets/1/'
      method: 'POST'

    req = http.request options, (response) ->
      response.on 'data', (data) ->
        res.send "The HTTP request was successful! #{data.name}"
      response.on 'error', (error) ->
        res.send 'There was an error with the HTTP request'

    req.end()
