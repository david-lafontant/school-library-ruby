require 'json'

def save_books_data(books)
    data = []
    books.each do |book|
        data.push({ id:book.id , title: book.title, author: book.author })
    end
    File.write('books.json', JSON.generate(data))
  end


  def save_people_data(people)
    data = []
    people.each do |person|
      if person.instance_of?(Teacher)
        data.push({ id: person.id, age: person.age, name: person.name, specialization: person.specialization })
      elsif person.instance_of?(Student)
        data.push({ id: person.id, age: person.age, name: person.name,
                           parent_permission: person.parent_permission })
      end
    end
    File.write('person.json', JSON.generate(data))
  end




  def save_rentals_data(rentals)
    data = []
    rentals.each do |rental|
      rental_id ="#{Random.rand(1..1000)}"
      data.push({ id:rental_id, date: rental.date, person_id: rental.person.id, book_id: rental.book })
    end
    File.write('rentals.json', JSON.generate(data))
  end


