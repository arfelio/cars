// For more information see: http://emberjs.com/guides/routing/

Cars.Router.map(function() {
  this.resource('cars', function() {
  	this.route('show', { path: '/:id' });
  	this.route('new');
  });
});