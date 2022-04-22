require_relative 'nameable'
require_relative 'base_decorator'
require_relative 'rental'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
	@@ -26,4 +28,8 @@ def can_use_services?
  def of_age?
    @age >= 18
  end

  def add_rentals(date, book)
    Rental.new(date, self, book)
  end
end
