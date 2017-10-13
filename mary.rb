require 'yaml'
class Mary

	MYYAML = YAML.load_file('data.yaml')
	def initialize(msg=MYYAML)
		p @msg = msg
	end

	def add_msg(msg)
		@msg[:Mary] << msg
		f4 = File.open("data.yaml",'w+')
		f4.puts YAML::dump(@msg)
		f4.close
		@msg
	end
end

@first = ARGV[0]
mary = Mary.new
p mary.add_msg(@first)