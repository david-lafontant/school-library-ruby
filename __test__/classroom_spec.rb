require_relative 'helper'

describe Classroom do
  context 'when create classroom' do
    it 'return an object who is an instance of Classroom class' do
      classroom_01 = Classroom.new(1)
      expect(classroom_01).to be_an_instance_of(Classroom)
    end

    it 'return the label' do
      classroom_01 = Classroom.new(1)
      expect(classroom_01.label).to eql(1)
      expect(classroom_01.students.length).to eql(0)
    end
  end
end
