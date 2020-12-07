class User
	attr_accessor :favorite_color

	def initialize(fname, lname)
		@first_name = fname
		@last_name = lname
	end

	def say_name
		puts "Hi, I'm #{@first_name}!"
	end
end

user1 = User.new("Josh","Clarence")

class Admin < User
	def say_name
		super
		puts "I'm an admin user."
	end 
end

admin_user = Admin.new("Jane", "Smith")

puts admin_user.inspect

admin_user.say_name


=begin

- < Allows the inheritance of power. For instance, the admins.
-the -super- is a special key word that allows to add from a class
already mentioned above.

=begin

class User
	attr_accessor :favorite_color

	def initialize(fname, lname)
			@first_name = fname
			@last_name = lname
	end

	def say_name
			puts "Hi, I'm #{@first_name}!"
	end

	def post_tweet
		puts "Tweet posted."
	end
end

user1 = User.new("Josh","Doe")

user1.say_name

user1.favorite_color = "Green"
puts user1.favorite_color

user2= User.new("Chris","Smith")

=end

=begin

-Over time, Computer Scientists realized they neeed a better way
to organize code.
-Functions are like little blueprints/instructions that tell
the machine what to do.
-A class is a collection of functions and collection of variables
that are all related to 1 thing.
-Line 7 has the -.new syntax. This is instantiation. It takes
blueprint and brings one of them to life. In this case a user.
-Line 3 is a function that sets defaults for the user. In this case,
2 parameters of first name and last name.
-The @ symbol indicates that we are using instance variables.
-When you bring one of them to life, each instance of your users
can have specific variables.
attr_accessor will add features to users on the fly for futre usage.
-Everything after the last end (user.) is an onject.
-When you creae a (dot)new next to. a class, you are creating an object.

=end

=begin

def power(base, exponent)
	result = 1
	exponent.times do
		result = result * base
	end
	result
end
  
puts power 2, 3

=end

=begin

-Add parenthesis next to the method name (power), then you
can pass in parameters(arguments). This is a pass in of data.
-The result on LINE 2 is a power function that will only work for 
positive integers. 
-The function above will computer 2x2x2.
-Line 1 allows the function to create a few parameters. The first
was labeled base, the second as exponent. def = define
-Line 2 has the result as 1 to make a starting base.
-Line 3 has .times combined with integers will create a loop
and it'll (do) the follwing how many time the (exponent) was.
-Line 9 does not require the paranthesis. It's just a easy
giveaway for beginners.
-Line 9 is also the key. The numbers that are put inside the
variable function.
-#comment is good for single-line comment.

=begin

def say_hello
	puts "Hello, World!"
	puts "Mr. Josh, how is your day?"=end 

end

say_hello

=end

=begin

-Without LINE 5 above, the function above will not be evoked.
-It gets executed because of LINE 5.
-Methods in the ruby language can accept data from the outside.
-Methods by default will always have a return value.
-Sometimes we need to add more to the programming language. We
call these functions. In Ruby, this is called Methods. They
are like little instructions that we come up with to build programs.

=end

=begin

-We are looping through. Hashes are keys and values. They 
are key value pairs. Just make program is consistent with the
variable name.
-String interpolation is another method of adding strings together
while accomplishing the same and is usually preferred over
concatenating strings with +.
-String interpolation using the syntax:

name = "Ada"
puts "Hello, #{name}!"

-it is now embedded.

player_scores = [49,59,21,41]

hash_of_players = { player1: "Zoshu", player2: "Presteasy" }

hash_of_players.each do |key, value|
	puts "#{key}: #{value}"
end

=end

=begin

-The beneits of using MAP is that it uses a new array of scares 
under a new variable name.

player_scores = [20, 57, 49, 32]

upgraded_player_scores = player_scores.map { |x| x + 10}

print player_scores
print "\n"

print upgraded_player_scores
print "\n"

=end 

=begin

-This is a simplified short-hand version. All we did was change
the first curly brace from "do".

player_scores = [21, 49, 40, 121]

player_scores.each { |score| puts "Player score: #{score}"} 



=begin

-This is a good example of iterators. The iterator being score.
-Come up with a variable name. X,Y,Score,etc.

player_scores = [50, 100, 30, 60]

player_scores.each do |score|
	if scor  > 50
		puts "PLAYER score: #{score}"
	end
end



=end

=begin

array_of_names = ["John", "Mary", "Joe", 3, true, [3,4]]

hash_of_names = {first_name:"John", last_name: "Doe", email: "john@gmail.com" }

puts hash_of_names[:first_name]

=end

=begin

array_of_names = [ "John", "Mary", "Joe"]

array_of_names << "Jane"

array_of_names.push("Tom")

array_of_names.unshift("Adam")

print array_of_names
print "\n"

array_of_names.shift
array_of_names.pop

print array_of_names
print "\n"

puts array_of_names[0]

puts array_of_names.last

=end

=begin

user_signed_in = true
paying_user = true

puts user_signed_in && paying_user ? "Welcome to Netflix!" : "Sign Up"

=end

=begin 

users = 50

unless users >= 100
	puts "we haven't hit 100 users yet."
end

=end

=begin (this is how to comment)

users = 50

if (users > 50)
    puts "Hey, we've got over 50 users!"
elsif users == 50
	puts "We have 50 users"
else
    puts "We haven't hit 50 yet..."

end

=end

=begin

&& is a boolean and. It returns the second argument if the 1st and 2nd
argument is true. 

=end
