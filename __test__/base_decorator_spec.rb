require_relative 'helper'

describe BaseDecorator do
  context 'when create corrector object' do
    it 'return a new object' do
      item = BaseDecorator.new('name')
      expect(item).to be_an_instance_of(BaseDecorator)
    end
  end
end

describe CapitalizeDecorator do
  context 'when passing a name to correct_name method' do
    it 'return a capitalized name' do
      item = CapitalizeDecorator.new('name')
      expect(item).to be_an_instance_of(CapitalizeDecorator)
    end
  end
end

describe TrimmerDecorator do
  context 'when passing a name to correct_name method' do
    it 'return a trimmed name' do
      item = TrimmerDecorator.new('name')
      expect(item).to be_an_instance_of(TrimmerDecorator)
    end
  end
end
