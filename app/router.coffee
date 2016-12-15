###
import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('hello');
});

export default Router;
###

`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->

  @route 'networks', ->
    @route 'index', { path: '/index' }
    @route 'view', { path: '/view/:network_id' }


`export default Router`
