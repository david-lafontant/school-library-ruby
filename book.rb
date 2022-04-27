class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(id, title, author)
    @id = id
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental)
  end

  def to_s
    "Title: #{@title} Author: #{@author}"
  end
end
