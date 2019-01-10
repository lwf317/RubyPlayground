require 'digest'

def traverse_and_md5_hash_iso_files(start_dir)
	Dir.foreach start_dir do |entry|
		if (File.file? entry) && (File.extname(entry) == ".iso")
			digest_value = Digest::MD5.file entry
			out_filename = File.basename(entry, ".*") + "-MD5.txt"
			File.open(out_filename, "w") do |file|
				file.puts "MD5 hash of #{entry}"
				file.puts digest_value
			end
		end
	end
end

def main()
	start_dir = ARGV[0]
	Dir.chdir start_dir do
		traverse_and_md5_hash_iso_files start_dir
	end
end

main()
