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

    it 'has access to offset shifts' do
      en = Encryption.new('12345', '200989')
      expect(en.offset.shifts[0]).to eq(20)
      expect(en.offset.shifts[1]).to eq(24)
      expect(en.offset.shifts[2]).to eq(36)
      expect(en.offset.shifts[3]).to eq(46)
    end
  end

  context 'methods' do
    it 'encrypts letters' do
      en = Encryption.new('12345', '200989')
      expect(en.encrypt_a('a')).to eq('u')
      expect(en.encrypt_a('!')).to eq('!')
    end

    it 'encrypts message' do
      en1 = Encryption.new("02715", "040895")
      expect(en1.encrypt("Hello World")).to eq("keder ohulw")
      en2 = Encryption.new('12345', '200989')
      expect(en2.encrypt("Hello World")).to eq("abudhxegkim")
    end
  end
end
