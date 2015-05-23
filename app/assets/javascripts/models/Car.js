Cars.Car = DS.Model.extend({
  make: DS.attr('string'),
  model: DS.attr('string'),
  color: DS.attr('string'),
  condition: DS.attr('string')
});