#class 类继承

class Game
	def initialize(id,name,price)
		@id = id;
		@name = name;
		@price = price;
	end

	def showName()
		puts @name
	end

	def self.toStr
		puts "i love this game !"
	end
end

class PCGame < Game
	def info
		puts "我是PCGame"
	end
end

yxlm = PCGame.new("1","英雄联盟",0)
yxlm.showName()