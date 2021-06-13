require_relative './character_list'
require_relative './encrypt'
require_relative './decrypt'

class Enigma
  attr_reader :characters

  def initialize
    @characters = CharacterList.new.list
    # @encrypt = Encrypt.new.encrypt
    # @encrypt = Decrypt.new.decrypt
  end
end