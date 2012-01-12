require 'fileutils'
require 'erb'

SOURCE = File.dirname(__FILE__)

task :default => :CreateEmbeds

task :CreateManifest do
	Dir.glob("**/").each do |path|
		Dir.glob(File.join(SOURCE,path,"*.png")).each do |file|
			basename = File.basename(file,'.png')
			puts "background_bg_#{basename}|assets\\builder\\background\\#{path.gsub("/","\\")}#{basename}.png"
		end
	end
end

task :CreateEmbeds do
	puts "Copy Into GroundTilerAssets" 
	
	files = {}
	file_template = File.open("GroundTilerAssets.hx.erb").read

	Dir.glob("**/").each do |path|
		files[path] = [] 
		Dir.glob(File.join(SOURCE,path,"*.png")).each do |file|
			basename = File.basename(file,'.png')
			files[path] << basename
		end
	end

	template = ERB.new file_template

	output = File.new("GroundTilerAssets.hx", "w")
	output.write(template.result(binding))
	output.close

end

