require 'byebug'
require_relative "ships"
require_relative "placement"
require_relative "grid"
#TODO update shot grid after each turn

player1 = "Player 1"
player2 = "Player 2"
p1_ships = Ships.new
p2_ships = Ships.new
p1_shot_grid = GameGrid.new
p1_display_grid = GameGrid.new
place p1_ships
p1_ships.carrier.location.keys.each do |el|
  p1_display_grid[el] = "C"
end
p1_ships.battleship.location.keys.each do |el|
  p1_display_grid[el] = "B"
end
p1_ships.destroyer.location.keys.each do |el|
  p1_display_grid[el] = "D"
end
p1_ships.submarine.location.keys.each do |el|
  p1_display_grid[el] = "S"
end
p1_ships.patrol_boat.location.keys.each do |el|
  p1_display_grid[el] = "P"
end
p2_shot_grid = GameGrid.new
p2_display_grid = GameGrid.new
place p2_ships
p2_ships.carrier.location.keys.each do |el|
  p2_display_grid[el] = "C"
end
p2_ships.battleship.location.keys.each do |el|
  p2_display_grid[el] = "B"
end
p2_ships.destroyer.location.keys.each do |el|
  p2_display_grid[el] = "D"
end
p2_ships.submarine.location.keys.each do |el|
  p2_display_grid[el] = "S"
end
p2_ships.patrol_boat.location.keys.each do |el|
  p2_display_grid[el] = "P"
end


def get_input prompt, good_input
  good_input = good_input.map{|i| i.to_s}
  print prompt
  outp = gets.chomp
  good = good_input.include?(outp)
  if !good
    while !good
      print "Try again. #{prompt}"
      outp = gets.chomp
      good = true if good_input.include?(outp)
    end
  end
  outp21
end

def turn (player, display_grid, shot_grid, ships)
  shot_grid.render_map
  not_already_tried = shot_grid.keys.delete_if {|val| val == "X" || val == "O"}
  move = get_input "#{player}, please select your move. (Letter first, number second)", not_already_tried
  move_coord = display_grid[:"#{move}"]
  case move_coord
  when " "
    shot_grid[:"#{move}"] = "O"
    display_grid[:"#{move}"] = "O"
    puts "miss"
  when "C"
    shot_grid[:"#{move}"] = "X"
    ships.carrier.hit(:"#{move}")
    display_grid[:"#{move}"] = "X"
  when "B"
    shot_grid[:"#{move}"] = "X"
    ships.battleship.hit(:"#{move}")
    display_grid[:"#{move}"] = "X"
  when "D"
    shot_grid[:"#{move}"] = "X"
    ships.destroyer.hit(move)
    display_grid[:"#{move}"] = "X"
  when "S"
    shot_grid[:"#{move}"] = "X"
    ships.submarine.hit(:"#{move}")
    display_grid[:"#{move}"] = "X"
  when "P"
    shot_grid[:"#{move}"] = "X"
    ships.patrol_boat.hit(:"#{move}")
    display_grid[:"#{move}"] = "X"
  end
  display_grid.render_map
end


while !(p1_ships.sunk_ships.length == 5 || p2_ships.sunk_ships.length ==5)
  turn player1, p2_display_grid, p1_shot_grid, p2_ships
  turn player2, p1_display_grid, p2_shot_grid, p1_ships
end