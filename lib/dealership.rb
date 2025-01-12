class Dealership
  attr_reader :name,
              :address,
              :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    if @inventory.empty?
      false
    else 
      true
    end
  end

  def car_by_make(make)
    inventory.select { |car| car.make == make }
  end

  def total_value
    inventory.reduce(0) { |sum, car| sum + car.total_cost }
  end

  def details
    {
      "total_value" =>  total_value,
      "address" => address
    }
  end
end