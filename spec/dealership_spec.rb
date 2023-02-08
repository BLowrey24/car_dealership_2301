require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  let(:dealership) { Dealership.new("Acme Auto", "123 Main Street") }
  let(:car_1) { Car.new("Ford Mustang", 1500, 36) }
  let(:car_2) { Car.new("Toyota Prius", 1000, 48) }
  let(:car_3) { Car.new("Toyota Tercel", 500, 48) }
  let(:car_4) { Car.new("Chevrolet Bronco", 1250, 24) }
  
  describe '#initialize' do
    it 'exists' do
      expect(dealership).to be_a(Dealership)
    end

    it 'has attributes' do
      expect(dealership.name).to eq("Acme Auto")
      expect(dealership.address).to eq("123 Main Street")
      expect(dealership.inventory).to eq([])
    end
  end

  describe '#inventory_count' do
    it 'can count inventory' do
      expect(dealership.inventory_count).to eq(0)
    end
  end

  describe '#add_car' do
    it 'can add car to inventory' do
      dealership.add_car(car_1)
      dealership.add_car(car_2)

      expect(dealership.inventory).to eq([car_1, car_2])
      expect(dealership.inventory_count).to eq(2)
    end
  end

  describe '#has_inventory?' do
    it 'returns false if there are no cars in inventory' do
      expect(dealership.has_inventory?).to eq(false)
    end

    it 'returns true if there is at least one car in inventory' do
      dealership.add_car(car_1)

      expect(dealership.has_inventory?).to eq(true)
    end
  end

  describe '#car_by_make' do
    it 'returns an array of cars with the same make' do
      dealership.add_car(car_1)
      dealership.add_car(car_2)
      dealership.add_car(car_3)
      dealership.add_car(car_4)

      expect(dealership.car_by_make("Toyota")).to eq([car_2, car_3])
      expect(dealership.car_by_make("Ford")).to eq([car_1])
    end
  end
end