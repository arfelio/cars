Cars.CarsIndexRoute = Ember.Route.extend({
  model: function() {
    return this.store.findAll('car');
  },
  actions: {
  	delete: function(car) {
	  car.deleteRecord();
	  car.save().then(function(response) {
	    console.log('Success!')
	  }).catch(function() {
	    console.log('Failure!')
	  });
		}
  }
});
Cars.CarsShowRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.find('car', params.id);
  },
  actions: {
    save: function(car) {
    	var self = this;
    	car.save().then(function(response) {
    		//you can transition back to index
    		self.transitionTo('cars.index');
    	}).catch(function() {
    		console.log('Failure!')
    	});
    }
  }
});
Cars.CarsNewRoute = Ember.Route.extend({
  model: function() {
    return this.store.createRecord('car', {});
  },
  deactivate: function() {
    var model = this.modelFor(this.routeName)
    model.rollback();
  },
  actions: {
    save: function(model) {
      var self = this;
      model.save().then(function(response) {
        console.log('Success!');
        //transition back to index
        //self.transitionTo('cars.index');

        //transition to the saved new car
        self.transitionTo('cars.show', response);
      }).catch(function() {
        console.log('Failure!');
      });
    }
  }
});