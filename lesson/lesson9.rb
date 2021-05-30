#哈希变量
game ={
	"name" =>"英雄联盟",
	"price"=>0,
}

puts game['name']

##类似json使用
player = {
	name:"harden",
	age:28,
	point:30.8
}

puts player
puts player[:name]+", " +player[:age].to_s+", " +player[:point].to_s

map = {}
map['child'] = {'child'="123"}
puts map