def save_books_data(books)
    data = []
    books.each do |book|
     book_id ="#{Random.rand(1..1000)}"
        data.push({ id:book_id , title: book.title, author: book.author })
    end
    File.write('books.json', JSON.generate(data))
  end