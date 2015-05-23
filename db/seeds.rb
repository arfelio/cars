# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Car.create([
  { make: 'Honda' , model: 'Civic', color: 'silver', condition: 'new'    },
  { make: 'Subaru', model: 'WRX',   color: 'blue',   condition: 'used'   },
  { make: 'BMW',    model: 'i3',    color: 'black',  condition: 'broken' }
])