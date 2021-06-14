require_relative './character_list'
require_relative './offset'
class Encryption
  attr_reader :characters

  def initialize
    @characters = CharacterList.new.list
  end
end
