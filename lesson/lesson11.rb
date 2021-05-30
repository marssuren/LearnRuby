class Game

	def self.showStr
		puts "I love this Game"
	end
end

leg = Game.new()
leg.showStr()

Game.showStr()
Game::showStr()