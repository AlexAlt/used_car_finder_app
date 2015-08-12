class Dealership
  @@all_dealerships = []


  define_method(:initialize) do |name|
    @cars =[]
    @name = name
    @id = @@all_dealerships.length().+(1)
  end

  define_method(:name) do
    @name
  end

  define_singleton_method(:all) do
    @@all_dealerships
  end

  define_method(:save) do
    @@all_dealerships.push(self)
  end

  define_singleton_method(:clear) do
    @@all_dealerships = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_dealer = nil
    @@all_dealerships.each() do |dealer|
      if dealer.id().eql?(id.to_i())
        found_dealer = dealer
      end
    end
    found_dealer
  end

  define_method(:cars) do
    @cars
  end

  define_method(:add_vehicle) do |vehicle|
    @cars.push(vehicle)
  end

end
