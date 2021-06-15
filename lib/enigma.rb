require_relative './encryption'
require_relative './decryption'

class Enigma
  attr_reader :encryption, :decryption

  def encrypt(message, key = nil, date = Date.today.strftime('%d%m%y'))
    @encryption = Encryption.new(key, date)
    result = @encryption.encrypt(message)
    Hash[encryption: result, key: @encryption.key, date: date]
  end

  def decrypt(message, key = nil, date = Date.today.strftime('%d%m%y'))
    @decryption = Decryption.new(key, date)
    result = @decryption.decrypt(message)
    Hash[decryption: result, key: @decryption.key, date: date]
  end
end
