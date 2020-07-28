class Board
  attr_accessor :cups
  require "byebug"
  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new}
    @cups.each do |cup| 
      if @cups.index(cup) != 6 && @cups.index(cup) != 13
        4.times do 
          cup << :stone 
        end
      end
    end
    @player1 = name1
    @palyer2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if !(0..12).include?(start_pos)  
      raise 'Invalid starting cup'
    elsif @cups[start_pos].empty?
      raise 'Starting cup is empty'
    end
  end

  def make_move(start_pos, current_player_name)
    # debugger
    count = self.cups[start_pos].length
    self.cups[start_pos] = []
    (1..count).each do |num|
      self.cups[start_pos + num] << :stone
    end

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
