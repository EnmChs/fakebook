import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    // return this.store.findAll('comment');

    // return this.store.query('comment', params);
    const arrow = this.modelFor('arrow');
    return this.store.query('comment', { param: arrow });
  }
});
