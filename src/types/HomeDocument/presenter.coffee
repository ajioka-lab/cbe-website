{ blað } = require 'blad'

marked   = require 'marked'
request  = require 'request'
kronic   = require 'kronic-node'
sax      = require('sax').parser(true)

class exports.HomeDocument extends blað.Type

    render: (done) ->
        # Markdown.
        @welcomeText = marked @welcomeText
        
        done @
