#Part A

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



#Part B

class Team

  attr_accessor :team_name, :players_array, :coach

  def initialize(team_name, players_array, coach, points)
    @team_name = team_name
    @players_array = players_array
    @coach = coach
    @points = points
  end

  def add_to_players(player)
    @players_array.push(player)
  end

  def player_in_array?(player)
    for person in @players_array
      if player == person
        return true
      end
    end
    return false
  end

  def win_result(result)
    if result == "Win!"
      @points += 10
    end
  end

end

#Extension


class Library

  def initialize(books)
    @books = books
  end


def list_books
  return @books
end

def book_information(title)
  for book in @books
    if title == book[:title]
      return book
    end
  end
end


end