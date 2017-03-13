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

  def initialize(team_name, players_array, coach)
    @team_name = team_name
    @players_array = players_array
    @coach = coach
  end

  def add_to_players(player)
    @players_array.push(player)
  end

end