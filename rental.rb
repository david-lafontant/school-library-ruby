class Rental
  attr_reader :book
  attr_accessor :date, :person

  def initialize(date, book, person)
    @date = date

    @book = book
    book.rentats << self

    @person = person
    person.rentals << self
  end
end
