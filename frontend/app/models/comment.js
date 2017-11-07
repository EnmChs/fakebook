import DS from 'ember-data';

export default DS.Model.extend({
  body: DS.attr(),
  created_at: DS.attr('date'),
  arrow: belongsTo('arrow')
});
