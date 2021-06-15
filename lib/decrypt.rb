require_relative './file_io'
require_relative './enigma'

file_io = FileIO.new
message = file_io.message
enigma = Enigma.new
file_io.output(enigma.decrypt(message))
puts enigma.decryption.print