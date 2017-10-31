import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('arrows');
  this.route('arrows.new', { path: '/arrows/new' });
  this.route('users');
});

export default Router;
