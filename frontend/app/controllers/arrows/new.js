import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    createArrow: function() {
      var content = this.get('arrowContent');
      var arrow = this.store.createRecord('arrow', {
        content: content
      });
      arrow.save();
      this.set('arrowContent', '');
    }
  }
});
