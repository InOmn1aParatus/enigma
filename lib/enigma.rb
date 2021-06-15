require_relative './encryption'
require_relative './decryption'

class Enigma
  attr_reader :encryption, :decryption

  def encrypt(message, key = nil, date = nil)
    @encryption = Encryption.new(key, date)
    result = @encryption.encrypt(message)
    Hash[encryption: result, key: @encryption.offset.key, date: @encryption.offset.date]
  end

  def decrypt(message, key = nil, date = nil)
    @decryption = Decryption.new(key, date)
    result = @decryption.decrypt(message)
    Hash[decryption: result, key: @decryption.offset.key, date: @decryption.offset.date]
  end
end
