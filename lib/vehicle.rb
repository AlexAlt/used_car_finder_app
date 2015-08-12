class Vehicle
  define_method(:initialize) do |make, model, year|
    @@all_vehicles = []

    @id = @@all_vehicles.length().+(1)
    @make = make
    @model = model
    @year = year
  end

  define_method(:make) do
    @make
  end

  define_method(:model) do
    @model
  end

  define_method(:year) do
    @year
  end

  define_singleton_method(:all) do
    @@all_vehicles
  end

  define_method(:save) do
    @@all_vehicles.push(self)
  end

  define_singleton_method(:clear) do
    @@all_vehicles = []
  end

  define_method(:id) do
    @id
  end
end
