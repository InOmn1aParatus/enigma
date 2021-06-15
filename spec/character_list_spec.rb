require_relative './spec_helper'

RSpec.describe CharacterList do
  context 'instantiation' do
    it 'exists' do
      char_list = CharacterList.new
      expect(char_list).to be_a(CharacterList)
    end

    it 'contains a list of characters' do
      char_list = CharacterList.new
      expect(char_list.list[0]).to eq('a')
      expect(char_list.list[26]).to eq(' ')
    end
  end
end