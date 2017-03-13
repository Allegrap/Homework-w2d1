require('minitest/autorun')
require_relative('./homework')

class TestStudent< MiniTest::Test

  def setup
    @student = Student.new("Allegra", 11, "Ruby") 
  end

  def test_student_name
    assert_equal("Allegra", @student.student_name)
  end

  def test_cohort
    assert_equal(11, @student.cohort)
  end

  def test_change_student_name
    @student.change_student_name("Joo")
    assert_equal("Joo", @student.student_name)
  end

  def test_student_can_talk
    assert_equal("I can talk!", @student.talk)
  end

  def test_input_favourite_language
    assert_equal("I love Ruby!", @student.favourite_language)
  end

end