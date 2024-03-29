console.log @

@Demo = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.addRegions
    headerRegion: "#header-region"
    mainRegion: "#main-region"
    footerRegion: "#footer-region"

  App.addInitializer ->
    App.module("FooterApp").start()
    # App.execute "footer:show"

  App.on "initialize:after", ->
    if Backbone.history
      Backbone.history.start()

  App
