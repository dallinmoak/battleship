class Ship
  attr_accessor :location

  def initialize len
    @location = {}
    len.times { @location[""] = false }
  end

  def sunk?
    if @location.include?(false)
      false
    else
      true
    end
  end

  def hit coords
    @location[coords] = true
  end
end

class Ships
  attr_accessor :carrier, :battleship, :destroyer, :submarine, :patrol_boat

  def initialize
    @carrier = Ship.new(5)
    @battleship = Ship.new(4)
    @destroyer = Ship.new(3)
    @submarine = Ship.new(3)
    @patrol_boat = Ship.new(2)
  end

  def sunk_ships
    ship_list = [@carrier, @battleship, @destroyer, @submarine, @patrol_boat]
    sunk = []
    ship_list.each do |ship|
      if !ship.location.values.include?(false)
        sunk << ship
      end
    end
    sunk
  end

  def lost?
    sunk_ships.length == 5
  end
end

# shipz = Ships.new
# shipz.submarine.location #---> {"":false, "":false,"":false}
