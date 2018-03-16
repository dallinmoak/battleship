def place shipz
  def get_spots ship, num
    puts "#{num} spots in a row #{ship}"
    location = gets.chomp

    location.split(',').to_a
  end

  carrier_location =get_spots "Carrier", 5
  battleship_location = get_spots "Battleship", 4
  destroyer_location = get_spots "Destroyer", 3
  submarine_location = get_spots "Submarine", 3
  patrol_boat_location = get_spots "Patrol Boat", 2

  carrier_location.each do |coord|
    shipz.carrier.location[coord] = false
  end
  battleship_location.each do |coord|
    shipz.battleship.location[coord] = false
  end
  destroyer_location.each do |coord|
    shipz.destroyer.location[coord] = false
  end
  submarine_location.each do |coord|
    shipz.submarine.location[coord] = false
  end
  patrol_boat_location.each do |coord|
    shipz.patrol_boat.location[coord] = false
  end
end