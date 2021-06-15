require_relative './spec_helper'

RSpec.describe Offset do
  context 'instantiation' do
    it 'exists' do
      offset = Offset.new
      expect(offset).to be_a(Offset)
    end

    it 'generates key and date attributes when none are given' do
      allow_any_instance_of(Offset).to receive(:key_gen).and_return('12345')
      allow(Date).to receive(:today).and_return(Date.new(2021, 6, 14))
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
      offset = Offset.new('12345', '200989')
      expect(offset.offset).to eq('8121')
    end

    it 'generates offset with current date' do
      offset = Offset.new
      expect(offset.offset_gen).to be_a(String)
      expect(offset.offset_gen.length).to eq(4)
    end

    it 'determines rotations from key' do
      offset = Offset.new('12345', '200989')
      expect(offset.a_key).to eq(12)
      expect(offset.b_key).to eq(23)
      expect(offset.c_key).to eq(34)
      expect(offset.d_key).to eq(45)
    end

    it 'determines offset from date' do
      offset = Offset.new('12345', '200989')
      expect(offset.a_offset).to eq(8)
      expect(offset.b_offset).to eq(1)
      expect(offset.c_offset).to eq(2)
      expect(offset.d_offset).to eq(1)
    end

    it 'calculates shift based on key and date' do
      offset = Offset.new('12345', '200989')
      expect(offset.a_shift).to eq(20)
      expect(offset.b_shift).to eq(24)
      expect(offset.c_shift).to eq(36)
      expect(offset.d_shift).to eq(46)
    end

    it 'collects shifts into array' do
      offset = Offset.new('12345', '200989')
      expect(offset.shifts).to eq([20, 24, 36, 46])
    end
  end
end
