require_relative './spec_helper'

RSpec.describe Decrypt do
  context 'instantiation' do
    it 'exists' do
      d = Decrypt.new
      expect(d).to be_a(Decrypt)
    end
  end
end