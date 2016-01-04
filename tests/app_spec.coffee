describe "my first test [000]", ->
  it "visits an app i'm running [001]", ->
    cy
      .server()
      .route({
        url: /ycombinator/
        onRequest: (xhrProxy) ->
          xhrProxy.xhr.setRequestHeader("X-Requested-With", "foo")
      })
      .visit "http://localhost:4200/"
