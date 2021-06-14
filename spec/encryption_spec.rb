require_relative './spec_helper'

RSpec.describe Encryption do
  context 'instantiation' do
    it 'exists' do
      en = Encryption.new
      expect(en).to be_a(Encryption)
    end

    it 'hosts character list' do
      en = Encryption.new
      expect(en.characters[0]).to eq('a')
      expect(en.characters[26]).to eq(' ')
    end
  end

  context 'methods' do

    # xit 'encrypts messages'
    #   en = Encryption.new
    #   encryption = {
    #     encryption: "keder ohulw",
    #     key: "02715",
    #     date: "040895"
    #   }
    #   expect(en.encrypt("hello world", "02715", "040895")).to eq(encryption)
    # end
  end
end
