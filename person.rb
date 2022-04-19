# Parent class
class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # Getter methods

  attr_reader :id, :name, :age

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
