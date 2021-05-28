class Player
	def initialize(name = "defaultPlayer")
		@name = name
	end
	def show()
		puts "player: #{@name}"
	end
end

p1 = Player.new()
p1.show()

p2 = Player.new("Newbee")
p2.show()

puts Player.instance_methods(false)

if p1.respond_to?("show")
	p1.send("show")
end