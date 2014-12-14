Command = require('../../').Command
spawn = require('child_process').spawn

NewApplication = Command.extend
  desc: 'Create new application'
  run: (name) ->
    if process.platform is 'win32'
      execFile = 'yo.cmd'
    else
      execFile = 'yo'
    spawn execFile, ['ronin-coffeescript', name],
      cwd: process.cwd()
      stdio: 'inherit'

module.exports = NewApplication
