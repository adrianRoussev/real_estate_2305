require './lib/house'
require 'rspec'

RSpec.describe House do
  describe "House" do
    
    it "exists" do
        house = House.new("$666,666", "666 hell")
      expect(house).to be_an_instance_of(House)
    end

    it "it has a price" do
      house = House.new("$666,666", "666 hell")
      expect(house.price).to eq("$666,666")
    end

#     it "can add rooms" do
#     house = House.new("$666,666", "666 hell")
#     room1 = Room.new(:bedroom, 10, '13')
#     house.add_room(room1)
#     expect(house.rooms)).to eq(true)
#     end


#     it "can sort rooms by category" do
#         house = House.new("$666,666", "666 hell")
#         room1 = Room.new(:bedroom, 10, '13')
#         room2 = Room.new(:basement, 10, '20')
#         house.add_room(room1)
#         house.add_room(room2)
#       expect(room1).to be_an_instance_of(house.rooms_from_category(:bedroom))
#     end

#     it "has house details"do
#     house = House.new("$666,666", "666 hell")
#     room1 = Room.new(:bedroom, 10, '13')
#     house.add_room(room1)
#     expect(room1).to be_an_instance_of(house.house_details)
#     end
#   end
# end
