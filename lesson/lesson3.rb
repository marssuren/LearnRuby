class Game
	attr_accessor :price

	def initialize(title="英雄联盟",price=100)
		@title = title
		@price = price
	end

	def show()
		puts	"标题 #{@title}"
		puts	"价格 #{@price}"
	end
end

myGame = Game.new()
myGame.price = 200
myGame.title = "小游戏"
myGame.show()

puts "title is " + myGame.respond_to?("title").to_s
puts "price is " + myGame.respond_to?("price").to_s
