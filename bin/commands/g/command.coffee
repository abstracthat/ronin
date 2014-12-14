Command = require('../../../').Command
spawn = require('child_process').spawn

NewCommand = Command.extend
  desc: 'Create new command'

  run: (name) ->
    spawn 'yo', ['ronin-coffeescript:command', name],
      cwd: process.cwd()
      stdio: 'inherit'

module.exports = NewCommand