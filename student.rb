require_relative 'person'
# Student class inherits from Person
class Student < Person
  def initialize(*args, classroom)
    super
    @classroom = classroom
  end

  attr_accessor :classroom

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
  end
  def play_hookey
    p '¯\\(ツ)/¯', @classroom, @id
  end
end
