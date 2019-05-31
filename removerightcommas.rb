def remove_right_commas(str)
	mo = /,+$/.match(str)
	if mo
		mo.pre_match
	else
		str
	end
end

def run(file_name)
	file_name2 = file_name + ".alt"
	File.open(file_name, 'r') do |file|
		File.open(file_name2, 'w') do |file2|
			file.each_line do |line|
				line2 = remove_right_commas(line)
				file2.puts(line2)
			end
		end
	end
end


def main()
	if ARGV.length != 2
		puts "Need input a file name."
		return
	end
	file_name = ARGV[0]
	run(file_name)
end

main()