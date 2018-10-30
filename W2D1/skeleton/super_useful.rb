# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue 
    "invalid input"
    #return nil or below
    return 'nil'
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include?(maybe_fruit)
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    if maybe_fruit == "coffee"
      raise ArgumentError.new "coffee"
    else 
      raise ArgumentError
    end
  end 
end

def feed_me_a_fruit
  begin
    puts "Hello, I am a friendly monster. :)"

    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    
    reaction(maybe_fruit)
  rescue ArgumentError => e
    puts "RESCUE ACTIVATED"
    
    if e.message == "coffee"
      puts "This isn't a fruit. Try again!"
      retry
    end
  end 
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
    raise ArgumentError.new "I have only known you for #{@yrs_known}." if @yrs_known <= 5
    raise ArgumentError.new "You don't have a favorite past time?" if @fav_pastime == ''
    raise ArgumentError.new "You don't have a name?" if @name == ''
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


