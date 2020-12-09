require 'byebug'

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false
    @sequence_length = 1
    @seq = Array.new
  end

  def play
    until @game_over
      take_turn
      system("clear")
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1
    end
    take_turn
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep 0.50
      system("clear")
      sleep 0.50
    end
  end

  def require_sequence
    puts "Repeat the sequence"
    answers = Array.new
    @seq.each do |color|
      user_color = gets.chomp
      if color != user_color
        @game_over = true
        break
      end
    end
    sleep 0.25
  end

  def add_random_color
    random_color = COLORS.sample
    @seq << random_color
  end

  def round_success_message
    puts "Round success!"
  end

  def game_over_message
    puts "Game over! You made #{sequence_length - 1} round."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

new_game = Simon.new
new_game.play
