# Description:
#   To demonstrate basic keyword commands
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot hello - Say hello!
#   hubot !new members - link to procedure for new members.

module.exports = (robot) ->
  robot.hear /hello/i, (res) ->
    res.send "Hello World"

  robot.hear /!new members/i, (res) ->
    res.send "https://www.notion.so/dstarling/Click-me-if-you-like-being-informed-b5e1968173684dfd908f4a85c91ef6e7"
