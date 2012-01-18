require 'fileutils'
require 'erb'

SOURCE = File.dirname(__FILE__)

task :default => :CreateMockDataService

task :CreateMockDataService do
	
	assets = Array.new
	file_template = File.open("MockBuilderDataService.hx.erb").read

	Dir.glob(File.join(SOURCE,"asset_export","*.iaf")).each do |file|
		basename = File.basename(file,'.iaf')
		
		zone = basename.split("_").first
		if (zone == "com" || zone == "hot" || zone == "rat")
			zone = basename
		end
		
		assets << {:basename => basename, :zone => zone};
	end

	template = ERB.new file_template

	output = File.new("MockBuilderDataService.hx", "w")
	output.write(template.result(binding))
	output.close
end

desc "ensures that at least a default folder exists for each asset directory"
task :DefaultFolders do

	assets = Dir.glob(File.join(SOURCE, "asset_source", "*"))
	assets.each do |asset|
		unless begin
				contains_dirs = false
				Dir.glob(File.join(asset,"*")).each do |sub|
					contains_dirs = true if File.directory?(sub)
				end
				contains_dirs 
			end
			pngs = Dir.glob(File.join(asset,"*.png"))
			FileUtils.mkdir_p File.join(asset,"default")
			pngs.each do |png|
				FileUtils.cp png, File.join(asset,"default",File.basename(png))
				FileUtils.rm png
			end
		end
	end

end

desc "write out an asset manifest for the files in asset_export"
task :Manifest do

	Dir.glob(File.join(SOURCE,"asset_export","*.iaf")).each do |file|
		basename = File.basename(file,'.iaf').gsub(" ","")
		puts "#{basename}|#{basename}.iaf"
	end

end