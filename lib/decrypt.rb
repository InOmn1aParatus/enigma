require_relative './file_io'
require_relative './enigma'

file_io = FileIO.new
message = file_io.message
enigma = Enigma.new
file_io.output(enigma.decrypt(message, ARGV[2].to_s, ARGV[3].to_s))
puts enigma.decryption.print
