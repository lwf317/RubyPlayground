def read_exclude_items_list(exclude_file)
	the_list = []
	File.open(exclude_file, "r") do |file|
		file.each_line do |line|
			the_list << "#{line.chomp}.csv"
		end
	end
	the_list
end

def validate_excluded_items(start_dir, list)
	failed_list = []
	list.each do |item|
		if File.exist?(File.join(start_dir, item))
			failed_list << item
		end
	end
	failed_list
end

def main()
	start_dir = ARGV[0]
	exclude_file = ARGV[1]

	list = read_exclude_items_list(exclude_file)
	failed_list = validate_excluded_items(start_dir, list)

	puts failed_list.empty? ? "OK" : "Failed"
	failed_list.each {|item| puts "#{item} exist!" }
end

main()
