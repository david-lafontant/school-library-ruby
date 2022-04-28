require_relative 'helper'

describe Person do
  context 'when create a new person' do
    it 'return an object who is an instance of Person class' do
      person = Person.new(30, 17, 'Sam')
      expect(person).to be_an_instance_of(Person)
    end

    it 'return the correct name' do
      person = Person.new(30, 17, 'Sam')
      expect(person.correct_name).to eql('Sam')
    end

    it 'return the correct name and age' do
      person = Person.new(30, 17, 'Sam')
      expect(person.age).to eql(30)
      expect(person.name).to eql('Sam')
    end

    it 'return true if the person can use services' do
      person = Person.new(30, 17, 'Sam')
      expect(person.can_use_services?).to be(true)
    end



    it 'return an object who is an instance of Rental class' do
      person = Person.new(30, 17, 'Sam')
      book = Book.new({ 'title' => 'Ruby in Ruby', 'author' => 'Dr David' })
      date = '01/10/1901'
      rental = person.add_rentals(date, book)
      expect(rental).to be_an_instance_of(Rental)
    end
  end
end
