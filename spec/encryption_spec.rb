require_relative './spec_helper'

RSpec.describe Encryption do
  context 'instantiation' do
    it 'exists' do
      e = Encryption.new
      expect(e).to be_a(Encryption)
    end
  end
end