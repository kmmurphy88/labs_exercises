class PersonalChef
  def make_toast(color)
  	puts "Making your toast #{color}"
  	return self
  end

  def make_eggs(quantity)
  	quantity.times do
  	puts "Making an egg."
  end
  puts "I'm done!"
  return self
  end

  def make_milkshake(flavor)
  	puts "Making you a #{flavor} milkshake!"
  	return self
  end

  def good_morning
  	"Happy #{Date.today.strftime("%A")}! It is the #{Date.today.yday}st day of #{Date.today.year}!"
  end
end

 frank = PersonalChef.new

puts frank.good_morning

 class Butler
   def open_front_door
   end

   def open_door(door)
   	puts "Opening the #{door} door."
  end
 end

jeeves = Butler.new

class Dog
	def poop_in_yard(quantity)
		quantity.times do
		puts "Arf!"
		return self
	end
end

Cooper = Dog.new
