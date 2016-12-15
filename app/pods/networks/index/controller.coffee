`import Ember from 'ember'`

NetworksIndexController = Ember.Controller.extend

  sortProperties: ['company:asc']
  computedModel: Ember.computed.sort('model', 'sortProperties')

  actions:
    sortBy: (property, el) ->
      console.log @get('computedModel')
      if $("#" + el).attr('param') == 'asc'
        orderBy = 'asc'
        $("#" + el).attr('param','desc')
        $("#" + el + ' .glyphicon').addClass('glyphicon-triangle-top').removeClass('glyphicon-triangle-bottom')
      else
        orderBy = 'desc'
        $("#" + el).attr('param','asc')
        $("#" + el + ' .glyphicon').addClass('glyphicon-triangle-bottom').removeClass('glyphicon-triangle-top')
      @set('sortProperties', [property+':'+orderBy])

`export default NetworksIndexController`
