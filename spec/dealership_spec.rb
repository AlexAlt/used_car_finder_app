require('rspec')
require('dealership')

describe(Dealership) do

  before() do
   Dealership.clear()
 end

  describe('#name') do
    it('returns the name of the dealership') do
      new_dealership = Dealership.new("Used Cars Dot Com")
      expect(new_dealership.name()).to(eq("Used Cars Dot Com"))
    end
  end

  describe('.all') do
    it('begins with a blank array') do
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a dealership to the list') do
      new_dealership = Dealership.new("Used Cars Dot Com")
      new_dealership.save()
      expect(Dealership.all()).to(eq([new_dealership]))
    end
  end

  describe('.clear') do
    it('clears the list of dealerships') do
      Dealership.clear()
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of the dealership') do
      new_dealership = Dealership.new("Used Cars Dot Com")
      expect(new_dealership.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('finds a dealership given the id') do
      new_dealership = Dealership.new("Used Cars Dot Com")
      new_dealership.save()
      expect(Dealership.find(1)).to(eq(new_dealership))
    end
  end

  describe('#cars') do
    it('initially returns an empty array of cars to dealership') do
      new_dealership = Dealership.new("Used Cars Dot Com")
      expect(new_dealership.cars()).to(eq([]))
    end
  end
end
