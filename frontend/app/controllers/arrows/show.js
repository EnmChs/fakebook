import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    callText(qwe) {
      let arrow = this.store.findRecord('arrow', qwe.arrow_id);
      alert(arrow)
    }
  }
});
