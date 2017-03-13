class Student


  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
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


end