require_relative '../config/environment'
require_relative '../bin/command_line.rb'




puts "Welcome! Ready to take your personality quiz?"
command = Command.new
command.run
