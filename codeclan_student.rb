class Student

  def initialize (student_name, cohort_number)

    @student_name = student_name
    @cohort_number = cohort_number
  end

  def get_student_name()
    return @student_name
  end

  def get_cohort_number()
    return @cohort_number
  end

  def set_student_name(name)
    @student_name = name
  end

  def set_cohort_number(cohort)
    @cohort_number = cohort
  end

  def make_student_talk(student)
    if student = "talk"
      return "I can talk!"
    end
  end
  # def make_student_talk()
  #     return "I can talk!"
  # end


  def favourite_language(lang)
    return "My favourite language is #{lang}."
  end

end
