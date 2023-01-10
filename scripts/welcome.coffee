# Description:
#   To welcome new members to the community
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:

module.exports = (robot) ->
  conversationId = "D030Y36N709"
  robot.enter (res) ->
    if res.message.room == conversationId
      enterReply = "Welcome to Icon Agency! Here are a few links to get you onboard. Sign up to our Intranet: '  <a href=\"https://intranet.iconagency.com.au/\">intranet</a>' "
      room = robot.adapter.client.rtm.dataStore.getDMByName res.message.user.name
      robot.messageRoom room.id, enterReply
