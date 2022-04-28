require_relative 'helper'

describe Book do
  context 'when create a new book' do
    it 'return a new object who is an instance of Book class' do
      book = Book.new({ 'title' => 'Ruby in Ruby', 'author' => 'Dr David' })
      expect(book).to be_an_instance_of(Book)
    end
    it 'return the correct title and author' do
      book = Book.new({ 'title' => 'Learn Ruby', 'author' => 'Dr Sam' })
      expect(book.title).to eql('Learn Ruby')
      expect(book.author).to eql('Dr Sam')
    end

    it 'return an object who is an instance of Rental class' do
      person = Person.new(30, 17, 'Sam')
      book = Book.new({ 'title' => 'Ruby in Ruby', 'author' => 'Dr David' })
      date = '01/10/1901'
      rental = book.add_rental(date, person)
      expect(rental).to be_an_instance_of(Rental)
    end


  end
end
