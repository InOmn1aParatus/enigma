require_relative './encryption'
require_relative './decryption'

class Enigma

  def encrypt(message, key = nil, date = nil)
    result = Encryption.new(key, date).encrypt(message)
    Hash[ encryption: result, key: key, date: date]
  end

  def decrypt(message, key = nil, date = nil)
    result = Decryption.new(key, date).decrypt(message)
    Hash[ decryption: result, key: key, date: date]
  end
  
end
