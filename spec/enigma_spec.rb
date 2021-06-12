require_relative './spec_helper'
require 'date'

RSpec.describe Enigma do
  context 'instantiation' do
    it 'exists' do
      enigma = Enigma.new
      expect(enigma).to be_a(Enigma)
    end
  end

  context 'methods' do
    xit 'encrypts messages'
      enigma = Enigma.new
      encryption = {
        encryption: "keder ohulw",
        key: "02715",
        date: "040895"
      }
      expect(enigma.encrypt("hello world", "02715", "040895")).to eq(encryption)
    end

    xit 'decrypts messages' do
      enigma = Enigma.new
      decryption = {
        decryption: "hello world",
        key: "02715",
        date: "040895"
      }
      expect(enigma.decrypt("keder ohulw", "02715", "040895"))
    end
  end
end