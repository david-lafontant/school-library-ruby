require_relative 'person'

class Student < Person
  attr_reader :id, :parent_permission, :classroom

  def initialize(args)
    super(args['age'], args['id'], args['name'], parent_permission: args['parent_permission'])
    @classroom = args['classroom'] || nil
  end

  def to_s
    "[Student] #{super} parent permission: #{@parent_permission}"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def to_object
    { class_name: 'Student', opt: { classroom: @classroom, id: @id, name: @name, age: @age,
                                    parent_permission: @parent_permission } }
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
