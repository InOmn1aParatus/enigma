require_relative './spec_helper'
require 'date'

RSpec.describe Enigma do
  context 'instantiation' do
    it 'exists' do
      enigma = Enigma.new
      expect(enigma).to be_a(Enigma)
    end
  end
end