require ('minitest/autorun')
require ('minitest/rg')
require_relative ('ext_library.rb')

class TestLibrary < Minitest::Test
  def setup()
    @book_one = {title: "lord_of_the_rings",rental_details: {student_name: "Jeff", date: "01/12/16"}}
    @book_two ={title: "the_green_mile", rental_details: {student_name: "Mary", date: "04/03/2017"}}
    @book_three ={title: "the_name_of_the_wind", rental_details: {student_name: "Max", date: " 22/05/2017"}}

    books = [@book_one, @book_two, @book_three]

    @library = Library.new(books)
  end

def test_all_books_details()
  expected = ["lord_of_the_rings was rented by Jeff and is due back on 01/12/2016.",
    "the_green_mile was rented by Mary and is due back on 04/03/2017.",
    "the_name_of_the_wind was rented by Max and is due back on 22/05/2017"]
  assert_equal(expected,@library.full_book_details())
end

end
