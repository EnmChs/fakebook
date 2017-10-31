import DS from 'ember-data';

export default DS.Model.extend({
  content: DS.attr(),
  read: DS.attr(),
  // user: DS.belongsTo('user')
});
