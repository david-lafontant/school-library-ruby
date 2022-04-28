require_relative 'helper'


obj = 

describe Teacher do
  context 'when create a new teacher' do
    it 'return an object who is an instance of Teacher class' do
        teacher = Teacher.new({ 'specialization' => 'Dark Side', 'age' => 100, 'id' => 17, 'name' => 'Darth Vader' })
      expect(teacher).to be_an_instance_of(Teacher)
    end
    it 'return the correct specialization, name and age' do
        teacher = Teacher.new({ 'specialization' => 'Dark Side', 'age' => 100, 'id' => 17, 'name' => 'Darth Vader' })
        expect(teacher.specialization).to eql('Dark Side')
        expect(teacher.age).to eql(100)
        expect(teacher.name).to eql('Darth Vader')
      end
    
      it 'return true if age is greater than 18 is true' do
        teacher = Teacher.new({ 'specialization' => 'Dark Side', 'age' => 100, 'id' => 17, 'name' => 'Darth Vader' })
        expect(teacher.can_use_services?).to be(true)
      end

  end
end