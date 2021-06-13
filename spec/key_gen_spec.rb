require_relative './spec_helper'

RSpec.describe KeyGen do
  context 'instantiation' do
    it 'exists' do
      key_gen = KeyGen.new
      expect(key_gen).to be_a(KeyGen)
    end
  end
end