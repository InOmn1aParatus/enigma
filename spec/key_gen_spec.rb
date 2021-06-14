require_relative './spec_helper'

RSpec.describe KeyGen do
  context 'instantiation' do
    it 'exists' do
      key_gen = KeyGen.new
      expect(key_gen).to be_a(KeyGen)
    end
  end

  context 'methods' do
    it 'generates random key' do
      key_gen = KeyGen.new
      expect(key_gen.gen).to be_a(String)
      expect(key_gen.gen.length).to eq(5)
    end
  end
end
