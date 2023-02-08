require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  let(:dealership) { Dealership.new("Acme Auto", "123 Main Street") }

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
end