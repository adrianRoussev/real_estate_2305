require './room'
class House
    attr_reader :price, :address, :rooms, :house_details, :room
    def initialize (price, address, above_market_average = false)
        @price = price
        @address= address
        @above_market_average = above_market_average
        @rooms = []
        @house_details = {}
    end

    def add_room(room)
        @room= Room.new(room.category, room.length, room.width)
        @rooms <<@room
        @house_details.merge!({@room.category =>   rooms.find_all{|x| x.category == @room.category}}) 
    end

    def rooms_from_category(cat)
        rooms.find_all{|x| x.category == cat}
        end
    
        def house_area 
        room_area_arr=[]
        rooms.each do|room|
            room_area = room.area
            room_area_arr << room_area    
        end
        room_area_arr.inject(:+)
    end
 end
    