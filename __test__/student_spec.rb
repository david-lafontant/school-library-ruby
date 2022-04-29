require_relative 'helper'

describe Student do
  context 'when create a new student' do
    it 'return an object who is an instance of Student class' do
      student = Student.new({ 'classroom' => 'Jedi 101', 'age' => 20, 'id' => 50, 'name' => 'Luke Skywalker',
                              'parent_permission' => true })
      expect(student).to be_an_instance_of(Student)
    end

    it 'return the correct name and age' do
      student = Student.new({ 'classroom' => 'Jedi 101', 'age' => 20, 'id' => 50, 'name' => 'Luke Skywalker',
                              'parent_permission' => true })
      expect(student.age).to eql(20)
      expect(student.name).to eql('Luke Skywalker')
    end

    it 'return number of students in the classroom' do
      student = Student.new({ 'classroom' => 'Jedi 101', 'age' => 20, 'id' => 50, 'name' => 'Luke Skywalker',
                              'parent_permission' => true })
      expect(student.classroom).to eql('Jedi 101')
    end
  end
end
