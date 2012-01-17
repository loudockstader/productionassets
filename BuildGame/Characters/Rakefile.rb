require File.dirname(__FILE__) + '/.lib/visitor_exporter'

EXPORT = File.dirname(__FILE__) + '/export'

task :generate => [:builder_bob,:temporary_pedestrian]
task :default => :generate

task :builder_bob do
	FileUtils.rm_rf File.join(EXPORT,'bob')
	dir = File.join(File.join( File.dirname(__FILE__),"HostCharacters","Builder Bob copy"))
	bob = Visitor.new 'bob'
	idle = State.new 'idle'
	idle.directions["north"] << Dir.glob(File.join( dir,"bld_host4_walking_back","*.png")).first
	idle.directions["north-east"] << Dir.glob(File.join( dir,"bld_host4_walking_back_iso","*.png")).first
	idle.directions["south"] << Dir.glob(File.join( dir,"bld_host4_walking_front","*.png")).first
	idle.directions["south-west"] << Dir.glob(File.join( dir,"bld_host4_walking_front_iso","*.png")).first
	idle.directions["west"] << Dir.glob(File.join( dir,"bld_host4_walking_side_left","*.png")).first
	idle.directions["north-west"] << Dir.glob(File.join( dir,"bld_host4_walking_side_left_iso","*.png")).first
	idle.directions["east"] << Dir.glob(File.join( dir,"bld_host4_walking_side_right","*.png")).first
	idle.directions["south-east"] << Dir.glob(File.join( dir,"bld_host4_walking_side_right_iso","*.png")).first
	walking = State.new 'walking'
	walking.directions["north"] += Dir.glob(File.join( dir,"bld_host4_walking_back","*.png"))
	walking.directions["north-east"] += Dir.glob(File.join( dir,"bld_host4_walking_back_iso","*.png"))
	walking.directions["south"] += Dir.glob(File.join( dir,"bld_host4_walking_front","*.png"))
	walking.directions["south-west"] += Dir.glob(File.join( dir,"bld_host4_walking_front_iso","*.png"))
	walking.directions["west"] += Dir.glob(File.join( dir,"bld_host4_walking_side_left","*.png"))
	walking.directions["north-west"] += Dir.glob(File.join( dir,"bld_host4_walking_side_left_iso","*.png"))
	walking.directions["east"] += Dir.glob(File.join( dir,"bld_host4_walking_side_right","*.png"))
	walking.directions["south-east"] += Dir.glob(File.join( dir,"bld_host4_walking_side_right_iso","*.png"))
	bob.add_state idle
	bob.add_state walking
	bob.export EXPORT
end

task :temporary_pedestrian do
	FileUtils.rm_rf File.join(EXPORT,'warrior')
	dir = File.join(File.join( File.dirname(__FILE__),"TemporaryPedestrian","images"))
	warrior = Visitor.new 'warrior'
	idle = State.new 'idle'
	images = Dir.glob(File.join(dir,"*.png"))
	CARDINAL_DIRECTIONS.each do |direction|
		6.times { |i| idle.directions[direction] << images.shift unless i > 0 }
	end
	images = Dir.glob(File.join(dir,"*.png"))
	walking = State.new 'walking'
	CARDINAL_DIRECTIONS.each do |direction|
		6.times { walking.directions[direction] << images.shift }
	end
	warrior.add_state idle
	warrior.add_state walking
	warrior.export EXPORT
end