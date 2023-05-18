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
    