class CharacterList
  attr_reader :list

  def initialize
    @list = ('a'..'z').to_a << ' '
  end
end
