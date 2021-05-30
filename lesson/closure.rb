$files = Hash.new
$files =
{
	1=>{
		"id"=> 1,
		"filename"=>"rootFile",
		"filelist"=>[2,3]
	},
	2=>{
		"id"=>2,
		"filename"=>"childFile2",
		"filelist"=>[4],
		"rootId"=>1
	},
	3=>{
		"id"=>3,
		"filename"=>"childFile3",
		"rootId"=>1
	},
	4=>{
		"id"=>4,
		"filename"=>"childFile4",
		"rootId"=>1
	}
}

def checkFile(fileId)
	file = $files[fileId]
	# puts file
	map = {}
	filelist = file["filelist"]
	map['id'] = file['id']
	map['filename'] = file['filename']
	if nil != filelist
		# puts filelist
		fs = []
		for f in filelist do
			ff = checkFile(f)
			fs << ff
		end
		map['filelist'] = fs
	end
	return map
end



class File
	def initialize(id,name,filelist = nil)
		@id = id;
		@name = name;
		@filelist = filelist
	end
	
end

# def checkFiles(files)
# 	map = {}
# 	files.each do |item|
# 		if item['rootId'] == nil
# 			map['id'] = item['id']
# 			map['filename'] = item['filename']
# 			filelist =item['filelist'] 
# 			if nil != filelist
# 				fs = []
# 				for file in filelist do
					
# 				end
# 				map['filelist'] = fs
# 			end
# 		end
# 	end
# 	return map
# end



mp = checkFile(1)
puts mp

# fs = {
# 	1=>{
# 		"id"=>12
# 	}
# }
# puts fs[1]["id"]
# puts fs.keys

{"filelist"=>[{"filelist"=>[{"id"=>4, "filename"=>"childFile4"}]}, {"id"=>3, "filename"=>"childFile"}]}