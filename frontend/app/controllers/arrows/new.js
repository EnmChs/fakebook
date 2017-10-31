import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    createArrow: function() {
      var content = this.get('arrowContent');
      var read = this.get('arrowRead');
      var arrow = this.store.createRecord('arrow', {
        content: content,
        read: read
      });
      arrow.save();
     }
   }
});
