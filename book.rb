require_relative 'rental'

class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(args)
    # @id = id || Random.rand(1..1000)
    @title = args['title']
    @author = args['author']
    @rentals = []
  end

  def add_rental(date, person)
    Rental.new({ 'date' => date, 'person' => person, 'book' => self })
  end

  def to_object
    { class_name: 'Book', opt: { title: @title, author: @author } }
  end

  def to_s
    "Title: #{@title} Author: #{@author}"
  end
end
