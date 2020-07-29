class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until self.game_over
      take_turn
    end

    if self.game_over
      game_over_message
      reset_game
    end
  end

  def take_turn
    self.show_sequence
    sleep(2)
    system('clear')
    self.require_sequence
    
    if game_over == false
      round_success_message
      self.sequence_length += 1
    end
    
  end

  def show_sequence
    add_random_color
    puts @seq.join(", ")
  end

  def require_sequence
    puts "Enter the sequence once color at a time"
    repeat = gets.chomp
    if !COLORS.include?(repeat)
      raise "That is an invalid guess"
      self.require_sequence
    elsif #if guess was wrong
      puts "Incorrect guess"
      self.game_over = true
    end

  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Nice guess, keep going!"
  end

  def game_over_message
    puts "Hey, you lost.  No sweat, try again!"
  end

  def reset_game
    self.game_over = false
    self.sequence_length = 1
    self.seq = []
  end
end
