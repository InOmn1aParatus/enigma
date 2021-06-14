require_relative './spec_helper'

RSpec.describe Offset do
  context 'instantiation' do
    it 'exists' do
      offset = Offset.new
      expect(offset).to be_a(Offset)
    end
  end

  context ' methods' do
    it 'generates random key' do
      offset = Offset.new
      expect(offset.key_gen.length).to eq(5)
    end
    
    it 'generates offset based on given date' do
      offset = Offset.new
      expect(offset.generate('200989')).to eq('8121')
    end
  end
end
