require('rspec')
require('vehicle')

describe('Vehicle') do
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
end
