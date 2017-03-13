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

  def initialize(team_name, players_array, coach)
    @team_name = team_name
    @players_array = players_array
    @coach = coach
  end

  def team_name
    return @team_name
  end

  def players_array
    return @players_array
  end

  def coach
    return @coach
  end


  def change_coach_name(new_coach)
    @coach = new_coach
  end


end