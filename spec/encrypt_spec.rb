require_relative './spec_helper'

RSpec.describe Encrypt do
  context 'instantiation' do
    it 'exists' do
      e = Encrypt.new
      expect(e).to be_a(Encrypt)
    end
  end
end