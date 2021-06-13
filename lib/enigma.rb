require_relative './character_list'
require_relative './encrypt'
require_relative './decrypt'
require_relative './key_gen'
require_relative './offset'

class Enigma
  attr_reader :characters

  def initialize
    @characters = CharacterList.new.list
    # @encrypt = Encrypt.new.encrypt
    # @encrypt = Decrypt.new.decrypt
    # @key = KeyGen.new
    # @offset = Offset.new
  end
end