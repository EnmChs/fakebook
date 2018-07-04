import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    confirm(arrow) {
      arrow.deleteRecord();
      arrow.save(); // => true
      this.transitionToRoute('arrows');
      if(arrow.get('isDeleted')){
        this.toast.success('Arrow deleted!');
      }else{
        this.toast.error('Arrow could not be deleted!');
      }
    },
  }
});
