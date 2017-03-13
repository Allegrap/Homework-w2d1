class Student


  def initialize(student_name, cohort, language)
    @student_name = student_name
    @cohort = cohort
    @language = language
  end

  def student_name
    return @student_name
  end

  def cohort
    return @cohort
  end


  def change_student_name(new_name)
    @student_name = new_name
  end

  def talk
    return "I can talk!"
  end

  def favourite_language
    return "I love #{@language}!"
  end

end