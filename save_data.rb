require 'json'

def save_books_data(books)
    data = []
    books.each do |book|
     book_id ="#{Random.rand(1..1000)}"
        data.push({ id:book_id , title: book.title, author: book.author })
    end
    File.write('books.json', JSON.generate(data))
  end

  def save_rentals_data(rentals)
    data = []
    rentals.each do |rental|
      rental_id ="#{Random.rand(1..1000)}"
      data.push({ id:rental_id, date: rental.date, person_id: rental.person, book_id: rental.book })
    end
    File.write('rentals.json', JSON.generate(data))
  end

