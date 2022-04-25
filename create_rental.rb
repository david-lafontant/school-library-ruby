
class Create_Rental
    def create_rental
        book_index = -1
        person_index = -1
        puts 'select a book from the following list by number'
        list_books
        until book_index > -1 && book_index < @books.length
          puts 'book index:'
          book_index = gets.chomp.to_i
        end
        puts 'select a person from the following list by number'
        list_people
        until person_index > -1 && person_index < @people.length
          puts 'person index:'
          person_index = gets.chomp.to_i
        end
        puts 'date: (YYYY/MM/DD): '
        date = gets.chomp
        rental = Rental.new(date, @people[person_index], @books[book_index])
        @rentals.push(rental)
        puts 'Rental created succesfully'
        reset
      end
end