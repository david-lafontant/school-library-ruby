def read_books_data
    data = []
    if File.exist?('books.json')
      books_data = JSON.parse(File.read('books.json'))
      books_data.each do |book|
        data.push(Book.new(book['title'], book['author'], id: book['id']))
      end
    end
    data
  end

