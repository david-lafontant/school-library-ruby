require_relative 'helper'

describe Rental do
  context 'when create a rental' do
    it 'return an object who is an instance of Rental class' do
        patron = Person.new(30, 17, name= 'Sam')
        book = Book.new({ 'title' => 'Ruby in Ruby', 'author' => 'Dr David' })
      date = '01/10/1901'
      rental = Rental.new({ 'date' => date, 'person' => patron, 'book' => book })
      expect(rental).to be_an_instance_of(Rental)
    end

    it 'return the correct date' do
        patron = Person.new(30, 17, name= 'Sam')
          book = Book.new({ 'title' => 'Ruby in Ruby', 'author' => 'Dr David' })
          date = '01/10/1901'
          rental = Rental.new({ 'date' => date, 'person' => patron, 'book' => book })
          expect(rental.date).to eql('01/10/1901')
          expect(rental.date).to be(date)
        end

  end
end




