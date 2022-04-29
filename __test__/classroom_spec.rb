require_relative 'helper'

describe Classroom do
  context 'when create classroom' do
    it 'return an object who is an instance of Classroom class' do
      classroom1 = Classroom.new(1)
      expect(classroom1).to be_an_instance_of(Classroom)
    end

    it 'return the label' do
      classroom1 = Classroom.new(1)
      expect(classroom1.label).to eql(1)
      expect(classroom1.students.length).to eql(0)
    end
  end
end
