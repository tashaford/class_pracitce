class Team

  def initialize(team_name, players, coach_name)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
    @points = 0
  end

  def get_team_name()
    return @team_name
  end

  def get_players()
    return @players
  end

  def get_coach_name()
    return @coach_name
  end

  def get_points()
    return @points
  end

  # def set_team_name(new_name)
  #   @team_name = new_name
  # end

  def set_coach_name(new_name)
    @coach_name = new_name
  end

  def add_new_player(name)
    @players << name
  end

  def check_player_in_array(name)
    for player in @players
      if player == name
        return true
      else
        return false
      end
    end
  end

  def points_win_or_lose(result)
    if result == "win"
      @points +=1
    end
  end


end