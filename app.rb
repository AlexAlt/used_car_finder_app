require('sinatra')
require('sinatra/reloader')
require('./lib/dealership')
require('./lib/vehicle')
also_reload('lib/**/*.rb')


get('/') do
  @dealerships = Dealership.all()
  erb(:index)
end

post('/dealership_list') do
  @dealerships = Dealership.all()
  name = params.fetch('new_dealer')
  new_dealer = Dealership.new(name)
  new_dealer.save()
  erb(:dealership_list)
end

get('/dealership_list') do
  @dealerships = Dealership.all()
  erb(:dealership_list)
end

get('/vehicle_list/:id') do
  @dealership = Dealership.find(params.fetch('id').to_i())
  @dealership_cars = @dealership.cars()
  @dealership_name = @dealership.name()
  erb(:vehicle_list)
end

get('/vehicle_list/:id/new') do
  @dealership = Dealership.find(params.fetch('id').to_i())
  erb(:vehicle_form)
end

post('/vehicle_list/:id') do
  @dealership_cars = Dealership.find(params.fetch('id').to_i())
  vehicle_make = params.fetch('vehicle_make')
  vehicle_model = params.fetch('vehicle_model')
  vehicle_year = params.fetch('vehicle_year')
  new_vehicle = Vehicle.new(vehicle_make, vehicle_model, vehicle_year)
  new_vehicle.save()
  @dealership_cars.add_vehicle(new_vehicle)
  erb(:vehicle_list)
end
