require ('minitest/autorun')
require ('minitest/rg')
require_relative ('codeclan_student.rb')

class TestStudent < Minitest::Test

  def setup()
    @student_one = Student.new("Natasha", 2)
  end

  def test_get_student_name()
    assert_equal("Natasha", @student_one.get_student_name())
  end

  def test_change_student_name()
    @student_one.set_student_name("Graham")
    assert_equal("Graham", @student_one.get_student_name())
  end

  def test_get_cohort_number()
    assert_equal(2, @student_one.get_cohort_number())
  end

  def test_change_of_cohort()
    @student_one.set_cohort_number(3)
    assert_equal(3, @student_one.get_cohort_number())
  end

  def test_can_student_talk_or_not()
    assert_equal("I can talk!", @student_one.make_student_talk("talk"))
  end
  # def test_can_student_talk_or_not()
  #   assert_equal("I can talk!", @student_one.make_student_talk())
  # end


  def test_student_favourite_language()
    favourite = "Ruby"
    assert_equal("My favourite language is Ruby.", @student_one.favourite_language(favourite))
  end

end