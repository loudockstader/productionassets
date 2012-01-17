require 'fileutils'

ASSET_EXPORT = File.dirname(__FILE__) + "/asset_export"

Dir.glob(File.join(ASSET_EXPORT,"*.iaf")).each do |file|
	basename = File.basename(file,'.iaf').gsub(" ","")
	puts "#{basename}|#{basename}.iaf"
end


