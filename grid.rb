class GameGrid
  def initialize
    @@grid = {}
    10.times do |iter|
      @@grid["a#{iter + 1}"] = " "
    end
    10.times do |iter|
      @@grid["b#{iter + 1}"] = " "
    end
    10.times do |iter|
      @@grid["c#{iter + 1}"] = " "
    end
    10.times do |iter|
      @@grid["d#{iter + 1}"] = " "
    end
    10.times do |iter|
      @@grid["e#{iter + 1}"] = " "
    end
    10.times do |iter|
      @@grid["f#{iter + 1}"] = " "
    end
    10.times do |iter|
      @@grid["g#{iter + 1}"] = " "
    end
    10.times do |iter|
      @@grid["h#{iter + 1}"] = " "
    end
    10.times do |iter|
      @@grid["i#{iter + 1}"] = " "
    end
    10.times do |iter|
      @@grid["j#{iter + 1}"] = " "
    end
    # user_input
  end

  def render_map

    system('clear')
    puts "      A     B     C     D     E     F     G     H     I     J"
    puts "    _____ _____ _____ _____ _____ _____ _____ _____ _____ _____"
    puts "   |     |     |     |     |     |     |     |     |     |     |"
    puts "1  |  #{@@grid["a1"]}  |  #{@@grid["b1"]}  |  #{@@grid["c1"]}  |  #{@@grid["d1"]}  |  #{@@grid["e1"]}  |  #{@@grid["f1"]}  |  #{@@grid["g1"]}  |  #{@@grid["h1"]}  |  #{@@grid["i1"]}  |  #{@@grid["j1"]}  |"
    puts "    _____ _____ _____ _____ _____ _____ _____ _____ _____ _____"
    puts "   |     |     |     |     |     |     |     |     |     |     |"
    puts "2  |  #{@@grid["a2"]}  |  #{@@grid["b2"]}  |  #{@@grid["c2"]}  |  #{@@grid["d2"]}  |  #{@@grid["e2"]}  |  #{@@grid["f2"]}  |  #{@@grid["g2"]}  |  #{@@grid["h2"]}  |  #{@@grid["i2"]}  |  #{@@grid["j2"]}  |"

    puts "    _____ _____ _____ _____ _____ _____ _____ _____ _____ _____"
    puts "   |     |     |     |     |     |     |     |     |     |     |"
    puts "3  |  #{@@grid["a3"]}  |  #{@@grid["b3"]}  |  #{@@grid["c3"]}  |  #{@@grid["d3"]}  |  #{@@grid["e3"]}  |  #{@@grid["f3"]}  |  #{@@grid["g3"]}  |  #{@@grid["h3"]}  |  #{@@grid["i3"]}  |  #{@@grid["j3"]}  |"

    puts "    _____ _____ _____ _____ _____ _____ _____ _____ _____ _____"
    puts "   |     |     |     |     |     |     |     |     |     |     |"
    puts "4  |  #{@@grid["a4"]}  |  #{@@grid["b4"]}  |  #{@@grid["c4"]}  |  #{@@grid["d4"]}  |  #{@@grid["e4"]}  |  #{@@grid["f4"]}  |  #{@@grid["g4"]}  |  #{@@grid["h4"]}  |  #{@@grid["i4"]}  |  #{@@grid["j4"]}  |"

    puts "    _____ _____ _____ _____ _____ _____ _____ _____ _____ _____"
    puts "   |     |     |     |     |     |     |     |     |     |     |"
    puts "5  |  #{@@grid["a5"]}  |  #{@@grid["b5"]}  |  #{@@grid["c5"]}  |  #{@@grid["d5"]}  |  #{@@grid["e5"]}  |  #{@@grid["f5"]}  |  #{@@grid["g5"]}  |  #{@@grid["h5"]}  |  #{@@grid["i5"]}  |  #{@@grid["j5"]}  |"

    puts "    _____ _____ _____ _____ _____ _____ _____ _____ _____ _____"
    puts "   |     |     |     |     |     |     |     |     |     |     |"
    puts "6  |  #{@@grid["a6"]}  |  #{@@grid["b6"]}  |  #{@@grid["c6"]}  |  #{@@grid["d6"]}  |  #{@@grid["e6"]}  |  #{@@grid["f6"]}  |  #{@@grid["g6"]}  |  #{@@grid["h6"]}  |  #{@@grid["i6"]}  |  #{@@grid["j6"]}  |"

    puts "    _____ _____ _____ _____ _____ _____ _____ _____ _____ _____"
    puts "   |     |     |     |     |     |     |     |     |     |     |"
    puts "7  |  #{@@grid["a7"]}  |  #{@@grid["b7"]}  |  #{@@grid["c7"]}  |  #{@@grid["d7"]}  |  #{@@grid["e7"]}  |  #{@@grid["f7"]}  |  #{@@grid["g7"]}  |  #{@@grid["h7"]}  |  #{@@grid["i7"]}  |  #{@@grid["j7"]}  |"

    puts "    _____ _____ _____ _____ _____ _____ _____ _____ _____ _____"
    puts "   |     |     |     |     |     |     |     |     |     |     |"
    puts "8  |  #{@@grid["a8"]}  |  #{@@grid["b8"]}  |  #{@@grid["c8"]}  |  #{@@grid["d8"]}  |  #{@@grid["e8"]}  |  #{@@grid["f8"]}  |  #{@@grid["g8"]}  |  #{@@grid["h8"]}  |  #{@@grid["i8"]}  |  #{@@grid["j8"]}  |"

    puts "    _____ _____ _____ _____ _____ _____ _____ _____ _____ _____"
    puts "   |     |     |     |     |     |     |     |     |     |     |"
    puts "9  |  #{@@grid["a9"]}  |  #{@@grid["b9"]}  |  #{@@grid["c9"]}  |  #{@@grid["d9"]}  |  #{@@grid["e9"]}  |  #{@@grid["f9"]}  |  #{@@grid["g9"]}  |  #{@@grid["h9"]}  |  #{@@grid["i9"]}  |  #{@@grid["j9"]}  |"

    puts "    _____ _____ _____ _____ _____ _____ _____ _____ _____ _____"
    puts "   |     |     |     |     |     |     |     |     |     |     |"
    puts "10 |  #{@@grid["a10"]}  |  #{@@grid["b10"]}  |  #{@@grid["c10"]}  |  #{@@grid["d10"]}  |  #{@@grid["e10"]}  |  #{@@grid["f10"]}  |  #{@@grid["g10"]}  |  #{@@grid["h10"]}  |  #{@@grid["i10"]}  |  #{@@grid["j10"]}  |"

    puts "    _____ _____ _____ _____ _____ _____ _____ _____ _____ _____"
  end
end

GameGrid.new