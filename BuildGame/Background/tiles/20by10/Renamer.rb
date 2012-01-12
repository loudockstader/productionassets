require 'fileutils'

SOURCE = File.dirname(__FILE__)

Dir.glob(File.join(SOURCE,"*.png")).each do |file|
	basename = File.basename(file,'.png').gsub("10by20","20by10")
	target = File.join(SOURCE,basename + ".png")
	FileUtils.cp file, target unless File.exists? target
end