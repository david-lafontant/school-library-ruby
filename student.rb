require_relative 'person'
# Student class inherits from Person
class Student < Person
  def initialize(*args, classroom)
    super
    @classroom = classroom
  end

  def play_hookey
    p '¯\\(ツ)/¯', @classroom, @id
  end
end
