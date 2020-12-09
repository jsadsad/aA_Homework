require 'colorize'

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false
    @sequence_length = 1
    @seq = Array.new
  end

  def play
    system("clear")
    puts "Hello, let's play Simon!"
    sleep 0.5
    until @game_over
      take_turn
      system("clear")
    end
    puts "The sequence was #{@seq}".colorize(:light_black)
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    unless @game_over
      round_success_message
      sleep 1
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      case color
      when "blue"
        puts "The color is " + "#{color}".colorize(:light_blue) + "."
      when "red"
        puts "The color is " + "#{color}".colorize(:light_red) + "."
      when "yellow"
        puts "The color is " + "#{color}".colorize(:light_yellow) + "."
      when "green"
        puts "The color is " + "#{color}".colorize(:light_green) + "."
      end
      3.times do
        puts "...".colorize(:red)
        sleep 0.50
      end
      system("clear")
    end
  end

  def require_sequence
    puts "Enter the Colors in the sequence they appear in: ".colorize(:light_magenta)
    user_color = gets.chomp.strip.downcase
    if @seq.join(" ") != user_color
      @game_over = true
    end
    system("clear")
    sleep 0.25
  end

  def add_random_color
    random_color = COLORS.sample
    @seq << random_color
  end

  def round_success_message
    puts "Round success!".colorize(:light_magenta)
  end

  def game_over_message
    puts "Game Over! You made #{sequence_length - 1} round(s)!".colorize(:light_green)
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
  
end

new_game = Simon.new
new_game.play
