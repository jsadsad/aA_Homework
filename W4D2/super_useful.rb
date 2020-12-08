def convert_to_int(str)
  Integer(str)
end

class CoffeeError < StandardError
  def message
    "No more caffeine for me please"
  end
end

class NotAFruitError < StandardError
  def message
    "That's not a fruit, you trickster!"
  end
end

FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise CoffeeError 
  else
    raise NotAFruitError
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue CoffeeError => e
    puts e.message
    retry
  rescue NotAFruitError => e
    puts e.message
    retry
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise ArgumentError.new("'Name can not be empty'") if name.empty?
    raise ArgumentError.new("'Years known must be greater than or equal to 5'") if yrs_known.to_i < 5
    raise ArgumentError.new("'Favorite pastime can not be empty'") if fav_pastime.empty?
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known} years! Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. 😄"
  end

  def give_friendship_bracelet
    puts "Hey #{@name}, I made you a friendship bracelet! It says my name so you never forget me." 
  end
end


