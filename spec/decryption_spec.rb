require_relative './spec_helper'

RSpec.describe Decryption do
  context 'instantiation' do
    it 'exists' do
      de = Decryption.new
      expect(de).to be_a(Decryption)
    end

    it 'hosts character list' do
      de = Decryption.new
      expect(de.characters[0]).to eq('a')
      expect(de.characters[26]).to eq(' ')
    end

    it 'has access to offset shifts' do
      de = Decryption.new('12345', '200989')
      expect(de.shifts[0]).to eq(20)
      expect(de.shifts[1]).to eq(24)
      expect(de.shifts[2]).to eq(36)
      expect(de.shifts[3]).to eq(46)
    end
  end

  context 'methods' do
    it 'decrypts letters' do
      de = Decryption.new('12345', '200989')
      expect(de.decrypt_a('a')).to eq('u')
      expect(de.decrypt_a('!')).to eq('!')
    end

    it 'decrypts message' do
      de1 = Decryption.new("02715", "040895")
      expect(de1.decrypt("Hello World")).to eq("keder ohulw")
      de2 = Decryption.new('12345', '200989')
      expect(de2.decrypt("Hello World")).to eq("abudhxegkim")
    end
  end
end
