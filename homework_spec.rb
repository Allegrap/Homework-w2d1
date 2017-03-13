require('minitest/autorun')
require_relative('./homework')


#Part A
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


#Part B

class TestTeam<MiniTest::Test

  def setup
    @team = Team.new("Codeclan", ["Chris", "Chiara", "Talitha", "Allegra", "Kashka"], "Joo", 0)
  end

  def test_team_name
    assert_equal("Codeclan", @team.team_name)
  end

  def test_players_array
    assert_equal(["Chris", "Chiara", "Talitha", "Allegra", "Kashka"], @team.players_array)
  end

  def test_coach
    assert_equal("Joo", @team.coach)
  end

  def test_change_coach_name
    @team.coach = ("Wine")
    assert_equal("Wine", @team.coach)
  end

  def test_add_new_player
    @team.add_to_players("Shakira")
    assert_equal(["Chris", "Chiara", "Talitha", "Allegra", "Kashka", "Shakira"], @team.players_array)
  end

  def test_player_in_array?
   result = @team.player_in_array?("Chris")
   assert_equal(true, result)
  end

  def test_add_points_for_win_result
    result = @team.win_result("Win!")
    assert_equal(10, result)
  end
end


#Extension

class TestLibrary<Minitest::Test

def setup

  @books = [

    {
      title: "the_night_manager",
      rental_details: {
        student_name: "Allegra",
        date: "3.7.1994"
      }
    },

    {
      title: "silmarillion",
      rental_details: {
        student_name: "Chiara",
        date: "24.2.1996"
      }
    },

    {
      title: "game_of_thrones",
      rental_details: {
        student_name: "Talitha",
        date: "22.6.2006"
      }
    }
  ]
  @library = Library.new(@books)

end


def test_list_books
  assert_equal(@books, @library.list_books)
end

def test_list_book_information
  assert_equal({
      title: "game_of_thrones",
      rental_details: {
        student_name: "Talitha",
        date: "22.6.2006"
      }}, @library.book_information("game_of_thrones"))
end




end

