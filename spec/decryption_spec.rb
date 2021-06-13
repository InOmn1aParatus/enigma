require_relative './spec_helper'

RSpec.describe Decryption do
  context 'instantiation' do
    it 'exists' do
      d = Decryption.new
      expect(d).to be_a(Decryption)
    end
  end
end