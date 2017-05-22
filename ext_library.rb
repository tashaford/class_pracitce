class Library
  def initialize(books)
    @books = books
  end

  def full_book_details()
    for book in @books
      return "#{book[:title]} was rented by #{book[:rentail_detials][:student_name]} and is due back on #{book[:rentail_detials][:date]}."
    end
  end

end