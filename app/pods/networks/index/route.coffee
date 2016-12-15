`import Ember from 'ember'`

NetworksIndexRoute = Ember.Route.extend

  model: (params) ->
    Ember.$.getJSON("http://api.citybik.es/v2/networks/")

  setupController: (controller, model) ->
    @_super(controller, model);
    controller.set('model', model.networks.slice(0,30))

`export default NetworksIndexRoute`
