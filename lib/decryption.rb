require_relative './character_list'
require_relative './offset'

class Decryption
  attr_reader :characters,
              :offset,
              :shifts

  def initialize(key = nil, date = nil)
    @key = key
    @date = date
    @characters = CharacterList.new.list.reverse
    @shifts = Offset.new(key, date).shifts
  end

  def decrypt_a(char)
    decryptor = Hash[@characters.zip(@characters.rotate(@shifts[0]))]
    decryptor.fetch(char, char)
  end

  def decrypt_b(char)
    decryptor = Hash[@characters.zip(@characters.rotate(@shifts[1]))]
    decryptor.fetch(char, char)
  end

  def decrypt_c(char)
    decryptor = Hash[@characters.zip(@characters.rotate(@shifts[2]))]
    decryptor.fetch(char, char)
  end

  def decrypt_d(char)
    decryptor = Hash[@characters.zip(@characters.rotate(@shifts[3]))]
    decryptor.fetch(char, char)
  end

  def decrypt(message)
    x = 0
    decryption = []
    input = message.downcase
    while x < input.length
      if x % 4 == 0 || x == 0
        decryption << decrypt_a(input[x])
      elsif x % 4 == 1 || x == 1
        decryption << decrypt_b(input[x])
      elsif x % 4 == 2 || x == 2
        decryption << decrypt_c(input[x])
      elsif x % 4 == 3 || x == 3
        decryption << decrypt_d(input[x])
      end
      x += 1
      decrypted_message = decryption.join
    end
    decrypted_message
  end
end
