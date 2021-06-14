require_relative './spec_helper'

RSpec.describe Offset do
  context 'instantiation' do
    it 'exists' do
      offset = Offset.new
      expect(offset).to be_a(Offset)
    end

    it 'generates key and date attributes when none are given' do
      allow_any_instance_of(Offset).to receive(:key_gen).and_return('12345')
      allow(Date).to receive(:today).and_return(Date.new(2021, 06, 14))
      offset = Offset.new
      expect(offset.key).to eq('12345')
      expect(offset.offset).to eq('5641')
    end
  end

  context 'methods' do
    it 'generates random key' do
      offset = Offset.new
      expect(offset.key_gen.length).to eq(5)
    end
    
    it 'generates offset based on given date' do
      offset = Offset.new(date: '200989')
      expect(offset.offset).to eq('8121')
    end

    it 'generates offset with current date' do
      offset = Offset.new
      expect(offset.offset_gen).to be_a(String)
      expect(offset.offset_gen.length).to eq(4)
    end

    xit 'uses key to create A-D shift' do
      offset = Offset.new
      allow(offset).to receive(:key_gen).and_return('12345')
      offset

    end
  end
end
