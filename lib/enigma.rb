require_relative './character_list'
require_relative './encryption'
require_relative './decryption'
require_relative './offset'

class Enigma
  attr_reader :characters

  def initialize
    @characters = CharacterList.new.list
    # @encrypt = Encryption.new.encrypt
    # @encrypt = Decryption.new.decrypt
    # @key = KeyGen.new
    # @offset = Offset.new
  end
end
