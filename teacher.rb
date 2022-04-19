# frozen_string_literal: true

require_relative 'person'
# Teacher class inherits from Person
class Teacher < Person
  def initialize(*_args, specialization)
    super
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
