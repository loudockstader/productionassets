require 'fileutils'
require 'erb'

CARDINAL_DIRECTIONS = ["south-east", "south", "south-west","west","north-west", "north", "north-east", "east"]

class String

	def camelcase
	  	self.gsub!("_", " ")
	  	self.gsub!("-", " ")
	  	self.gsub!(/^[a-z]|\s+[a-z]/) { |a| a.upcase }
	  	self.gsub!(/\s/, '')
	  	self.dup
	end

	def decapitalize 
	  self[0, 1].downcase + self[1..-1]
	end

	def capitalize 
	  self[0, 1].upcase + self[1..-1]
	end

end

class Visitor

	def initialize id
		@id = id
		@states = []
	end
	
	def add_state state
		@states << state
	end
	
	def export dir, package = "tmp.visitors"
		target = File.join dir, @id
		embed_data = {}
		@states.each do |state|
			embed_data[state.id] = {}
			CARDINAL_DIRECTIONS.each do |direction|
				embed_data[state.id][direction] = []
				frame = 0
				state.directions[direction].each do |png|
					dir = File.join @id, state.id, direction
					file = "#{@id}_#{state.id}_#{direction}_#{frame}.png"
					puts "copy: #{png} to #{File.join(package.gsub(".","/"),dir,file)}"
					FileUtils.mkdir_p File.join(target,package.gsub(".","/"),dir) unless File.directory? File.join(target,package.gsub(".","/"),dir)
					FileUtils.cp png, File.join(target,package.gsub(".","/"),dir,file)	
					embed_data[state.id][direction] << { :filename => File.join(package.gsub(".","/"),dir,file), :classname => file.gsub(".png","").camelcase }
					frame+=1
				end
			end	
		end
		classfile = File.join(package.gsub(".","/"),"#{@id.capitalize}Assets.hx")
		puts "creating assets classfile: #{classfile}"
		template = File.open(File.join(File.dirname(__FILE__),"VisitorAssets.hx.erb")).read
		File.open(File.join(target,classfile), 'w') {|f| f.write(ERB.new(template).result(binding)) }
	end	

end

class State

	attr_reader :id

	def initialize id
		@id = id
	end

	def directions
		@directions ||= begin
			@directions = {}
			CARDINAL_DIRECTIONS.each { |direction| @directions[direction] = [] }
			@directions
		end
	end

end 