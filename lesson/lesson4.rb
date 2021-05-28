# 初探数组

## 1.数组定义


games = ['绝地求生','节奏光剑',"半衰期Alyx"]
puts games

## 2.数组循环
###	方法1
games.each do |game|
	puts "我爱<<#{game}>>"
end

### 方法2
games.each_with_index do |game,i|
	puts "#{i+1}.#{game}"
end

## 3.数组连接

puts games.join(",")


### 判断是否是一个数组
if games.respond_to("each")
end