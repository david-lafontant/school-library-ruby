require_relative 'nameable'

# Parent class
class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # Getter methods

  attr_accessor :name, :age

  attr_reader :id

  def correct_name
    @name
  end

  # setter methods

  def edit_name(_name)
    @name
  end

  def edit_age(_age)
    @age
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    if is_of_age? && @parent_permission
      true
    else
      false
    end
  end
end

class Decorator < Nameable
  attr_accessor :nameable

  # @param [Component] component
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  # The Decorator delegates all work to the wrapped component.
  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    if @nameable.correct_name.length > 10
      str = []
      10.times do |i|
        str.push(@nameable.correct_name.chars[i])
      end
      str.join
    else
      @nameable.correct_name
    end
  end
end

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
capitalized_trimmed_person.correct_name
