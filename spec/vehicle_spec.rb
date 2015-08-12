require('rspec')
require('vehicle')

describe('Vehicle') do
  before() do
    Vehicle.clear()
  end

  describe('#make') do
    it('returns the make of the car') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2015)
      expect(test_vehicle.make()).to(eq("Toyota"))
    end
  end

  describe('#model') do
    it('returns the model of the car') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2015)
      expect(test_vehicle.model()).to(eq("Prius"))
    end
  end

  describe('#year') do
    it('returns the year of the car') do
      test_vehicle = Vehicle.new("Toyota", "Prisu", 2015)
      expect(test_vehicle.year()).to(eq(2015))
    end
  end

  describe('.all') do
    it('begins as a blank array') do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a vehicle to list of vehicles') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2015)
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end

  describe('.clear') do
    it('clear the list of vehicles') do
      Vehicle.clear()
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of the vehicle') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2015)
      test_vehicle.save()
      expect(test_vehicle.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('searches for a vehicle based on id and returns it') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2015)
      test_vehicle.save()
      test_vehicle2 = Vehicle.new("Dodge", "Neon", 1999)
      test_vehicle2.save()
      expect(Vehicle.find(1)).to(eq(test_vehicle))
    end
  end

end
