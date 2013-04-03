class Room < ActiveRecord::Base
  attr_accessible :name, :room_id
  has_many :users
  has_many :messages

  def self.findRooms
    
    rooms = []
    Room.all.each do |room|
      if !room.nil?
        rooms << room
      end
    end
    return rooms
  end

end
