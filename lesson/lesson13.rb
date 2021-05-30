# 模块

module BaseFunc
	Version = "1.00"
	def v()
		return Version
	end

	def self.showVersion()
		return Version
	end
	
	#将v方法定义范围静态方法
	module_function :v
end

class BaseClass include BaseFunc

end

puts BaseFunc::Version
puts BaseFunc.showVersion
puts BaseFunc::showVersion
puts BaseFunc.v