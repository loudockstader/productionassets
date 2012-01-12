require 'fileutils'

PRE_SOURCE = File.dirname(__FILE__) + "/pre_source"
OUTPUT_DIR = File.dirname(__FILE__) + "/asset_source"

Dir.glob(File.join(PRE_SOURCE,"commercial","*.png")).each do |file|
	basename = File.basename(file,'.png').gsub(" ","")
	target = File.join(OUTPUT_DIR,"com_#{basename}","Generate","com_#{basename}_01.png")
	FileUtils.mkdir_p(File.dirname(target)) unless File.directory? File.dirname(target)
	FileUtils.cp file, target
end

Dir.glob(File.join(PRE_SOURCE,"hotels","*.png")).each do |file|
	basename = File.basename(file,'.png').gsub(" ","")
	target = File.join(OUTPUT_DIR,"hot_#{basename}","Generate","hot_#{basename}_01.png")
	FileUtils.mkdir_p(File.dirname(target)) unless File.directory? File.dirname(target)
	FileUtils.cp file, target
end

Dir.glob(File.join(PRE_SOURCE,"ratpacks","*.png")).each do |file|
	basename = File.basename(file,'.png').gsub(" ","")
	target = File.join(OUTPUT_DIR,"rat_#{basename}","Generate","rat_#{basename}_01.png")
	FileUtils.mkdir_p(File.dirname(target)) unless File.directory? File.dirname(target)
	FileUtils.cp file, target
end


