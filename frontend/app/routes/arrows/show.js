import Ember from 'ember';

export default Ember.Route.extend({
  model(params){
    return this.store.findRecord('arrow', params.arrow_id);
  },
  actions: {}
});
