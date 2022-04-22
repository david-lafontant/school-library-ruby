require_relative 'person'
# Student class inherits from Person
class Student < Person
  attr_reader :classroom, :id, :parent_permission

  def initialize(*args, classroom)
    super
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hookey
    p '¯\\(ツ)/¯', @classroom, @id
  end
end
