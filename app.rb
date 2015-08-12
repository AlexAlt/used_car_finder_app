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
