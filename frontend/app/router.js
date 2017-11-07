import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('arrows', {path: '/'}, function(){
    this.route('new', { path: '/arrow/new' });
    this.route('show', { path: 'arrow/show/:arrow_id' });
    this.route('destroy', { path: '/destroy/:arrow_id' });
  });

  this.route('users');
});

export default Router;
