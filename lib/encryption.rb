require_relative './character_list'
require_relative './offset'

class Encryption
  attr_reader :characters,
              :offset,
              :shifts,
              :key,
              :date

  def initialize(key = nil, date = nil)
    @key = key
    @date = date
    @characters = CharacterList.new.list
    @offset = Offset.new(key, date)
  end

  def encrypt_a(char)
    encryptor = Hash[@characters.zip(@characters.rotate(@offset.shifts[0]))]
    encryptor.fetch(char, char)
  end

  def encrypt_b(char)
    encryptor = Hash[@characters.zip(@characters.rotate(@offset.shifts[1]))]
    encryptor.fetch(char, char)
  end

  def encrypt_c(char)
    encryptor = Hash[@characters.zip(@characters.rotate(@offset.shifts[2]))]
    encryptor.fetch(char, char)
  end

  def encrypt_d(char)
    encryptor = Hash[@characters.zip(@characters.rotate(@offset.shifts[3]))]
    encryptor.fetch(char, char)
  end

  def encrypt(message)
    x = 0
    encryption = []
    input = message.downcase
    while x < input.length
      if x % 4 == 0 || x == 0
        encryption << encrypt_a(input[x])
      elsif x % 4 == 1 || x == 1
        encryption << encrypt_b(input[x])
      elsif x % 4 == 2 || x == 2
        encryption << encrypt_c(input[x])
      elsif x % 4 == 3 || x == 3
        encryption << encrypt_d(input[x])
      end
      x += 1
      encrypted_message = encryption.join
    end
    encrypted_message
  end

  def print
    "Created '#{ARGV[1]}' with the key #{@offset.key} and date #{@offset.date}."
  end
end
