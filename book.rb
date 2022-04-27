class Book
  attr_accessor :title, :author
  attr_reader :rentals, :id

  def initialize(title, author, id=nil)
    @id = id || Random.rand(1..1000)
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
