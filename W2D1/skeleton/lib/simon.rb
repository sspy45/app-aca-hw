class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    add_random_color

    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence

    if require_sequence == @seq
      round_success_message
      add_random_color
      @sequence_length +=1
    else
      @game_over = true
    end
  end

  def show_sequence
    p @seq
  end

  def require_sequence
    puts "Enter the sequence"
    print "> "
    input = parse_input(gets.chomp)

  end

  def parse_input(input)
    input.delete(' ').split(",")
  end

  def add_random_color
    @seq << ["red", "blue", "yellow", "green"].sample
  end

  def round_success_message
    puts "Passed round!"
    puts
  end

  def game_over_message
    puts "Game Over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

a = Simon.new
a.play
