class Library
  def initialize(books)
    @books = books
  end

  def full_book_details()
    full_list = []
    for book in @books
    full_book = "#{book[:title]} was rented by #{book[:rental_details][:student_name]} and is due back on #{book[:rental_details][:date]}."
      full_list.push(full_book)
    end
    return full_list
  end

end