require 'yaml'
class Margaret

	MYYAML = YAML.load_file('data.yaml')
	def initialize(msg=MYYAML)
		p @msg = msg
	end

	def add_msg(msg)
		@msg[:messages][:Margaret] << msg
		f4 = File.open("data.yaml",'w+')
		f4.puts YAML::dump(@msg)
		f4.close
		@msg
	end
end

@first = ARGV[0]
margaret = Margaret.new
p margaret.add_msg(@first)