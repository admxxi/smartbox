`import Ember from 'ember'`

NetworksViewRoute = Ember.Route.extend

  model: (params) ->
    Ember.$.getJSON("http://api.citybik.es/v2/networks/"+params.network_id)
    
  setupController: (controller,model) ->
    @_super(controller,model)
    controller.set('network',model.network)

`export default NetworksViewRoute`
